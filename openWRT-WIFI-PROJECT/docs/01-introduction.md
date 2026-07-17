# 01 — Introduction to OpenWrt

## What is OpenWrt?

- **OpenWrt** is a **Linux-based operating system (firmware)**.
- OpenWrt is **not** a real-time operating system (RTOS).
- OpenWrt is an open-source Linux operating system for Wi-Fi routers and embedded network devices.
- OpenWrt can be installed on a PC, a VM, or network device firmware to unlock more features and capability that other (pre-installed) firmware doesn't offer.
- OpenWrt is one of the firewall-capable firmware brands and runs on the Linux kernel.
- OpenWrt is typically used in small-scale setups as a firewall, not in large-scale industrial deployments.

## Personal Computer (PC)

> **PC = Personal Computer**

- OpenWrt can run on **x86-based PCs** for testing, development, or building a software router.
- In this setup, your PC acts as the router — OpenWrt runs inside that environment.
- The main reasons we generally use a dedicated Wi-Fi router instead of a PC:

### Cost and power efficiency 💰⚡

| | Wi-Fi router | PC as router |
|---|---|---|
| Cost | Very cheap (~$20–$100) | Expensive |
| Power | Low power (5–15 W), always-on | Higher power (~50–200 W), not ideal to leave on 24/7 |

## Virtual Machine (VM)

- A **Virtual Machine (VM)** is a software-based emulation of a computer that runs on a physical computer and behaves like a real, independent computer.
- Installing OpenWrt directly on a router can be risky — a wrong setting or a bad firmware flash can **break your router**.
- On a VM, you can **experiment freely** without affecting your real network.

### Key features of a VM

- Runs on a **host (physical) machine**.
- Has **virtual hardware**:
  - CPU
  - Memory (RAM)
  - Storage (disk)
  - Network interface
- Runs its own **guest operating system**.
