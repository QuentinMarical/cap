# Expression 2 Integration Guide

## 📖 What is Expression 2?

Expression 2 (E2) is a powerful scripting language for Garry's Mod through Wiremod that allows you to create complex automated systems, interactive displays, and custom control interfaces. CAP has full integration with E2, allowing you to programmatically control gates, shields, ships, and more!

## 🎯 Why Use E2 with CAP?

- **Automation**: Create automatic dialing sequences, auto-repair shields, automated defenses
- **Custom Interfaces**: Build custom DHDs, control panels, and status displays
- **Smart Systems**: Power management, threat detection, automated responses
- **Ship Control**: Autopilot systems, targeting computers, navigation
- **Integration**: Connect multiple CAP systems together seamlessly

## 🚀 Getting Started

### Prerequisites
1. **Wiremod** must be installed (CAP includes wire support)
2. **Carter Addon Pack** installed and working
3. Basic understanding of Garry's Mod building

### Your First E2 Script

1. Open your spawn menu in GMod
2. Navigate to **Wiremod → Gates & Memory → Expression 2**
3. Spawn an Expression 2 chip
4. Right-click the chip and select **"Open Editor"**
5. Copy one of the example scripts from the `examples/` folder
6. Click **"Upload to Chip"**

## 📋 Wire Integration

### Common Wire Inputs/Outputs

Most CAP entities expose these wire inputs and outputs:

#### Stargates
```lua
# Inputs
Gate["Dial", string] = "ABCDEFG"  # Dial an address
Gate["Activate", number] = 1      # Open/close gate
Gate["IrisState", number] = 1     # Open/close iris

# Outputs
IsActive = Gate["Active", number]     # Is gate active?
Address = Gate["Address", string]     # Current address
ChevronCount = Gate["Chevrons", number]  # Chevrons encoded
```

#### Shields
```lua
# Inputs
Shield["Activate", number] = 1    # Turn on/off
Shield["Recharge", number] = 1    # Force recharge

# Outputs
Health = Shield["Health", number]
MaxHealth = Shield["MaxHealth", number]
IsActive = Shield["Active", number]
```

#### ZPMs
```lua
# Outputs
Power = ZPM["Power", number]
MaxPower = ZPM["MaxPower", number]
Percentage = ZPM["Percentage", number]
IsConnected = ZPM["Connected", number]
```

#### Ships (Puddle Jumper, F-302, etc.)
```lua
# Inputs
Ship["Throttle", number] = 0.5    # 0-1 throttle
Ship["Pitch", number] = 0.5       # -1 to 1
Ship["Yaw", number] = 0.5         # -1 to 1
Ship["Roll", number] = 0.5        # -1 to 1
Ship["FireWeapon", number] = 1    # Fire weapons

# Outputs
Speed = Ship["Speed", number]
Altitude = Ship["Altitude", number]
Fuel = Ship["Fuel", number]
```

## 💡 Example Use Cases

### 1. Auto-Dialer System
Create a gate that automatically dials a sequence of addresses.
```lua
# See: examples/stargate_auto_dialer.txt
```

### 2. Power Management
Monitor multiple ZPMs and balance power distribution.
```lua
# See: examples/zpm_monitor.txt
```

### 3. Base Defense
Automatically activate shields when threats are detected.
```lua
# See: examples/shield_manager.txt
```

### 4. Ship Autopilot
Create waypoint-based navigation for ships.
```lua
# See: examples/f302_autopilot.txt (coming soon)
```

### 5. Custom DHD
Build your own gate control interface with screens and buttons.
```lua
# See: examples/stargate_dhd_emulator.txt (coming soon)
```

## 🔧 Advanced Techniques

### Multi-Gate Networks
Control multiple gates from a single E2:
```lua
@inputs Gate1:entity Gate2:entity Gate3:entity
@outputs NetworkStatus:string

# Track which gates are active
# Route incoming travelers
# Coordinate dialing sequences
```

### Smart Shield Systems
Create shields that adapt to threats:
```lua
# Monitor damage types
# Adjust power allocation
# Auto-repair when safe
# Alert defenses
```

### Power Grids
Connect multiple power sources:
```lua
# Load balancing
# Failover systems
# Priority allocation
# Efficiency monitoring
```

## 📚 E2 Resources

### Learning E2
- **E2 Documentation**: https://github.com/wiremod/wire/wiki/Expression-2
- **E2 Tutorials**: Search "Expression 2 tutorial" on YouTube
- **Community Scripts**: https://github.com/mouuff/Garry-s-mod-E2

### CAP-Specific
- **Examples Folder**: [/examples/](../examples/)
- **CAP Wiki**: https://github.com/RafaelDeJongh/cap/wiki
- **Wire Integration**: Check individual entity pages on wiki

## 🎓 Tips & Best Practices

### Performance
- ⚡ Use timers instead of running code every tick
- ⚡ Cache entity references (don't search every frame)
- ⚡ Limit EGP/screen updates to necessary intervals
- ⚡ Use `@trigger` to run code only when inputs change

### Debugging
- 🐛 Use `print()` to output debug info to console
- 🐛 Check entity validity with `:isValid()` before accessing
- 🐛 Use `timer()` names that describe what they do
- 🐛 Comment your code for future reference

### Organization
- 📁 Use `@persist` for variables that need to survive restarts
- 📁 Group related inputs/outputs together
- 📁 Add header comments explaining what the script does
- 📁 Include wiring instructions in comments

### Safety
- ⚠️ Always validate inputs before using them
- ⚠️ Add safeguards for critical systems (shields, power)
- ⚠️ Test in single-player before deploying on servers
- ⚠️ Respect server rules about automated systems

## 🔍 Troubleshooting

### "Wire input not found"
Make sure the entity supports wire inputs. Not all CAP entities have wire support (yet).

### "Entity not valid"
The entity may have been removed or the E2 chip is too far away. Check entity references.

### Script doesn't run
- Check for syntax errors in the E2 editor
- Make sure `@trigger` inputs are wired correctly
- Verify the entity is spawned and valid

### Performance issues
- Reduce update frequency (use longer timer intervals)
- Simplify calculations and logic
- Remove unnecessary EGP elements
- Check server settings for E2 limitations

## 🤝 Contributing Examples

Have a cool E2 script for CAP? Share it!

1. Test your script thoroughly
2. Add clear comments and wiring instructions
3. Save as `.txt` file in `examples/` folder
4. Update the `examples/README.md`
5. Submit a pull request

## 📞 Get Help

- 💬 **GitHub Discussions**: Ask questions and share scripts
- 🐛 **Issues**: Report bugs or request features
- 📖 **Wiki**: Check the documentation first
- 🌐 **Community**: GMod forums and Discord servers

---

**Ready to start scripting?** Check out the [examples folder](../examples/) for ready-to-use scripts!

*Happy scripting! 🚀*
