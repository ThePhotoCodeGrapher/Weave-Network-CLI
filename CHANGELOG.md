# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog, and this project attempts to follow Semantic Versioning once stabilized.

## [1.1.0] - 2025-08-26
### Added
- Python library API facade in `wnc/api.py` with sync helpers: `internal_subnets()`, `hosts()`, `ports()`, `cameras()`, `wizard()`.
- Public exports in `wnc/__init__.py` for easy imports.
- README section documenting Python API usage.

### Packaging
- PyPI packaging under name `weave-cli` with `pyproject.toml`, `MANIFEST.in` and a GitHub Actions workflow to publish on `v*` tags.

### Changed
- Version bumped to `1.1.0` across code and packaging.

## [0.1.0] - 2025-08-26
### Added
- Initial public release of Weave Network CLI (WNC)
- Interactive wizard for network discovery, port scanning, device fingerprinting, camera detection, Wi‑Fi info (macOS), LAN latency, and optional analysis
- JSON reporting and risk analyzer
- Non-commercial licensing under PolyForm Noncommercial 1.0.0

