import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
import com.google.protobuf.gradle.builtins
import com.google.protobuf.gradle.generateProtoTasks
import com.google.protobuf.gradle.id
import com.google.protobuf.gradle.plugins
import com.google.protobuf.gradle.protobuf
import com.google.protobuf.gradle.protoc

plugins {
    `java-library`
    `maven-publish`

    java
    kotlin("jvm") version "1.7.20"
    id("com.google.protobuf") version "0.8.18"
}


allprojects {
    group = "ru.zveron"
    version = "1.0-SNAPSHOT"

    repositories {
        mavenCentral()
    }
}

subprojects {
    apply {
        plugin("kotlin")
        plugin("org.jetbrains.kotlin.jvm")
        plugin("com.google.protobuf")
        plugin("java-library")
        plugin("maven-publish")
    }

    java {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    tasks.withType<KotlinCompile>().all {
        kotlinOptions {
            jvmTarget = "1.8"
            freeCompilerArgs = listOf("-Xopt-in=kotlin.RequiresOptIn")
        }
    }

    val protobufVersion = "3.21.4"
    val grpcVersion = "1.48.0"
    val grpcKotlinVersion = "1.3.0"

    dependencies {
        api("io.grpc:grpc-kotlin-stub:$grpcKotlinVersion")
        api("io.grpc:grpc-stub:$grpcVersion")
        api("io.grpc:grpc-protobuf:$grpcVersion")
        api("com.google.protobuf:protobuf-kotlin:$protobufVersion")

        api(kotlin("stdlib"))
        api("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.5.2")
    }

    sourceSets {
        main {
            proto.srcDir("src/proto")
        }
    }

    protobuf {
        protoc {
            artifact = "com.google.protobuf:protoc:$protobufVersion"
        }
        plugins {
            id("grpc") {
                artifact = "io.grpc:protoc-gen-grpc-java:$grpcVersion"
            }
            id("grpckt") {
                artifact = "io.grpc:protoc-gen-grpc-kotlin:$grpcKotlinVersion:jdk8@jar"
            }
        }

        generateProtoTasks {
            all().forEach {
                it.plugins {
                    id("grpc")
                    id("grpckt")
                }
                it.builtins {
                    id("kotlin")
                }
            }
        }
    }

    publishing {
        publications {
            create<MavenPublication>("maven") {
                groupId = project.group.toString()
                version = project.version.toString()

                from(components["java"])

                afterEvaluate {
                    artifactId = tasks.jar.get().archiveBaseName.get()
                }
            }
        }
    }
}