when defined(windows):
  switch("cc", "vcc")
  let root = getEnv("VCPKG_ROOT")
  switch("passC", "-I" & root & "/include")
  switch("passL", root & "/lib/zlib.lib")
elif defined(macosx):
  let prefix = staticExec("brew --prefix zlib")
  switch("passC", "-I" & prefix & "/include")
  switch("passL", "-L" & prefix & "/lib -lz")
else:
  switch("passL", "-lz")
