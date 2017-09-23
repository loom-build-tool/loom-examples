#!/usr/bin/env bats
# Script uses Bats: Bash Automated Testing System to ensure,
# that all examples are working as documented.

@test "basic" {
    cd basic
    run ./loom -c -n build
    [ "$status" -eq 0 ]
    java -p build/builders.loom.example.basic/jar -m builders.loom.example.basic/builders.loom.example.basic.Main | grep 'Hello world'
    java -p build/compilation/main -m builders.loom.example.basic/builders.loom.example.basic.Main | grep 'Hello world'
}

@test "basic-legacy" {
    cd basic-legacy
    run ./loom -c -n build
    [ "$status" -eq 0 ]
    java -cp build/compilation/main/unnamed builders.loom.example.basic.Main | grep 'Hello world'
    java -cp build/unnamed/jar/unnamed.jar builders.loom.example.basic.Main | grep 'Hello world'
}

@test "junit5" {
    cd junit5
    run ./loom -c -n build
    [ "$status" -eq 0 ]
    grep 'testsuite errors="0" failures="0" name="builders.loom.example.junit5.AppTest" skipped="1" tests="3"' build/reports/builders.loom.example.junit5/test/TEST-builders.loom.example.junit5.AppTest.xml
}

