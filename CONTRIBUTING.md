# Workflow Git

- Branches: travail direct sur `master` ou via branches de feature (`feature/...`).
- Pull: toujours en rebase (`git pl`), pour éviter les merge commits.
- Commits: signés via SSH (clé `id_ed25519`).
- Messages: concis, en anglais ou français, avec préfixes: `feat:`, `fix:`, `chore:`, `docs:`.
- Push: en SSH (`git@github.com:QuentinMarical/cap.git`).

## Alias utiles
- `git st`: état court avec branche.
- `git lg`: log graphique compact.
- `git co`: commit.
- `git br`: branches détaillées.
- `git pl`: pull en rebase.
- `git last`: dernier commit avec signature.

## Hooks
Les hooks sont configurés via `core.hooksPath = .githooks`. Le hook `pre-commit` bloque les fichiers temporaires/logs/caches Lua.

## Convention de messages
- `feat:` nouvelle fonctionnalité
- `fix:` correction de bug
- `chore:` maintenance, config, CI
- `docs:` documentation
