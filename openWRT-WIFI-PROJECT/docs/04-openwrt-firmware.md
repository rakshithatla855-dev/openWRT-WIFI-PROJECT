# 04 — OpenWrt Firmware

## Firmware

- Firmware is an operating system that works at a much lower level and communicates directly with hardware.
- Firmware is software, not hardware.
- **Firmware** is a **program or code** stored in a device's **non-volatile memory** (like ROM or Flash).
- It's generally better to install OpenWrt firmware for improved functionality.
- OpenWrt firmware and generic "router firmware" are different things.

### Router firmware (general category)

- A **general category** system is designed to handle **many different tasks**, not just one specific job.
- "General category" tells you **what kind of software it is**. Router firmware comes in two types: stock and custom.

```
Router Firmware
├── Stock Firmware (default manufacturer firmware)
└── Third-Party Firmware
    ├── OpenWrt
    ├── DD-WRT
    └── Tomato
```

- **Default category** means the software that comes **pre-installed** on a device from the manufacturer.
- "Default category" tells you **how it is installed**.

**Summary:**

- **Router firmware** → any software running on a router.
- **Stock firmware** → the router's official, built-in software.
- **Custom firmware** → a modified or third-party version (like OpenWrt).

## Router Firmware (detail)

- Router firmware is *not necessarily* pre-installed by the manufacturer — it's a general term.
- Examples of router brands: TP-Link, D-Link, etc.
- Router firmware is a software concept, not a hardware device.
- **Definition:** any software that runs on a router.
- Can be **stock firmware**, **custom firmware** (like OpenWrt, DD-WRT, Tomato), or another router OS.
- **Purpose:** controls how the router operates — routing, Wi-Fi, firewall, etc.

**Characteristics:**

- Made by the router company.
- Easy web interface (user-friendly).
- Limited features (only basic settings).
- Closed source (you cannot see or modify the code).
- Optimized for normal home users.

**Pros:**

- Stable for normal usage.
- Easy to use.

## Stock Firmware

- **Stock firmware** is the **default software pre-installed by the manufacturer** on a router or other hardware device, controlling its basic functions.
- Stored in the router's **flash memory**.
- Runs automatically when the device powers on.
- Usually **proprietary and closed-source**.
- **Definition:** the official software pre-installed by the manufacturer.
- Designed specifically for that router's hardware.
- Limited to the features provided by the manufacturer.

**Examples:**

- TP-Link stock firmware on a TP-Link router.
- Netgear stock firmware on a Netgear router.

**Characteristics:**

- Comes with the device from the manufacturer.
- Designed to work with the router's exact hardware.
- Only allows basic settings (Wi-Fi SSID, password, etc.).
- Users cannot modify or see the code.

**Pros:**

- Pre-installed and ready to use.
- Hardware compatibility guaranteed.

## OpenWrt Firmware

- OpenWrt is a **custom, open-source Linux-based firmware** that replaces the stock firmware.
- OpenWrt is software, not hardware — it replaces the stock firmware on Wi-Fi routers.
- OpenWrt does **not** support all boards.
- The goal of OpenWrt is to get **better control, performance, security, and flexibility**.

**Characteristics:**

- Developed by the **OpenWrt community**.
- A full **Linux operating system**.
- Highly customizable.
- Supports **packages** (like a mini Linux distro).
- Advanced networking features.

**Pros:**

- Very powerful.
- Full control over the router.
- Frequent security updates.
