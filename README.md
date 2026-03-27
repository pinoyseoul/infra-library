# 🏛️ PinoySeoul Infrastructure Catalogue

Welcome to the central container library for **PinoySeoul Media Enterprise**. This repository acts as the public anchor for our curated container collection, ensuring high availability, security, and standardized deployment across our global multi-node cluster.

## 🚀 Infrastructure Dashboard
Our entire tech stack is managed by an **Automated Mirror Engine** that ensures our containers are always up-to-date and transparently monitored.

| Resource | Status |
| :--- | :--- |
| **Mirror Engine** | [![Mirror Sync](https://github.com/pinoyseoul/infrastructure/actions/workflows/mirror.yml/badge.svg)](https://github.com/pinoyseoul/infrastructure/actions/workflows/mirror.yml) |
| **Live Catalogue** | [📊 View Public Project Board](https://github.com/orgs/pinoyseoul/projects/3) |
| **Public Registry** | [📦 Browse GHCR Packages](https://github.com/orgs/pinoyseoul/packages) |

---

## 📦 Container Catalogue
The following applications are auto-discovered, mirrored, and tracked in this library.

### 🎬 Media Production & Streaming
*   **azuracast**: The heartbeat of our radio operations. A complete web radio management suite.
*   **jellyfin**: Our primary media streaming server for movies, shows, and live TV.
*   **jellyseerr**: A request management and discovery tool for our media ecosystem.
*   **navidrome**: High-performance music streaming server for our audio library.
*   **audiobookshelf**: Specialized server for managing and streaming audiobooks and podcasts.
*   **photoview**: High-performance photo gallery designed for privacy and large backups.
*   **kavita / bookshelf**: Advanced manga, comic, and ebook management systems.

### 🤖 Media Automation (The *arr Suite)
*   **radarr**: Automated movie collection manager and downloader.
*   **sonarr**: Automated TV series collection manager and downloader.
*   **lidarr**: Automated music collection manager and downloader.
*   **bazarr**: Automated subtitle management and synchronization.
*   **prowlarr**: Centralized indexer manager for all automation services.
*   **qbittorrent**: High-speed, lightweight torrent client for data transmission.
*   **ytdl-sub**: Automated YouTube content acquisition and organization.

### 💼 Business & Admin Operations
*   **kimai2**: Our core time tracking and professional attendance platform.
*   **planka**: Visual project management and workload tracking board.
*   **postiz-app**: All-in-one social media scheduling and outreach platform.
*   **docuseal**: Secure digital document signing and management.
*   **invoiceshelf**: Self-hosted business invoicing and financial tracking.
*   **vaultwarden**: Secure, lightweight password and secret management (Bitwarden-compatible).

### 🛠️ Technical Infrastructure & Databases
*   **postgres**: Advanced relational database powering our core system services.
*   **mariadb**: Robust SQL database used for high-availability applications.
*   **redis**: High-speed in-memory data store for caching and real-time queues.
*   **elasticsearch**: Distributed search and analytics engine for deep data discovery.
*   **temporalio (Server & UI)**: Modern workflow orchestration for reliable task execution.
*   **dbgate**: Cross-platform database manager for SQL and NoSQL clusters.

### 🛡️ Network & System Utilities
*   **cloudflared**: Secure Zero Trust tunnels for private access without open ports.
*   **watchtower**: Automated manager that keeps our containers updated with the latest security patches.
*   **glances**: Real-time system monitoring and hardware metrics dashboard.
*   **rclone**: The "Swiss Army Knife" for cloud storage backups and synchronization.
*   **syncthing**: Continuous file synchronization between our production and studio nodes.
*   **home-assistant**: Centralized automation platform for homelab management.

---
© 2026 **PinoySeoul Media Enterprise**.  
*Structured. Automated. Transparent.*
