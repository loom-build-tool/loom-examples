# Basic-Legacy Example

This projects shows a very basic example (Java 9 legacy/non-modularized) without any configuration (`module.yml`).

Build with `./loom build`.


Run class `builders.loom.example.basic.Main` using class-path `build/compilation/main/unnamed` (directory of compiled classes):

    java -cp build/compilation/main/unnamed builders.loom.example.basic.Main


Run class `builders.loom.example.basic.Main` using class-path `build/unnamed/jar/unnamed.jar` (jar file):

    java -cp build/unnamed/jar/unnamed.jar builders.loom.example.basic.Main

