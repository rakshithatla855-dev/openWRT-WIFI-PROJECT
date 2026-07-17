# 06 — LAN vs WAN

## Difference between LAN and WAN

- **LAN** → local network that **connects devices**.

  ```
  Phone ─┐
  Laptop ├── LAN ── Router
  PC ────┘
  ```

- **WLAN** → wireless LAN (Wi-Fi).
- **WAN** → network that **connects networks**.

  ```
  Home LAN ── WAN ── ISP Network ── Internet
  ```

- **WWAN** → wireless network that connects to a network.
- **Important:** LAN gets its internet access from the WAN.

  ```
  Internet
     ↓
  WAN (upstream network)
     ↓
   Router
     ↓
  LAN (your devices)
  ```

- In short: the router gets internet from the WAN, and the router provides internet to the LAN.

## Upstream vs Downstream

- **Upstream** — the internet connection that comes to your router from the outside.
- **Downstream** — the internet connection that goes from your router to your devices.
- WAN faces the internet (upstream); LAN faces your devices (downstream).

## LAN vs WAN — comparison table

| | **LAN** | **WAN** |
|---|---|---|
| Full Form | Local Area Network | Wide Area Network |
| Coverage | Small area (home, office, school) | Large area (cities, countries, worldwide) |
| Ownership | Usually owned by one person or organization | Usually managed by an ISP or telecom provider |
| Speed | Faster | Generally slower than LAN because it spans longer distances |
| Communication | Ethernet, Wi-Fi | Fiber, leased lines, 4G/5G, satellite, Internet |
| Example | Home Wi-Fi network | The Internet |
