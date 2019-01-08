packageName   = "bncurve"
version       = "1.0.1"
author        = "Status Research & Development GmbH"
description   = "Barreto-Naehrig pairing-friendly elliptic curve implementation"
license       = "Apache License 2.0 or MIT"
skipDirs      = @["tests", "Nim", "nim"]

### Dependencies

requires "nim > 0.18.0",
         "nimcrypto"

task test, "Run all tests":
  for tprog in @[
      "tests/tarith",
      "tests/tfields",
      "tests/tgroups",
      "tests/tpairing",
      "tests/tether",
      "tests/tvectors",
    ]:
    exec "nim c -f -r -d:release --threads:on " & tprog

