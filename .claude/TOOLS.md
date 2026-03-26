##Tools Available
The host has these CLI tools installed — prefer them over workarounds:

- **jq** — parse/query JSON (gh API responses, build reports, package.json, etc.)
- **yq** — parse/query YAML (workflow files, k8s manifests, devcontainer.json, etc.)
- **delta** (`git-delta`) — syntax-highlighted git diffs; configured as git's default pager
- **tree** — directory structure overview in one shot (faster than multiple Glob calls)
- **bat** — syntax-highlighted file viewer; prefer over `cat` for reading configs/code in bash
- **xh** — fast HTTP client (httpie-compatible); use for API testing instead of curl
- **helm** — Kubernetes package manager CLI
- **tokei** — codebase stats (lines of code by language); good for exploring unfamiliar repos
- **gh** — GitHub CLI for PRs, issues, Actions runs
- **rtk** — token-optimized proxy; all bash commands auto-rewritten via hook
- **rg** (ripgrep) — available but use the built-in Grep tool instead (better UX)
