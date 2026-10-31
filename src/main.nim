import std/strutils

proc greeting*(name: string): string =
  "hello " & name

when isMainModule:
  echo greeting("ci").toUpperAscii
