# homebrew-tap

Custom Homebrew tap for formulas not available in the official Homebrew repositories.

## Installation

```sh
brew tap lmnotran/tap
```

## Formulas

| Formula | Description |
|---------|-------------|
| `bws` | Alias for the latest major version (currently `bws@2`) |
| `bws@2` | [Bitwarden Secrets Manager CLI](https://bitwarden.com/help/secrets-manager-cli/) v2.x |
| `bws@1` | [Bitwarden Secrets Manager CLI](https://bitwarden.com/help/secrets-manager-cli/) v1.x |

### Installing a formula

```sh
brew install lmnotran/tap/bws
```

### Switching between versions

If you have multiple versions installed, use `brew link` to select which one is active:

```sh
# Switch to bws@1
brew unlink bws
brew link bws@1

# Switch back to latest
brew unlink bws@1
brew link bws
```

## Maintainer workflow

When updating a formula:

1. Update all platform-specific URLs and `sha256` values.
2. Run:

```sh
export FORMULA=lmnotran/tap/bws
brew livecheck --formula $FORMULA
brew audit --strict $FORMULA
brew install --build-from-source $FORMULA
brew test $FORMULA
```
