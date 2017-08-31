#!/usr/bin/env bats
# Script uses Bats: Bash Automated Testing System to ensure,
# that all examples are working as documented.

@test "basic" {
    cd basic
    run ./loom -c -n build
    [ "$status" -eq 0 ]
    java -cp build/compilation/main/unnamed builders.loom.example.basic.Main | grep 'Hello world'
    java -cp build/unnamed/jar/unnamed.jar builders.loom.example.basic.Main | grep 'Hello world'
}

