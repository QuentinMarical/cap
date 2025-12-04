# The Stargate Carter Pack

![Version](https://img.shields.io/badge/version-3.0-blue.svg)
![GMod](https://img.shields.io/badge/GMod-13%2B-orange.svg)
![License](https://img.shields.io/badge/license-Custom-green.svg)
![Status](https://img.shields.io/badge/status-maintained-brightgreen.svg)
![Discord](https://img.shields.io/badge/chat-discord-7289da.svg?logo=discord)
![GitHub Issues](https://img.shields.io/github/issues/QuentinMarical/cap)
![GitHub Stars](https://img.shields.io/github/stars/QuentinMarical/cap)
![Last Commit](https://img.shields.io/github/last-commit/QuentinMarical/cap)

Stargate Carter Pack more commonly known as Carter's Addon Pack or CAP is an addon for Garry's mod that adds new content elements to the game, all based off the Stargate franchise from the 1994 film to the late Stargate Universe. Carter's Addon Pack gives the most impressive array of Stargate elements for Garry's Mod, allowing much more diversity & variations for Stargate gameplay in Garry's Mod.

CAP (Carter's Addon Pack) covers many themes found in Stargate, such as Lantean technology, Asgard technology and many others, without forgetting the devices and weapons found and seen in the Stargate shows, which often became deadly threats or powerful assets to the people of Stargate Command, Atlantis and Destiny.

From piloting starships to building bases, the Stargate Carter Pack provides players with great replayability, creativity, and more!

---

## ❓ Quick Questions

### What is this?

This is an **actively maintained fork** of [Carter's Addon Pack](https://github.com/RafaelDeJongh/cap), one of the most popular Stargate addons for Garry's Mod. It brings content from the Stargate movie, SG-1, Atlantis, and Universe TV shows into GMod.

### Why this fork?

The original CAP team has largely moved on, and the addon rarely receives updates. This fork aims to:
- 🔄 **Modernize** the codebase for current GMod versions
- 🐛 **Fix** long-standing bugs and syntax errors  
- 📚 **Improve** documentation and examples
- 🚀 **Add** new features and enhancements
- ❤️ **Revive** the CAP community

### How do I install it?

Check the **[Installation Guide](./INSTALLATION.md)** for detailed instructions. Quick version:
1. Subscribe on [Steam Workshop](#) or download from [GitHub Releases](#)
2. Restart Garry's Mod
3. Find CAP entities in your spawn menu
4. Start building!

### Where can I get help?

- 📖 **Read the docs first**: [FAQ](./FAQ.md) | [E2 Guide](./E2_GUIDE.md) | [Wiki](https://github.com/RafaelDeJongh/cap/wiki)
- 🐛 **Found a bug?** [Open an Issue](https://github.com/QuentinMarical/cap/issues)
- 💬 **Have questions?** [GitHub Discussions](https://github.com/QuentinMarical/cap/discussions)
- 🔒 **Security issue?** See [SECURITY.md](./SECURITY.md)

### Can I contribute?

**Absolutely!** We welcome contributions of all kinds:
- 🐛 Bug fixes and improvements
- 📝 Documentation enhancements
- 🎮 E2 script examples
- 🎨 Models, textures, or sounds
- 💡 Feature suggestions

See **[CONTRIBUTING.md](./CONTRIBUTING.md)** to get started!

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

## 🎮 Features Overview

### 🌀 Stargates
- **9 Gate Variants**: Milky Way, Pegasus, Universe, Movie, Orlin, Tollan, Infinity, Supergate, Asuran
- **Full Dialing System**: DHD support, manual dial computers, address books
- **Iris & Shield Systems**: Protect your gates from unwanted travelers
- **Kawoosh Effects**: Movie-accurate event horizon animations

### 🛡️ Defense Systems
- **Shield Cores**: Protect bases and ships with energy shields
- **Ancient Drones**: Automated defense weapons
- **Iris Control**: Classic SGC iris protection
- **Weapon Systems**: Staff weapons, Zats, P90s, and more

### ⚡ Power Systems
- **ZPM Technology**: Zero Point Modules for massive power
- **Naquadah Generators**: Reliable power sources
- **ZPM Hubs**: Connect multiple ZPMs for distributed power
- **Power Distribution**: Wire power to gates, shields, and devices

### 🚀 Vehicles & Ships
- **Puddle Jumpers**: Ancient transport with cloaking and drones
- **F-302 Fighters**: Earth's space superiority fighters
- **Daedalus-class**: Capital ships with hyperspace
- **Wraith Darts**: Enemy craft with unique abilities
- **Goa'uld Ships**: Death Gliders, Tel'taks, Ha'taks, and more

### 🔧 Technology
- **Ring Transporters**: Teleport between locations
- **Ancient Control Panels**: Interface with Ancient technology
- **Asgard Beam**: Transport items and players
- **Cloaking Devices**: Hide your constructions
- **Hyperspace Drives**: Travel between systems

### 💻 Wire & E2 Integration
- **Full Wiremod Support**: Wire gates, shields, ships, and more
- **Expression 2 Compatible**: Script automated systems
- **Starfall Support**: Advanced scripting capabilities
- **[E2 Examples Included](./examples/)**: Ready-to-use scripts for common tasks

---

## 🚀 Quick Start

### Installation
See detailed instructions in [INSTALLATION.md](./INSTALLATION.md)

### Basic Usage

1. **Spawn a Stargate**: Find it in the spawn menu under "Carter Addon Pack"
2. **Dial an Address**: Use a DHD or dial computer
3. **Power It Up**: Connect a ZPM or naquadah generator
4. **Protect It**: Add an iris or shield core

### Example Scripts

Check out the **[examples/](./examples/)** folder for:
- 🌀 Automatic gate dialing systems
- 🛡️ Advanced shield management
- ⚡ ZPM monitoring and power grids
- 🚀 Vehicle autopilot and control
- 🎯 Weapon automation

---

## 📚 Documentation

- **[Installation Guide](./INSTALLATION.md)** - How to install CAP
- **[FAQ](./FAQ.md)** - Common questions and answers
- **[Changelog](./CHANGELOG.md)** - Version history and updates
- **[Contributing Guide](./CONTRIBUTING.md)** - How to contribute
- **[E2 Examples](./examples/)** - Ready-to-use Expression 2 scripts
- **[Wiki](https://github.com/RafaelDeJongh/cap/wiki)** - Complete documentation

---

## 🌟 Community & Resources

### Useful Links
- **Original CAP**: [RafaelDeJongh/cap](https://github.com/RafaelDeJongh/cap)
- **CAP Wiki**: https://github.com/RafaelDeJongh/cap/wiki
- **This Fork**: [QuentinMarical/cap](https://github.com/QuentinMarical/cap)
- **Expression 2 Scripts**: https://github.com/mouuff/Garry-s-mod-E2
- **Wiremod Documentation**: https://github.com/wiremod/wire/wiki

### Get Help & Support

**Before asking for help, please check:**
1. 📖 [FAQ.md](./FAQ.md) - Common questions answered
2. 🎮 [E2_GUIDE.md](./E2_GUIDE.md) - Expression 2 integration help
3. 📚 [CAP Wiki](https://github.com/RafaelDeJongh/cap/wiki) - Complete documentation
4. 🔍 [Existing Issues](https://github.com/QuentinMarical/cap/issues) - Your problem might be known

**Still need help?**
- 🐛 **Bug Reports**: [Open an Issue](https://github.com/QuentinMarical/cap/issues/new) with details
- 💬 **Questions**: [GitHub Discussions](https://github.com/QuentinMarical/cap/discussions)
- 🔒 **Security Issues**: Follow [SECURITY.md](./SECURITY.md) guidelines
- 🤝 **Contributing**: Read [CONTRIBUTING.md](./CONTRIBUTING.md)

**When reporting issues, include:**
- GMod version
- CAP version (from `addon.json` or Git commit)
- Steps to reproduce
- Console errors (if any)
- Screenshots or videos (if applicable)

---

## 🎯 Roadmap

### Completed ✅
- [x] Complete GMod 13+ API migration (171 files)
- [x] Fix all Lua syntax errors (41 fixes)
- [x] Enhanced documentation
- [x] Git workflow improvements
- [x] Expression 2 example scripts
- [x] GitHub infrastructure & templates
- [x] Security policy
- [x] Community code of conduct

### In Progress 🚀
- [ ] GitHub Actions CI/CD workflows
- [ ] Automated code quality checks
- [ ] Security scanning

### Planned 🔜
- [ ] 10+ additional E2 scripts
- [ ] Video tutorials
- [ ] StarFall examples
- [ ] Community showcase
- [ ] Performance optimizations
- [ ] Web-based tools (address calculator, base planner)
- [ ] API reference documentation

**See [ROADMAP.md](./ROADMAP.md) for detailed timeline and future plans!**

---

## 👥 Credits

### Original Team
- **Rafaël De Jongh** - Lead Developer
- **Madman07** - Core Developer
- **Llapp** - Developer
- **locotus_1** - Developer
- **AlexALX** - Developer

### This Fork
- **Quentin Marical** - Maintainer (API migration, fixes, docs)

### Special Thanks
- All contributors and testers
- The Stargate community
- Wiremod team

See [CREDITS.md](./CREDITS.md) for complete credits.

---

## 📜 License

See [LICENSE.md](./LICENSE.md) for licensing information.

---

**⭐ If you enjoy CAP, consider starring this repository!**

*Made with ❤️ for the Stargate and Garry's Mod communities*

**Maintained by**: Quentin Marical ([@QuentinMarical](https://github.com/QuentinMarical))  
**Based on**: Carter Addon Pack by RafaelDeJongh and contributors  
**Last Updated**: December 3, 2025
