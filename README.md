# voipcontest
[![Build status](https://ci.appveyor.com/api/projects/status/aomwyo0hpgw53s4i?svg=true)](https://ci.appveyor.com/project/SlavikMIPT/voipcontest)
## static lib + headers
https://ci.appveyor.com/project/SlavikMIPT/voipcontest/build/artifacts
## compile app example
`g++ -ldl -pthread -lopus -lcrypto main.cpp libs/libtgvoip.a -o main`
