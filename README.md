# Released Apps

Windows desktop utilities by [aojha111](https://github.com/aojha111). All binaries are
single-file executables published here via Git LFS — download, run, no installer needed
(unless noted).

| App | File | What it does |
|---|---|---|
| **AI & Dev Space Analyzer** | [`AIDevSpaceAnalyzer.exe`](https://github.com/aojha111/ReleasedApps/raw/main/AIDevSpaceAnalyzer.exe) | Finds AI-model, agent and dev-environment folders eating your disk (Hugging Face, Ollama, npm/uv/pip caches, `node_modules`, venvs…) and clears them safely to the Recycle Bin. Windows 11 Fluent UI, light/dark theme, scan history, exclusions. |
| **GitProfile** | [`GitProfile.exe`](https://github.com/aojha111/ReleasedApps/raw/main/GitProfile.exe) | Stops GitHub's "Select an account" popup on every push. Pick which of your signed-in GitHub accounts is the default, and pin a different one per repository. Window, tray shortcut and CLI in one exe. |
| **Screen Lock Active** | [`ScreenLockActive.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ScreenLockActive.exe) | Keeps all displays awake while blocking physical keyboard/mouse input until an unlock chord — automation (screenshots, injected input) still works. Optional panel/monitor power-off mode and a Silent screen-on mode. |
| **Screen Lock Active (installer)** | [`ScreenLockActiveInstaller.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ScreenLockActiveInstaller.exe) | Installer build of Screen Lock Active. |

## Releases

### GitProfile — v1.0 (2026-09-23)

Source: [aojha111/GitProfileSelector](https://github.com/aojha111/GitProfileSelector)

- Chooses which GitHub account Git Credential Manager uses, so pushes stop asking — your
  passwords and tokens stay in GCM; GitProfile only writes git config keys
- One default account for the logged-in Windows user (user-level `git config`, applies to
  every terminal, IDE and repository, and survives the app closing)
- Optional per-repository pin that overrides the default, with an unpin action
- Per-account commit `user.name` / `user.email`
- WPF window with light/dark theme and an always-visible Apply footer, tray menu for a
  one-click account switch, plus a CLI in the same exe (`GitProfile.exe list`, `current`,
  `use <account>`, `help`)
- Shows the exact `git config` commands before running them — nothing changes silently
- Requires Git for Windows with Git Credential Manager; no .NET install needed

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
