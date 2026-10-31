import std/assertions

proc compressBound(sourceLen: culong): culong {.importc, header: "zlib.h", cdecl.}
proc zlibVersion(): cstring {.importc, header: "zlib.h", cdecl.}

block links_and_runs:
  doAssert compressBound(100) > 100
  doAssert ($zlibVersion()).len > 0
  echo "zlib ", zlibVersion()
