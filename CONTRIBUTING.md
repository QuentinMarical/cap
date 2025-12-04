# Contributing to Carter Addon Pack

Thank you for your interest in contributing! This guide will help you get started.

## 🔧 Workflow Git

- Branches: travail direct sur `master` ou via branches de feature (`feature/...`).
- Pull: toujours en rebase (`git pl`), pour éviter les merge commits.
- Commits: signés via SSH (clé `id_ed25519`).
- Messages: concis, en anglais ou français, avec préfixes: `feat:`, `fix:`, `chore:`, `docs:`, `examples:`.
- Push: en SSH (`git@github.com:QuentinMarical/cap.git`).

## 📝 Alias utiles
- `git st`: état court avec branche.
- `git lg`: log graphique compact.
- `git co`: commit.
- `git br`: branches détaillées.
- `git pl`: pull en rebase.
- `git last`: dernier commit avec signature.

## 🔒 Hooks
Les hooks sont configurés via `core.hooksPath = .githooks`. Le hook `pre-commit` bloque les fichiers temporaires/logs/caches Lua.

## 📋 Convention de messages
- `feat:` nouvelle fonctionnalité
- `fix:` correction de bug
- `chore:` maintenance, config, CI
- `docs:` documentation
- `examples:` ajout/modification de scripts E2

---

## 🎮 Contributing E2 Scripts

We welcome contributions of Expression 2 scripts! Here's how to add your scripts:

### ✅ Script Requirements

Your E2 script should:
1. **Work correctly** - Test it thoroughly in-game
2. **Be well-documented** - Include header comments explaining:
   - What the script does
   - How to use it
   - Required wiring
   - Expected inputs/outputs
3. **Follow best practices** - Use proper E2 syntax and conventions
4. **Be useful** - Solve a real problem or demonstrate a technique

### 📋 Submission Process

1. **Create your script** with proper header
2. **Save as `.txt` file** in `examples/` folder
   - Use descriptive filename: `feature_description.txt`
3. **Update `examples/README.md`** with your script
4. **Test your script** thoroughly
5. **Submit pull request** with commit: `examples: add [script name]`

### 💡 Script Template

```lua
@name Your Script Name
@inputs Entity:entity Input
@outputs Status:string
@persist Variables
@trigger Input

#[
    ==========================================
    YOUR SCRIPT NAME
    ==========================================
    
    Brief description of what it does.
    
    HOW TO USE:
    1. Step by step instructions
    
    WIRING:
    - Input1 (Type) -> Description
    
    OUTPUTS:
    - Output1 (Type) -> Description
]#

if(first()) {
    # Initialize
}

# Your code here
```

For complete guidelines, see comments in existing examples.

---

## 🐛 Reporting Bugs

Found a bug? Please [open an issue](https://github.com/QuentinMarical/cap/issues) with:
- Description of the problem
- Steps to reproduce
- Expected vs actual behavior
- GMod version and CAP version
- Any error messages from console

## 💻 Code Contributions

### For Lua Code
1. Follow existing code style
2. Use modern GMod APIs (SetNW*, not SetNetworked*)
3. Test changes in single-player and multiplayer
4. Document new features

### Pull Request Process
1. Fork the repository
2. Create a feature branch (`feature/your-feature`)
3. Make your changes
4. Test thoroughly
5. Commit with proper message format
6. Push and create pull request

## 📖 Documentation

Help improve documentation:
- Fix typos or unclear explanations
- Add examples or clarifications
- Update outdated information
- Translate to other languages

## 🤝 Questions?

- Check [E2_GUIDE.md](./E2_GUIDE.md) for E2 help
- Read [FAQ.md](./FAQ.md) for common questions
- Open a GitHub Discussion for general questions

Thank you for contributing! 🚀
