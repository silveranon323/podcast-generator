# Podcast Generator

[![GitHub Marketplace](https://img.shields.io/badge/Marketplace-Podcast%20Generator-blue)](https://github.com/marketplace/podcast-generator)

**Podcast Generator** is a GitHub Action that automatically generates and updates your podcast RSS feed from a YAML configuration file. Simplify your podcast publishing workflow by integrating it directly into your CI/CD pipeline!

---

## Features

- Generate podcast RSS feeds from a simple YAML file.
- Automate feed updates on every commit or release.
- Configure committer information dynamically.
- Built with Docker for portability and consistency.
- Easy to customize and extend.

---

## Usage

### Inputs

| Name    | Description                    | Required | Default                                      |
|---------|--------------------------------|----------|----------------------------------------------|
| `email` | The committer’s email address  | Yes      | Dynamic, defaults to `github.actor@localhost` |
| `name`  | The committer’s name           | Yes      | Dynamic, defaults to `github.actor`           |

### Example workflow

```yaml
name: Generate Podcast Feed

on:
  push:
    branches:
      - main

jobs:
  generate-feed:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3

      - name: Generate podcast feed
        uses: silveranon323/podcast-generator@v1
        with:
          email: ${{ github.actor }}@users.noreply.github.com
          name: ${{ github.actor }}

```
**How it works**
Checks out your repository code.

Runs the Podcast Generator Docker container.

Reads your podcast configuration YAML.

Generates or updates the podcast RSS feed.

Commits and pushes the feed back to your repository.

**Requirements**
Your podcast metadata must be defined in a YAML file in your repository.

The workflow must have write permissions to push changes back to the repository.

**Contributing**
Contributions, issues, and feature requests are welcome! Feel free to check the issues page if you want to contribute.

**License**
This project is licensed under the MIT License.

**Contact**
Created by **SilverAnon AKA Hem Kishore Pradhan**
GitHub: **@silveranon323**

Let me know if you want me to add badges or screenshots!


