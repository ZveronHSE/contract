#!/bin/bash

function getFiles() {
find . -name "*.proto" -not -path "./.build/*" -print0 >tmpfile
while IFS=  read -r -d $'\0'; do
    protoFiles+=("$REPLY")
done <tmpfile
rm -f tmpfile
}

function findDirectory() {
temp=$(realpath $1)

 while [ "$(basename $(dirname $temp))" != "contract" ]; do
      temp=$(dirname $temp)
 done

  ll=$(dirname $temp)
  temp="$(basename $temp)GRPC"
  temp=$(echo ${temp:0:1} | tr  '[a-z]' '[A-Z]')${temp:1}
  echo "$ll/Sources/$temp"
}

function findSubDirectories() {
    temp=$1
    result=""

     while [ "$(basename $(dirname $temp))" != "proto" ]; do
          result="$(basename $(dirname $temp))/$result"
          temp=$(dirname $temp)
     done

      echo $result
}

function createDirectoryAndFile() {
  proto=$(realpath $1)
  mainDirectoryToCreate=$(findDirectory $proto)
  subDirectories=$(findSubDirectories $proto)
  logicPathToNewProto=""
  if [ -z "${subDirectories}" ];
  then
    logicPathToNewProto="$mainDirectoryToCreate/"
    else
          logicPathToNewProto="$mainDirectoryToCreate/$subDirectories"

  fi
  mkdir -p "$logicPathToNewProto"
  currentDir="$PWD"
  cd "$(dirname $proto)"
  command1="protoc --swift_opt=Visibility=Public --swift_out=$logicPathToNewProto $(basename $proto)"
  command2="protoc $(basename $proto) --grpc-swift_opt=Visibility=Public,Client=true,Server=false --grpc-swift_out=$logicPathToNewProto"
  $command1
  $command2
  cd "$currentDir"
}

function generateSwiftFiles() {
  protoFiles=()
  getFiles protoFiles

  for i in "${protoFiles[@]}"; do
    createDirectoryAndFile $i
  done
}

function generateTargetNameAndValue() {
    temp=$(realpath $1)

     while [ "$(basename $(dirname $temp))" != "contract" ]; do
          temp=$(dirname $temp)
     done

      ll=$(dirname $temp)
      echo "$(basename $temp)"
      temp="$(basename $temp)GRPC"
      temp=$(echo ${temp:0:1} | tr  '[a-z]' '[A-Z]')${temp:1}
      echo "$temp"
}

function generatePackageSwift() {
  targetNames=()
  targetValues=()
  for i in "${protoFiles[@]}"
      do
        pair=$(generateTargetNameAndValue $i)
        read -a pair <<< $pair
        targetNames+=("${pair[0]}TargetName")
        targetValues+=("${pair[1]}")
      done
  targetNames=($(echo "${targetNames[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
  targetValues=($(echo "${targetValues[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))



  filename="Package.swift"
  if [ -f "$filename" ]; then
  rm -rf "$filename"
  fi
  touch $filename

  echo "// swift-tools-version:5.6" >> $filename
  echo "import PackageDescription" >> $filename
  echo "" >> $filename
  echo "let packageName = \"zveron-grpc-swift\"" >> $filename
  echo "let productName = \"ZveronGRPC\"" >> $filename
  echo "" >> $filename

  for i in ${!targetNames[@]}; do
     name=${targetNames[$i]}
     value=${targetValues[$i]}
     echo "let ${name} = \"$value\"" >> $filename
  done

  echo "" >> $filename
  echo "import PackageDescription" >> $filename
  echo "" >> $filename
  echo "let packageDependencies: [Package.Dependency] = [" >> $filename
  echo "    .package(url: \"https://github.com/grpc/grpc-swift.git\", from: \"1.13.2\")" >> $filename
  echo "]" >> $filename
  echo "" >> $filename
  echo "let package = Package(" >> $filename
  echo "    name: packageName," >> $filename
  echo "    products: [" >> $filename
  echo "        .library(" >> $filename
  echo "            name: productName," >> $filename
  echo "            targets: [" >> $filename
  for i in "${targetNames[@]}"; do
      echo "                $i," >> $filename
  done

  echo "            ]" >> $filename
  echo "        )" >> $filename
  echo "    ]," >> $filename
  echo "    dependencies: packageDependencies," >> $filename
  echo "    targets: [" >> $filename
  for i in "${targetNames[@]}"; do
        echo "        .target(name: $i, dependencies: [.product(name:\"GRPC\", package: \"grpc-swift\")])," >> $filename
    done
  echo "    ]" >> $filename
  echo ")" >> $filename
}

#1. update necessary libraries
loadSwiftProtobuf="brew install swift-protobuf"
loadGRPCSwift="brew install grpc-swift"
loadCoreUtils="brew install coreutils"
$loadSwiftProtobuf;$loadGRPCSwift;$loadCoreUtils

#2. delete all previous files
rm -R "Sources"

#3. generate unnecessary swift-files
generateSwiftFiles

#4. generate swift package manifest
generatePackageSwift protoFiles






