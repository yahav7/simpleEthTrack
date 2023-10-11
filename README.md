# simple network traffic recorder 
This bat script performs the following actions:

Creates a new directory called "temp" in the C:\ drive using the mkdir command.
Changes the current directory to C:\temp using the cd command.
Downloads the etl2pcapng.exe file from the Microsoft GitHub URL using the certutil.exe command and saves it to the C:\temp directory.
Starts a persistent network trace using the netsh trace start command, which captures network traffic and saves it to the c:\temp\BpcEth.etl file.
Waits for 15 minutes using the timeout command.
Stops the network trace using the netsh trace stop command.
Waits for another 900 seconds using the timeout command.
Converts the BpcEth.etl file to the pcEth.pcapng file using the etl2pcapng.exe command.
Exits the batch script.
Overall, this batch script is used to capture network traffic for a period of 15 minutes and save it to a PCAP file format for further analysis.
