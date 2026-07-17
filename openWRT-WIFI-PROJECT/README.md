# OpenWrt Wi-Fi Project

Notes, reference docs, and helper scripts for setting up and managing **OpenWrt** on Wi-Fi routers and single-board computers (Raspberry Pi 4/5, CM5).

## 📖 Docs

| File | Topic |
|---|---|
| [01-introduction.md](docs/01-introduction.md) | What OpenWrt is, running it on a PC vs a VM |
| [02-network-devices.md](docs/02-network-devices.md) | Network devices overview |
| [03-router-vs-wifi-router.md](docs/03-router-vs-wifi-router.md) | Router vs Wi-Fi router |
| [04-openwrt-firmware.md](docs/04-openwrt-firmware.md) | Firmware, stock firmware vs OpenWrt |
| [05-ipv4-ipv6.md](docs/05-ipv4-ipv6.md) | IPv4, DHCP, static IP, NAT, IPv6 |
| [06-lan-wan.md](docs/06-lan-wan.md) | LAN vs WAN, upstream/downstream |
| [07-openwrt-on-raspberry-pi.md](docs/07-openwrt-on-raspberry-pi.md) | OpenWrt One, SoC, mikroBUS, CM5 vs Pi 5 vs Pi 4 |
| [08-openwrt-commands.md](docs/08-openwrt-commands.md) | Common OpenWrt CLI commands |

## 📂 Repository structure

```
openWRT-WIFI-PROJECT/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   ├── 01-introduction.md
│   ├── 02-network-devices.md
│   ├── 03-router-vs-wifi-router.md
│   ├── 04-openwrt-firmware.md
│   ├── 05-ipv4-ipv6.md
│   ├── 06-lan-wan.md
│   ├── 07-openwrt-on-raspberry-pi.md
│   ├── 08-openwrt-commands.md
│   └── images/
│
├── configs/
│   ├── network
│   ├── wireless
│   └── firewall
│
└── scripts/
    ├── wifi_restart.sh
    ├── backup_config.sh
    └── restore_config.sh
```

## ⚙️ Configs

Sample UCI config templates for `/etc/config/` on an OpenWrt device:

- [`configs/network`](configs/network) — LAN/WAN interface setup
- [`configs/wireless`](configs/wireless) — Wi-Fi radio & AP setup
- [`configs/firewall`](configs/firewall) — basic zone/forwarding rules

These are starting templates — edit IPs, SSIDs, and passwords before applying to a real device.

## 🛠 Scripts

- [`scripts/wifi_restart.sh`](scripts/wifi_restart.sh) — restart Wi-Fi/network services
- [`scripts/backup_config.sh`](scripts/backup_config.sh) — back up the current OpenWrt config (`sysupgrade -b`)
- [`scripts/restore_config.sh`](scripts/restore_config.sh) — restore a previously saved backup

Run scripts **on the OpenWrt device itself** (over SSH), e.g.:

```sh
scp scripts/backup_config.sh root@192.168.1.1:/tmp/
ssh root@192.168.1.1 "sh /tmp/backup_config.sh"
```

## License

See [LICENSE](LICENSE).
