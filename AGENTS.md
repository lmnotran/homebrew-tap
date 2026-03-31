# Agent Instructions for lmnotran/homebrew-tap

This is a Homebrew third-party tap containing custom formula definitions.

## Repository Structure

- `Formula/`: Contains Ruby formula files (`.rb`) that define how to install packages via Homebrew.

## Key Guidelines

1. Formulas are Ruby classes that inherit from `Formula`.
2. Each formula must include: `desc`, `homepage`, `version`, `license`, `url`, `sha256`, an `install` method, and a `test` block.
3. Use platform/architecture guards (`on_macos`, `on_linux`, `Hardware::CPU.arm?`) when providing pre-built binaries for multiple targets.
4. Update `sha256` checksums whenever a formula version changes.
5. Verify formulas work by running `brew install --build-from-source <formula>` and `brew test <formula>`.
6. Run `brew audit --strict --new <formula>` to check for style and best-practice issues.
