# Контракты 
1. В `build.gradle.kts` указываем нужную версию, которая должна быть идентична тегу
2. Ждем публикацию в https://jitpack.io , можно отслеживать здесь: https://jitpack.io/#zveronHSe/contract
3. Подключаем зависимость того контракта, которая нужна: 
```kotlin
    implementation("com.github.ZveronHse:contract:NAME_MODULE:TAG")
```

# ios-контракты
# :warning: Не генерируем internal контракты! 
## Простой способ
### генерация контрактов + добавление в ios-библиотеку
1. запустить скрипт "iOSBuildLibrary.sh" находящийся в корневом каталоге проекта. 
Запуск производить через открытие файла и нажатия на зеленную стрелочку в верху файла

## Сложный способ(если первый не срабтал)
### генерация контрактов
1. Выполнить перечень команд по установке необходимых библиотек для генерации
```
brew install swift-protobuf
brew install grpc-swift
brew install coreutils
```
2. Сгенерировать файл формата .pb.swift
```
protoc --swift_opt=Visibility=Public --swift_out={path_to_destination_directory} {path_to_proto_file}
```
3. Сгенерировать файл формата .grpc.swift
```
protoc {path_to_proto_file} --grpc-swift_opt=Visibility=Public,Client=true,Server=false --grpc-swift_out={path_to_destination_directory}  
```
4. Разместить файлы в соответствующих дерикториях дериктории Sources

### Добавление новых контрактов в ios-библиотеку
1. В файле Package.swift добавить переменную, обозначающую новый таргет (название новой очередной папки в папке Sources)
2. Добавить в массив "product.targets:" библиотеки новую переменную
3. Добавить в массив "targets:" строку вида: 
```
.target(name: {переменная_нового_таргета}, dependencies: [.product(name:"GRPC", package: "grpc-swift")])
```
4. Тыкнуть Александра, чтобы он проверил библиотеку на работоспособность