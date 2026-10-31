import std/assertions
import main

block greeting_basic:
  doAssert greeting("x") == "hello x"
