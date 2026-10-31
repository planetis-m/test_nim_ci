import std/strutils

when defined(windows):
  switch("cc", "vcc")
  let root = getEnv("VCPKG_ROOT")
  switch("passC", "-I" & root & "/include")
  for f in listFiles(root & "/lib"):
    if f.endsWith(".lib"):
      echo "import library: ", f
      switch("passL", f)
elif defined(macosx):
  let prefix = staticExec("brew --prefix zlib")
  switch("passC", "-I" & prefix & "/include")
  switch("passL", "-L" & prefix & "/lib -lz")
else:
  switch("passL", "-lz")
