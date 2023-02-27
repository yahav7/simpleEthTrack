mkdir C:\temp
cd C:\temp
certutil.exe -urlcache -split -f "https://github.com/microsoft/etl2pcapng/releases/download/v1.10.0/etl2pcapng.exe" "C:\\temp\\etl2pcapng.exe"
netsh trace start persistent=yes capture=yes tracefile=c:\temp\BpcEth.etl
timeout /t 900 /nobreak
netsh trace stop
timeout /t 900 /nobreak
etl2pcapng.exe BpcEth.etl pcEth.pcapng

exit
