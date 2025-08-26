# Contributing to Weave Network CLI (WNC)

Thanks for your interest in contributing! Please read this guide to get started.

## Development setup

- Python 3.10+
- macOS or Linux recommended

Setup:

```
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Run the CLI:

```
python -m wnc wizard --yes --output scan_report.json
```

## Code style

- Use Black/PEP8 style and type hints where practical.
- Keep modules small and focused under `wnc/scanners/` and `wnc/analyzers/`.
- Prefer async for network I/O.

## Commits & PRs

- Use clear, conventional commits (feat:, fix:, docs:, chore:).
- Include a brief rationale and testing notes.
- Link related issues.

## Testing

- Add unit tests where feasible (pytest recommended).
- For network scanners, isolate side effects and mock network responses.

## Security & safety

- Do not add destructive operations by default. Keep dangerous actions opt-in behind explicit flags.
- See `SECURITY.md` to report vulnerabilities.

## License

Contributions are accepted under the project license noted in `LICENSE`.
