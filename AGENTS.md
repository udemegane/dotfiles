# AGENTS.md

## What this repo is

A [chezmoi](https://www.chezmoi.io/) dotfiles source directory. Files here are templates/source state that chezmoi applies to the home directory.

## File naming convention

chezmoi uses prefix-based naming: `dot_foo` becomes `~/.foo` in the target. Other prefixes include `private_` (mode 600), `executable_` (mode 755), and combinations thereof.

## Verifying changes

- `chezmoi diff` — preview what would change before applying
- `chezmoi apply -v` — apply changes to the home directory
- `chezmoi cd` — shell into this source directory
- `chezmoi re-add` — update source state after editing target files directly

There are no tests, linters, or build steps.