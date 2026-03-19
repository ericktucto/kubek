# Kubek - Minecraft Server Dashboard

A Docker-based Minecraft server management dashboard built on top of [Kubek](https://github.com/Seeroy/kubek-minecraft-dashboard).

## Features

- **Web Dashboard** - Manage your Minecraft servers through a web interface
- **Multi-instance** - Run multiple Minecraft servers simultaneously
- **Dockerized** - Easy deployment with Docker Compose
- **Cross-platform** - Supports both x86 and ARM architectures (amd64, arm64)
- **Automated Builds** - CI/CD with GitHub Actions

## Quick Start

### Prerequisites

- Docker
- Docker Compose

### Clone and Run

```bash
# Clone this repository
git clone https://github.com/ericktcto/kubek.git
cd kubek

# Copy environment file
cp .env.example .env

# Start the container
docker compose up -d
```

### Access the Dashboard

- Dashboard: `http://localhost:3000`
- Minecraft Server: `localhost:25565`

## Configuration

### Environment Variables

Create a `.env` file based on `.env.example`:

| Variable | Default | Description |
|----------|---------|-------------|
| `PORT_DASHBOARD` | 3000 | Dashboard web interface port |
| `PORT_MINECRAFT` | 25565 | Minecraft server port |

### Ports

| Port | Service |
|------|---------|
| 3000 | Dashboard (configurable) |
| 25565 | Minecraft Server (configurable) |

## Docker Image

The Docker image is automatically built and pushed to GitHub Container Registry:

```
ghcr.io/ericktcto/kubek:latest
```

## Development

### Build the Image Locally

```bash
docker build -t kubek .
```

### Run in Development Mode

```bash
docker compose up --build
```

## Tech Stack

- **Base Image**: Node.js 24 (Alpine)
- **Dashboard**: [Kubek](https://github.com/Seeroy/kubek-minecraft-dashboard)
- **Runtime**: OpenJDK 25
- **Deployment**: Docker, Docker Compose
- **CI/CD**: GitHub Actions

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Acknowledgments

- [Kubek](https://github.com/Seeroy/kubek-minecraft-dashboard) - The original Minecraft dashboard project
