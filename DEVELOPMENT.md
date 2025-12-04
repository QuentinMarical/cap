# Development Setup Guide

This guide will help you set up a local development environment for the Carter Addon Pack.

## 📋 Prerequisites

- **Garry's Mod** (installed and working)
- **Git** (command line version control)
- **Text Editor**: VS Code, Sublime Text, or similar
- **Basic Lua knowledge** (optional but helpful)
- **Wiremod** addon (for testing E2 scripts)

## 🚀 Quick Start (5 minutes)

### 1. Clone the Repository

```bash
cd "c:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\addons"
git clone https://github.com/QuentinMarical/cap.git
git clone https://github.com/QuentinMarical/cap_resources.git
```

### 2. Restart Garry's Mod

Close and reopen GMod. You should see CAP in your spawn menu.

### 3. Configure Git (One-time)

```bash
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### 4. Start Making Changes

```bash
# Create a feature branch
git checkout -b feature/your-feature-name

# Make changes, test them in GMod
# Then commit
git add .
git commit -m "feat: add your feature"

# Push to your fork
git push origin feature/your-feature-name
```

## 📂 Project Structure

```
cap/
├── lua/                 # All Lua code (entities, effects, weapons)
│   ├── autorun/         # Scripts that load automatically
│   ├── entities/        # Entity definitions
│   ├── effects/         # Visual effects
│   ├── weapons/         # Weapon definitions
│   └── wire/            # Wiremod integration
├── examples/            # E2 script examples
├── docs/                # Documentation (if present)
├── .github/             # GitHub configuration
│   ├── workflows/       # Automated checks
│   └── ISSUE_TEMPLATE/  # Issue templates
├── addon.json           # Addon metadata
└── *.md                 # Documentation files
```

## 🔧 Development Tools

### VS Code Setup (Recommended)

**Install Extensions:**
1. Lua (sumneko.lua)
2. Git Graph (mhutchie.git-graph)
3. Markdown All in One (yzhang.markdown-all-in-one)
4. Bracket Pair Colorizer (coenraadm.bracket-pair-colorizer-2)

**Create `.vscode/settings.json`:**
```json
{
    "Lua.diagnostics.globals": ["love"],
    "[lua]": {
        "editor.formatOnSave": false,
        "editor.defaultFormatter": null
    }
}
```

### Testing E2 Scripts

1. Spawn an **Expression 2** chip (Wiremod)
2. Right-click → "Open Editor"
3. Copy code from `examples/` folder
4. Click "Upload to Chip"
5. Test the functionality

## 📝 Coding Standards

### Lua Style Guide

```lua
-- Use 4 spaces for indentation
if condition then
    doSomething()
end

-- Use camelCase for variables
local myVariable = 5

-- Use PascalCase for classes/entities
local MyClass = {}

-- Add comments for complex logic
-- Single line comments

--[[
    Multi-line comments
    for longer explanations
]]

-- Use modern GMod APIs
entity:SetNW2String("key", "value")  -- ✅ Modern
entity:SetNetworkedString("key", "value")  -- ❌ Deprecated

-- Always check for nil
if entity ~= nil and entity:IsValid() then
    -- Do something
end
```

### Naming Conventions

- **Functions**: `lowerCamelCase()` or `UPPER_SNAKE_CASE()` for constants
- **Variables**: `camelCase` for local, `UPPER_CASE` for constants
- **Files**: `lowercase_with_underscores.lua`
- **Classes/Entities**: `PascalCase`

## 🧪 Testing Your Changes

### Before Committing

1. **Test in GMod**
   - Singleplayer
   - Multiplayer/Local Server
   - Check console for errors (F9)

2. **Check Syntax**
   - Look for Lua errors in console
   - Use a Lua linter if available

3. **Review Code**
   - Read your changes
   - Check for commented debugging code
   - Ensure proper formatting

### Running Tests (If Available)

```bash
# Check Lua syntax (if configured)
luacheck lua/

# Validate JSON files
jq . addon.json
```

## 🐛 Debugging

### Console Output

```lua
-- Print simple values
print("Value:", myVar)

-- Print tables (for inspection)
PrintTable(myTable)

-- Debug networked values
print("NW Value:", entity:GetNW2String("key"))
```

### Common Issues

**Entity not found:**
```lua
if entity:IsValid() then
    -- Safe to use
end
```

**Network variable not syncing:**
```lua
-- Always use SetNW2* (modern API)
entity:SetNW2String("key", "value")
print(entity:GetNW2String("key"))  -- Should print "value"
```

**Effects not showing:**
```lua
-- Check if client is seeing it
if CLIENT then
    -- Client-side rendering
end
```

## 📚 Resources

- **GMod Lua Documentation**: https://wiki.facepunch.com/gmod/
- **Wiremod Wiki**: https://github.com/wiremod/wire/wiki
- **Expression 2 Guide**: [E2_GUIDE.md](./E2_GUIDE.md)
- **Lua Reference**: https://www.lua.org/manual/5.1/

## 🔄 Git Workflow

### Basic Workflow

```bash
# 1. Create a new branch
git checkout -b feature/my-feature

# 2. Make changes
# ... edit files ...

# 3. Check what changed
git status
git diff lua/myfile.lua

# 4. Stage changes
git add lua/myfile.lua
# or stage everything
git add .

# 5. Commit with clear message
git commit -m "feat: add new feature

Detailed explanation of changes if needed.
Multiple paragraphs are fine."

# 6. Push to your fork
git push origin feature/my-feature

# 7. Create Pull Request on GitHub
# (GitHub will show a link in the terminal)
```

### Commit Message Format

Follow the format: `type: description`

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Code style (formatting, missing semicolons, etc.)
- `refactor:` - Code refactoring
- `perf:` - Performance improvement
- `test:` - Adding tests
- `chore:` - Build process, dependencies, etc.

Example:
```bash
git commit -m "feat: add auto-dialer E2 script for stargates"
git commit -m "fix: correct SetNW2* API calls in shield manager"
git commit -m "docs: update E2 guide with new examples"
```

## 🚀 Publishing Changes

### Before Creating a Pull Request

1. ✅ Test thoroughly in GMod
2. ✅ Check for console errors
3. ✅ Review your code changes
4. ✅ Update documentation if needed
5. ✅ Follow coding standards
6. ✅ Make sure commits are meaningful

### Creating a Pull Request

1. Push your branch: `git push origin feature/your-feature`
2. Go to GitHub: https://github.com/QuentinMarical/cap
3. Click "New Pull Request"
4. Select your branch
5. Fill in the PR template
6. Submit!

## 🆘 Need Help?

- **Questions**: [GitHub Discussions](https://github.com/QuentinMarical/cap/discussions)
- **Bugs**: [GitHub Issues](https://github.com/QuentinMarical/cap/issues)
- **Documentation**: [E2_GUIDE.md](./E2_GUIDE.md)
- **Contributing**: [CONTRIBUTING.md](./CONTRIBUTING.md)

## 📋 Checklist for Contributors

Before submitting your code:

- [ ] Code follows the style guide
- [ ] No console errors in GMod
- [ ] Tested in singleplayer
- [ ] Tested in multiplayer
- [ ] Updated relevant documentation
- [ ] Added comments to complex code
- [ ] Commit messages are clear and descriptive
- [ ] No debug code left in (commented print statements, etc.)
- [ ] Related issues are referenced
- [ ] Pull request description is complete

## 🎓 Learning Resources

### Garry's Mod Development
- GMod Wiki: https://wiki.facepunch.com/gmod/
- YouTube Tutorials: Search "Garry's Mod Lua Tutorial"
- Community Forums: https://facepunch.com/forums/

### Lua Programming
- Official Lua Manual: https://www.lua.org/manual/5.1/
- Lua Tutorial: https://www.tutorialspoint.com/lua/
- Lua Best Practices: https://github.com/Olivine-Labs/lua-style-guide

### Git & GitHub
- Git Official: https://git-scm.com/
- GitHub Guides: https://guides.github.com/
- Interactive Git Learning: https://learngitbranching.js.org/

---

**Happy coding! 🚀**

*If you have suggestions for this guide, please let us know!*
