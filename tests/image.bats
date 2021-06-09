#!/usr/bin/env bats

@test 'Verify Workdir is /root' {
    [ $PWD == "/root" ]
}
