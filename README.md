# Контракты 
1. В `build.gradle.kts` указываем нужную версию, которая должна быть идентична тегу
2. Ждем публикацию в https://jitpack.io , можно отслеживать здесь: https://jitpack.io/#zveronHSe/contract
3. Подключаем зависимость того контракта, которая нужна: 
```kotlin
    implementation("com.github.ZveronHse:contract:NAME_MODULE:TAG")
```