# Released Apps

Windows desktop utilities by [aojha111](https://github.com/aojha111). All binaries are
single-file executables published here via Git LFS — download, run, no installer needed
(unless noted).

| App | File | What it does |
|---|---|---|
| **AI & Dev Space Analyzer** | [`AIDevSpaceAnalyzer.exe`](https://github.com/aojha111/ReleasedApps/raw/main/AIDevSpaceAnalyzer.exe) | Finds AI-model, agent and dev-environment folders eating your disk (Hugging Face, Ollama, npm/uv/pip caches, `node_modules`, venvs…) and clears them safely to the Recycle Bin. Windows 11 Fluent UI, light/dark theme, scan history, exclusions. |
| **Screen Lock Active** | [`ScreenLockActive.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ScreenLockActive.exe) | Keeps all displays awake while blocking physical keyboard/mouse input until an unlock chord — automation (screenshots, injected input) still works. Optional panel/monitor power-off mode and a Silent screen-on mode. |
| **Screen Lock Active (installer)** | [`ScreenLockActiveInstaller.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ScreenLockActiveInstaller.exe) | Installer build of Screen Lock Active. |

## Releases

### AI & Dev Space Analyzer — v2.0 (2026-09-22)

- Windows 11 Fluent UI: NavigationView shell (Home / Results / History / Exclusions / Settings), Segoe Fluent Icons, system accent color
- Home: disk capacity ring, reclaimable stats, one-click "Clear all safe caches"
- Results: collapsible category groups, verdict chips, responsive search + verdict filter, right-click actions
- History: scan/cleanup log with total freed; Exclusions page; light/dark/system theme
- Safety: deletions go to the Recycle Bin; active projects are never auto-deleted; scanning is read-only

### Screen Lock Active

- PySide6 (Qt) desktop utility, PyInstaller one-file build

## Requirements

- Windows 10/11 (x64)
- No Python installation needed — the exes are self-contained
