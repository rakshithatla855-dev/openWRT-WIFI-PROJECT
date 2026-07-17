# 05 — IPv4 and IPv6 on OpenWrt

## OpenWrt IP support

- OpenWrt supports both IPv4 and IPv6.
- OpenWrt has full dual-stack support, so it can run both IPv4 and IPv6 together on the same router.

## IPv4

- Uses **DHCP** or a **static IP**.
- A static IP is manually assigned and does not change.
- Uses **NAT** by default.
- Works exactly like normal router firmware.

### DHCP (Dynamic Host Configuration Protocol)

- DHCP automatically assigns IP addresses to devices when they connect to the network.
- The **DHCP server** (usually the router) assigns:
  - IP address
  - Subnet mask
  - Gateway
  - DNS server

**Advantages:**

- No manual configuration.
- Easy to manage.
- Prevents IP conflicts.

**Disadvantages:**

- IP address can change.
- Not suitable for servers or printers that need a fixed IP.

**Common usage:**

- Homes and offices.
- Mobile phones and laptops.

### Static IP

- A static IP is manually assigned and does not change.
- You manually assign an IP address to the device or router.
- The IP remains the same unless you change it.

**Advantages:**

- IP remains the same.
- Useful for printers and servers.
- Easier access in remote setups.

**Disadvantages:**

- Manual setup required.
- Risk of IP conflicts.

**Common uses:**

- Web servers.
- File servers.
- Printers and servers.

## NAT (Network Address Translation)

- **NAT** allows multiple devices in your local network (LAN) to access the internet using **one public IP address** provided by your ISP.
- Your ISP gives **one public IP**, but inside your home you may have many devices:
  - Mobile
  - Laptop
  - ESP32
  - PC
- These devices use **private IPs** like:
  - `192.168.x.x`
  - `10.x.x.x`
- Private IPs **cannot directly access the internet**, so NAT translates them to the public IP.

## IPv6

- OpenWrt supports multiple IPv6 methods depending on your ISP:
  - **DHCPv6**
  - **SLAAC** — allows IPv6 devices to automatically generate their own IPv6 address using information advertised by the OpenWrt router, without a DHCPv6 server assigning the address.
  - **DHCPv6-PD (Prefix Delegation)** ← most common.
  - **Static IPv6**.
  - **6in4 / 6rd tunnels** (if the ISP doesn't provide native IPv6).

### Dual Stack (IPv4 + IPv6) — most common setup

- IPv4 → NAT + DHCP
- IPv6 → Public addresses + Prefix Delegation
- Devices get **both** IPv4 and IPv6 addresses.
- The internet connection prefers IPv6 first, falling back to IPv4.
