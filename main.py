# modular_nids/main.py
from sniffers.packet_sniffer import start_sniffing

if __name__ == "__main__":
    print("[*] Starting packet sniffing...")
    start_sniffing()
