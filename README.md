# BedrockConnect

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![Build and push Docker image](https://github.com/anthony-spruyt/bedrockconnect/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/anthony-spruyt/bedrockconnect/actions/workflows/docker-publish.yml)
[![Latest Release](https://img.shields.io/github/v/release/anthony-spruyt/bedrockconnect)](https://github.com/anthony-spruyt/bedrockconnect/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/aspruyt/bedrockconnect)](https://hub.docker.com/r/aspruyt/bedrockconnect)

Minecraft Bedrock dedicated server connector for routing player connections.
**Note:** This is a rebuild of [Pugmatt/BedrockConnect](https://github.com/Pugmatt/BedrockConnect) using newer Java versions to support TLS 1.3.

**Configuration:** Refer to the original [Pugmatt/BedrockConnect](https://github.com/Pugmatt/BedrockConnect) repository for configuration details and custom server setup.

**Automation:** Releases here are automatically triggered by an n8n workflow whenever Pugmatt publishes a new release upstream.


## Manual Docker Build & Push

To build and push a specific version manually:

```bash
docker build --build-arg VERSION=<version> -t aspruyt/bedrockconnect:<version> .
docker push aspruyt/bedrockconnect:<version>
```

## Run with Docker

```bash
docker run -d --name bedrockconnect \
  -p 19132:19132/udp \
  aspruyt/bedrockconnect:<version>
```

## GitHub Actions Release Workflow

A GitHub Actions workflow dispatch is available to automate building, publishing, and releasing:

1. Navigate to the **Actions** tab in this repository.  
2. Select the **Build and push Docker image** workflow.  
3. Click **Run workflow**, enter the **version** (e.g., `1.19.3`), and click **Run workflow**.  
4. The workflow will build the Docker image, push the tags, and create a GitHub Release.
