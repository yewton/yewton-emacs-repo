# -*- mode: sh; -*-

@test "emacs binary is found in PATH" {
    run which emacs
    [ "$status" -eq 0 ]
}
