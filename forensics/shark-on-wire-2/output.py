from scapy.all import *

# rdpcap comes from scapy and loads in our pcap file
packets = rdpcap('capture.pcap')

flag=""
dports = [22]

for packet in packets:
    # Following the filter udp.port==22
    if UDP in packet and (packet[UDP].dport in dports):
        # convert to str, remove 1st number
        tempFlag = str(packet[UDP].sport)[1:4]
        # convert to number
        tempFlag = int(tempFlag)
        # convert to ASCII
        flag += chr(tempFlag)
        
print(flag)