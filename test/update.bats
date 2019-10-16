#!/usr/bin/env bats

load libs/bats-support/load
load libs/bats-assert/load
load test_helper

@test "jlenv-update fails and shows usage" {
  run jlenv-each
  assert_failure
  assert_line "Usage: jlenv each [-v] <command> [arg1 arg2...]"
}

# This will not actually run the given command against the Julia version...
# Simply because we don't have jlenv installed, shims etup etc.
# However, if the JLENV is set correctly then the correct Julia should be 
# invoked when the `julia` command is used.  
# That is `julia` will call the shim and so set the correct version. 
@test "jlenv-update loops over installed plugins" {
  create_plugins abc jkl xyz
  
  run jlenv-update --verbose echo true
  assert_success
  assert_output --partial "v1.0.5"
  assert_output --partial "v1.0.5-rc99"
  assert_output --partial "v1.0.5-rc100"
  assert_output --partial "v1.0.5-rc371"
}
