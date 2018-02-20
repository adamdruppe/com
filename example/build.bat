:: 32bit build
dmd -ofdserver32.dll ihello.d ../comhelpers.d chello.d dserver.def

:: set the following 2 environment variables to corresponding vc versions installed
:: only needed for 64bit build
set VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio 15.0\VC
set CRTVersion=10.0.10240.0

:: 64bit build
dmd -m64 -ofdserver64.dll ihello.d ../comhelpers.d chello.d dserver.def

:: then you can use regsvr32 to register the dll
:: note that there are 2 regsvr32, one is 32bit and the other is 64bit
:: but either one can be used to register 32bit dll or 64bit dll
:: see: http://stackoverflow.com/a/18941626
