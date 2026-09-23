# Released Apps

Windows desktop utilities by [aojha111](https://github.com/aojha111). All binaries are
single-file executables published here via Git LFS — download, run, no installer needed
(unless noted).

| App | File | What it does |
|---|---|---|
| **AI & Dev Space Analyzer** | [`AIDevSpaceAnalyzer.exe`](https://github.com/aojha111/ReleasedApps/raw/main/AIDevSpaceAnalyzer.exe) | Finds AI-model, agent and dev-environment folders eating your disk (Hugging Face, Ollama, npm/uv/pip caches, `node_modules`, venvs…) and clears them safely to the Recycle Bin. Windows 11 Fluent UI, light/dark theme, scan history, exclusions. |
| **GitProfile** | [`GitProfile.exe`](https://github.com/aojha111/ReleasedApps/raw/main/GitProfile.exe) | Stops GitHub's "Select an account" popup on every push. Pick which of your signed-in GitHub accounts is the default, and pin a different one per repository. System/light/dark themes, window, tray shortcut and CLI in one exe. |
| **Image Compressor** | [`ImageCompressor.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ImageCompressor.exe) | Batch-compresses images to JPG/PNG/WEBP/ICO by quality or exact target file size, with optional resize, named presets, folder import, before/after diff preview and retry-failed. Windows 11 Fluent UI with Mica, light/dark themes. |
| **Screen Lock Active** | [`ScreenLockActive.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ScreenLockActive.exe) | Keeps all displays awake while blocking physical keyboard/mouse input until an unlock chord — automation (screenshots, injected input) still works. Optional panel/monitor power-off mode and a Silent screen-on mode. |
| **Screen Lock Active (installer)** | [`ScreenLockActiveInstaller.exe`](https://github.com/aojha111/ReleasedApps/raw/main/ScreenLockActiveInstaller.exe) | Installer build of Screen Lock Active. |
| **VMDesk** | [`VMDesk.exe`](https://github.com/aojha111/ReleasedApps/raw/main/VMDesk.exe) | Offline-first VM and Remote Desktop connection manager: tile/list library with search and favorites, native Microsoft RDP sessions embedded or in standalone windows, passwords kept only in Windows Credential Manager, import/export and backups. Windows 11 Fluent UI, light/dark themes. |
| **VMDesk (installer)** | [`VMDeskInstaller.exe`](https://github.com/aojha111/ReleasedApps/raw/main/VMDeskInstaller.exe) | Installer build of VMDesk — extracts the app to `%LOCALAPPDATA%\VMDesk` and creates Start Menu and desktop shortcuts. |

## Releases

### VMDesk — v1.0.0 (2026-09-23)

Source: [aojha111/VMDesk](https://github.com/aojha111/VMDesk)

- VM and remote-connection library: tile and list views (persisted per setting), search,
  favorites, per-VM groups, and full CRUD with stored credentials
- Native Microsoft RDP sessions (`mstscax.dll`) hosted in the embedded workspace or in an
  independent standalone session window, per VM
- Credentials live only in Windows Credential Manager — never in the SQLite database,
  exports, or logs; connecting without a credential opens a picker of saved ones
- Import/export (password-free), timestamped database backups, diagnostics and rotating logs
- Windows 11 Fluent UI: Mica-style surfaces, light/dark/system themes, Fluent icon pack,
  PerMonitorV2 DPI awareness
- Requires Windows 10/11 x64; passwords are kept on-device, no accounts or network services

### Image Compressor — v1.2.2 (2026-09-23)

Source: [aojha111/ImageCompressor](https://github.com/aojha111/ImageCompressor)

- Clear now also wipes the output records: results table, per-file bars, totals, status
  chips and the failed list (Retry can no longer act on cleared files)

### Image Compressor — v1.2.1 (2026-09-23)

Source: [aojha111/ImageCompressor](https://github.com/aojha111/ImageCompressor)

- Fixed: selecting any preset in the dropdown crashed the app (signal type mismatch —
  `QComboBox.activated` delivers an index, the handler expected the preset name)

### GitProfile — v1.1 (2026-09-23)

Source: [aojha111/GitProfileSelector](https://github.com/aojha111/GitProfileSelector)

- Theme picker in the header: System, Light or Dark — the choice is saved and survives
  restarts, and the title bar follows the palette live
- System mode still tracks the Windows light/dark setting as it changes

### Image Compressor — v1.2 (2026-09-23)

Source: [aojha111/ImageCompressor](https://github.com/aojha111/ImageCompressor)

- Windows 11 Fluent UI: real Mica backdrop, immersive dark/light title bar, rounded corners,
  Segoe Fluent glyph icons, compact layout, light/dark toggle with system-theme detection
- Batch compression by quality slider or exact target file size (binary search with resize
  fallback), outputs JPG, PNG, WEBP or ICO with collision-safe naming
- Named presets (quality/format/resize combos) saved to a dropdown, plus custom output folder
  and optional longest-side resize
- Recursive folder import via drag-drop, Add folder button or Ctrl+Shift+O
- Before/after diff preview with fit-to-view zoom and size/savings badges (double-click a
  result row); image previews and context menus throughout
- Results table with dimensions, savings, totals, per-file status chips and a Retry failed
  action; keyboard shortcuts (Ctrl+O, Ctrl+L, Ctrl+T, Return, Delete)
- Single-file exe, no install needed; Mica requires Windows 11 22H2+ (older Windows gets
  the same UI without the backdrop)

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
