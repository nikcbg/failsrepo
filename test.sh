#!/usr/bin/env bash

out=$(bash ./fail.sh)

# we should check out == hello
if [ "${out}" == "exit 0" ];then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi
