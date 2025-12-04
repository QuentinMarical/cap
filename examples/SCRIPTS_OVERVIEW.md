# 🎮 Expression 2 Scripts Overview

This document provides a quick reference of all available E2 scripts for the Carter Addon Pack.

---

## 📊 Scripts by Category

### 🌀 Stargate Control (1 script)

| Script | Difficulty | Features | Lines |
|--------|-----------|----------|-------|
| `stargate_auto_dialer.txt` | ⭐⭐ Intermediate | Address book, automatic dialing, status monitoring | ~110 |

**Use when:** You want to automate gate dialing or create a quick-dial system

---

### 🛡️ Shield Management (1 script)

| Script | Difficulty | Features | Lines |
|--------|-----------|----------|-------|
| `shield_manager.txt` | ⭐⭐⭐ Advanced | Health monitoring, auto-repair, damage alerts, manual controls | ~140 |

**Use when:** You need advanced shield control with automatic maintenance

---

### ⚡ Power Systems (1 script)

| Script | Difficulty | Features | Lines |
|--------|-----------|----------|-------|
| `zpm_monitor.txt` | ⭐⭐⭐ Advanced | Multi-ZPM monitoring, EGP display, power bars, status alerts | ~130 |

**Use when:** Managing multiple ZPMs or displaying power status visually

---

### 🚀 Vehicle Systems (1 script)

| Script | Difficulty | Features | Lines |
|--------|-----------|----------|-------|
| `puddle_jumper_hud.txt` | ⭐⭐⭐ Advanced | Speed/altitude, fuel/drones, shield/cloak status, EGP HUD | ~140 |

**Use when:** You want an immersive HUD for Puddle Jumper operations

---

### 🎯 Defense Systems (1 script)

| Script | Difficulty | Features | Lines |
|--------|-----------|----------|-------|
| `drone_launcher.txt` | ⭐⭐⭐⭐ Expert | Threat detection, auto-defense, manual control, multi-drone | ~160 |

**Use when:** Creating automated base defense with Ancient drones

---

### 🔧 Utilities (2 scripts)

| Script | Difficulty | Features | Lines |
|--------|-----------|----------|-------|
| `cap_entity_finder.txt` | ⭐⭐ Intermediate | Radius scanning, entity cataloging, console output | ~110 |
| `teleporter_network.txt` | ⭐⭐⭐ Advanced | Multi-ring network, player detection, cooldowns | ~140 |

**Use when:** 
- Finding CAP entities in your build
- Creating ring transporter networks between locations

---

## 🎓 Difficulty Levels

- ⭐ **Beginner** - Simple wiring, minimal configuration
- ⭐⭐ **Intermediate** - Some configuration needed, basic E2 knowledge helpful
- ⭐⭐⭐ **Advanced** - Multiple inputs/outputs, may need customization
- ⭐⭐⭐⭐ **Expert** - Complex logic, requires good E2 understanding

---

## 📈 Feature Matrix

| Feature | Auto Dialer | Shield Mgr | ZPM Monitor | PJ HUD | Drone Defense | Entity Finder | Ring Network |
|---------|-------------|------------|-------------|--------|---------------|---------------|--------------|
| **Auto Operation** | ✅ | ✅ | ✅ | ✅ | ✅ | ❌ | ❌ |
| **EGP Display** | ❌ | ❌ | ✅ | ✅ | ❌ | ❌ | ❌ |
| **Multi-Entity** | ❌ | ❌ | ✅ | ❌ | ✅ | ✅ | ✅ |
| **Player Detection** | ❌ | ❌ | ❌ | ✅ | ❌ | ❌ | ✅ |
| **Status Alerts** | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| **Manual Control** | ✅ | ✅ | ❌ | ❌ | ✅ | ✅ | ✅ |
| **Timers Used** | ✅ | ✅ | ✅ | ✅ | ✅ | ❌ | ✅ |

---

## 🔌 Common Wiring Patterns

### Basic Entity Control
```
E2 Chip -> Entity (input)
Entity -> E2 Chip (for reading status)
Button -> E2 Chip (for triggering actions)
```

### With Display
```
E2 Chip -> EGP Screen (for visual output)
Entities -> E2 Chip (data sources)
```

### Multi-Entity Systems
```
Multiple Entities -> E2 Chip (monitoring/control)
E2 Chip -> Status Screen/Lights
Control Panel -> E2 Chip
```

---

## 💡 Quick Tips

### For Beginners
1. Start with `cap_entity_finder.txt` to learn basic E2 structure
2. Try `stargate_auto_dialer.txt` for simple automation
3. Read comments in each script carefully

### For Intermediate Users
1. Combine scripts (e.g., auto dialer + ZPM monitor)
2. Customize addresses, timers, and thresholds
3. Experiment with adding EGP displays

### For Advanced Users
1. Modify drone_launcher for custom defense logic
2. Create shield networks with multiple shield managers
3. Build complete base automation systems
4. Share your creations with the community!

---

## 🔄 Script Updates

**Current Version:** Initial Release (Dec 2025)
- 7 scripts covering major CAP systems
- All scripts tested and functional
- Full documentation included

**Planned Additions:**
- F-302 autopilot system
- Multi-gate network controller
- Custom DHD emulator
- Ship formation flying
- Base security system
- Resource management system

---

## 🤝 Contributing

Want to add your script to this collection?
1. Follow the template in `CONTRIBUTING.md`
2. Test thoroughly
3. Document well
4. Submit a PR!

---

## 📞 Need Help?

- **Documentation**: See [E2_GUIDE.md](E2_GUIDE.md) for detailed E2 info
- **Issues**: Report bugs or request features on GitHub
- **Examples**: Each script has usage instructions in comments
- **Community**: Share your creations and get help from others

---

**Total Scripts:** 7  
**Total Lines of Code:** ~930  
**Categories Covered:** 6  
**Tested:** ✅ All scripts functional

*Last updated: December 4, 2025*
