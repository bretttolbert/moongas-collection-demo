<img src="https://raw.githubusercontent.com/bretttolbert/moongas-mediatunes-web/refs/heads/main/client/public/moongas.svg" width="128" height="128">

# moongas-collection-demo

**THIS REPOSITORY CONTAINS NO DIGITAL AUDIO FILES OR THIRD-PARTY COPYRIGHTED MATERIAL**

# moongas-mediatunes-web

> 🚧 **Status: Work in Progress (WIP)**  
> This project is currently under active development. Features, APIs, and documentation are subject to change.

---

## Overview

**This repository is meant to be the canonical example of a moongas hybrid media collection, with media metadata only (moongas `artist.yml` files) and no audio media files.**

### A component of the `moongas` ecosystem of media library tools

- [moongas-mediatunes-web](https://github.com/bretttolbert/moongas-mediatunes-web) [![CI](https://github.com/bretttolbert/moongas-py-mediaserver/actions/workflows/ci.yml/badge.svg)](https://github.com/bretttolbert/moongas-mediatunes-web/actions/workflows/ci.yml) - A Deno-tooled TypeScript/Vue SPA for Moongas hybrid media collections, pairing with the separate moongas-py-mediatunes-svc backend to seemlessly blend offline and streaming playback
- [moongas-py-mediatunes-svc](https://github.com/bretttolbert/moongas-py-mediatunes-svc) [![CI](https://github.com/bretttolbert/moongas-py-mediaserver/actions/workflows/ci.yml/badge.svg)](https://github.com/bretttolbert/moongas-py-mediatunes-svc/actions/workflows/ci.yml) - Python+BlackSheep API service for Moongas hybrid media collections—backend for moongas-mediatunes-web application
- [moongas-collection-demo](https://github.com/bretttolbert/moongas-collection-demo) [![CI](https://github.com/bretttolbert/moongas-collection-demo/actions/workflows/ci.yml/badge.svg)](https://github.com/bretttolbert/moongas-collection-demo/actions/workflows/ci.yml) - Example Moongas media collection (metadata only)
- [moongas-py-mediascan](https://github.com/bretttolbert/moongas-py-mediascan) [![CI](https://github.com/bretttolbert/moongas-py-mediascan/actions/workflows/ci.yml/badge.svg)](https://github.com/bretttolbert/moongas-py-mediascan/actions/workflows/ci.yml) - Python package for loading Moongas database and Yaml
- [moongas-go-mediascan](https://github.com/bretttolbert/moongas-go-mediascan) [![CI](https://github.com/bretttolbert/moongas-go-mediascan/actions/workflows/ci.yml/badge.svg)](https://github.com/bretttolbert/moongas-go-mediascan/actions/workflows/ci.yml) - Golang module to scan media collections and Moongas Yaml metatadata, outputs Moongas database
- [moongas-py-mediatest](https://github.com/bretttolbert/moongas-py-mediatest) [![CI](https://github.com/bretttolbert/moongas-py-mediatest/actions/workflows/ci.yml/badge.svg)](https://github.com/bretttolbert/moongas-py-mediatest/actions/workflows/ci.yml) - Python tool for enforcing media collection rules (implemented with `pytest`)

## Live Demos
- [Live Demo (hosted on bretttolbert.com)](https://bretttolbert.com/mediaserver)
- [Live Demo (hosted on moongas.org)](https://moongas.org/mediaserver)

