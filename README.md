# The Stargate Carter Pack

Stargate Carter Pack more commonly known as Carter's Addon Pack or CAP is an addon for Garry's mod that adds new content elements to the game, all based off the Stargate franchise from the 1994 film to the late Stargate Universe. Carter's Addon Pack gives the most impressive array of Stargate elements for Garry's Mod, allowing much more diversity & variations for Stargate gameplay in Garry's Mod.

CAP (Carter's Addon Pack) covers many themes found in Stargate, such as Lantean technology, Asgard technology and many others, without forgetting the devices and weapons found and seen in the Stargate shows, which often became deadly threats or powerful assets to the people of Stargate Command, Atlantis and Destiny.

From piloting starships to building bases, the Stargate Carter Pack provides players with great replayability, creativity, and more!

More information can be found in the Wiki located here: https://github.com/RafaelDeJongh/cap/wiki

---

## 🔧 This Fork

This is a maintained fork of the Carter Addon Pack with modern improvements and fixes.

### 🌟 What's New

**Latest Updates (December 2025):**
- ✅ **Complete GMod 13+ API Migration**: Migrated all `Set/GetNetworked*` calls to modern `Set/GetNW*` APIs (171 files, 2381 lines)
- ✅ **Syntax Fixes**: Corrected 41 Lua syntax errors across 8 critical files
- ✅ **Enhanced Development Workflow**: Added comprehensive `.gitignore`, Git hooks, and contribution guidelines
- ✅ **Improved Documentation**: Added `CHANGELOG.md`, `CORRECTIONS.md`, and `CONTRIBUTING.md`

### 📋 Key Improvements

#### 🔄 Networking API Modernization
Complete migration from deprecated `SetNetworkedX` to `SetNWX`:
- All Stargates (SG-1, Atlantis, Universe, Movie, Orlin, Tollan, Infinity, Supergate, Asuran)
- Shield systems (shield_core, ship_shield, generators)
- ZPM systems (zpm_mk3, zpmhub, sgc_zpm_hub, asuran_zpm_hub)
- All vehicles (Puddle Jumper, F302, Daedalus, Dart, Shuttle, Teltac, Gliders)
- Weapons and effects (Asuran gate weapon, drones, energy beams, cloaking)
- Transporters, DHDs, control panels, and 100+ other entities

**Why this matters:**
- Better compatibility with recent Garry's Mod versions
- Follows modern GMod best practices
- Prevents deprecation warnings
- Improves network efficiency

#### 🐛 Bug Fixes
Fixed 41 syntax errors:
- 37 incorrect `!=` operators → `~=`
- 4 incorrect `!` operators → `not`

Files fixed: `a_gmod13.lua`, `capcheck.lua`, `cap.lua`, `stargate_base/init.lua`, `spawner.lua`, `menu.lua`, `keyboard.lua`

#### 🔧 Developer Experience
- **Git Hooks**: Pre-commit hook blocks temp files, logs, and compiled Lua
- **Comprehensive .gitignore**: Excludes VS Code, logs, caches, Lua bytecode, GMod artifacts
- **Contributing Guide**: Standardized workflow, commit conventions, useful Git aliases
- **Documentation**: Detailed changelog and correction logs

### 📚 Documentation

- **[CHANGELOG.md](./CHANGELOG.md)** - Complete history of all changes since fork
- **[CORRECTIONS.md](./CORRECTIONS.md)** - Detailed syntax corrections (41 fixes across 8 files)
- **[CONTRIBUTING.md](./CONTRIBUTING.md)** - Development workflow and Git conventions
- **[INSTALLATION.md](./INSTALLATION.md)** - Installation instructions
- **[FAQ.md](./FAQ.md)** - Frequently asked questions

### 🔗 Links

- **Original Repository**: [RafaelDeJongh/cap](https://github.com/RafaelDeJongh/cap)
- **This Fork**: [QuentinMarical/cap](https://github.com/QuentinMarical/cap)
- **Wiki**: https://github.com/RafaelDeJongh/cap/wiki
- **Issues**: Report bugs and request features on GitHub

### 🤝 Contributing

Contributions are welcome! Please read [CONTRIBUTING.md](./CONTRIBUTING.md) for:
- Git workflow and branch conventions
- Commit message format (`feat:`, `fix:`, `chore:`, `docs:`)
- Pre-commit hooks setup
- Development guidelines

### 📊 Statistics

- **171 files** modernized with NW APIs
- **2,381 lines** added (new APIs, docs, tooling)
- **2,047 lines** removed (deprecated code, fixes)
- **41 syntax errors** corrected
- **0 errors** remaining

### ✅ Validation

All changes tested and validated:
- ✓ Stargates (chevrons, animations, dialing)
- ✓ Shields (HUD, states, colors)
- ✓ ZPM systems (display, connections)
- ✓ Vehicles (Jumper, F302, ships)
- ✓ Weapons (Asuran weapon, drones, beams)
- ✓ Effects and visuals

### 📜 License

See [LICENSE.md](./LICENSE.md) for licensing information.

---

**Maintained by**: Quentin Marical ([@QuentinMarical](https://github.com/QuentinMarical))  
**Based on**: Carter Addon Pack by RafaelDeJongh and contributors  
**Last Updated**: December 3, 2025
