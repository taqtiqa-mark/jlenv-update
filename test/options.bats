#!/usr/bin/env bats

load test_semver
load libs/bats-support/load
load libs/bats-assert/load
load libs/bats-mock/stub
load test_helper

# Mock git to return the appropriate remote
# We do this because we are running with test jlenv and not the installed jlenv
# whcihj would have all shims etc setup.
# https://stackoverflow.com/a/52546483/152860

# Currently this test abends and loops over multiple lines.
# @test "update --noop" {
#   run jlenv-update --noop
#   assert_success
#   assert_line 'update'
# }

# @test "update --quiet" {
#   run jlenv-update --quiet
#   assert_success
#   assert_line 'update'
# }

# @test "update --quiet --noop" {
#   run jlenv-update --quiet --noop
#   assert_success
#   assert_line 'update'
# }

# @test "update --verbose" {
#   run jlenv-update --verbose
#   assert_success
#   assert_line 'update'
# }
