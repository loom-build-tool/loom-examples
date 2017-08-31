# Basic Example

This projects shows a very basic example (Java 9 module with one class) without any configuration (`module.yml`).

Build with `./loom build`.


Run class `builders.loom.example.basic.Main` of module `builders.loom.example.basic` using module-path `build/compilation/main` (directory of compiled classes):

    java -p build/compilation/main -m builders.loom.example.basic/builders.loom.example.basic.Main


Run class `builders.loom.example.basic.Main` of module `builders.loom.example.basic` using module-path `build/builders.loom.example.basic/jar` (directory of jar file):

    java -p build/builders.loom.example.basic/jar -m builders.loom.example.basic/builders.loom.example.basic.Main

