#!/usr/bin/env bats

load libs/bats-support/load
load libs/bats-assert/load
load test_helper

@test 'help for update is available' {
  run jlenv-help 'update'
  assert_success
  assert_line 'Usage: jlenv update [--noop|--verbose|--quiet|--silent|--version|--help]'
  assert_line 'Executes a git pull for each plugin.'
  # etc., etc.
  assert_line 'https://github.com/jlenv/jlenv-update#readme'
}
