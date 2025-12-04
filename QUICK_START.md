╔════════════════════════════════════════════════════════════════════════════╗
║                     CARTER ADDON PACK - QUICK START                        ║
║                                                                            ║
║                    🌟 Modern Fork with Full Documentation 🌟               ║
╚════════════════════════════════════════════════════════════════════════════╝

Welcome! This guide will get you started with the Carter Addon Pack in 5 minutes.

═══════════════════════════════════════════════════════════════════════════════

⚡ 5-MINUTE QUICK START
═══════════════════════════════════════════════════════════════════════════════

1. INSTALL (2 minutes)
   ├─ Download: github.com/QuentinMarical/cap
   ├─ Extract: steam/steamapps/common/GarrysMod/garrysmod/addons/
   ├─ Folders: cap/ and cap_resources/
   └─ Restart: Garry's Mod

2. VERIFY (1 minute)
   ├─ Start: Garry's Mod
   ├─ Create: New game/server
   ├─ Check: Console for no errors
   └─ Success: Stargate-related entities appear in Q menu

3. EXPLORE (2 minutes)
   ├─ Browse: Tools menu for stargate items
   ├─ Read: F1 → Documentation → README
   ├─ Check: Examples folder for E2 scripts
   └─ Have fun: Build your first stargate!

═══════════════════════════════════════════════════════════════════════════════

❓ COMMON QUESTIONS
═══════════════════════════════════════════════════════════════════════════════

Q: What is the Carter Addon Pack?
A: A comprehensive Garry's Mod addon adding Stargate content including gates,
   ships, weapons, shields, and full automation support via Expression 2.

Q: Do I need Wiremod?
A: Optional. Wiremod enables advanced automation with Expression 2 scripts.
   The addon works without it but with reduced features.

Q: What are E2 scripts?
A: Expression 2 (E2) allows non-programmers to create complex logic for
   Stargate automation. See E2_GUIDE.md for complete tutorial.

Q: Is this fork maintained?
A: Yes! This is an actively maintained fork with modern practices, CI/CD
   automation, and a 5-phase roadmap for ongoing improvements.

Q: How do I report bugs?
A: Use GitHub Issues with the bug template: github.com/QuentinMarical/cap/issues
   See SECURITY.md for security vulnerabilities.

Q: Can I contribute?
A: Absolutely! Read CONTRIBUTING.md for guidelines, or join our community.

═══════════════════════════════════════════════════════════════════════════════

📚 DOCUMENTATION ROADMAP
═══════════════════════════════════════════════════════════════════════════════

Choose your path:

👤 I'm a NEW USER
   Start with: README.md
   Then read: INSTALLATION.md
   Next: FAQ.md
   Try: examples/

👨‍💻 I'm a DEVELOPER
   Start with: DEVELOPMENT.md
   Read: CONTRIBUTING.md
   Check: E2_GUIDE.md for scripting
   Reference: DOCUMENTATION.md index

🤖 I want E2 AUTOMATION
   Start with: E2_GUIDE.md
   Browse: examples/SCRIPTS_OVERVIEW.md
   Try: examples/stargate_auto_dialer.txt (simplest)
   Reference: Wiremod wiki (external)

🛡️ I'm concerned about SECURITY
   Read: SECURITY.md
   Review: CODE_OF_CONDUCT.md
   Check: GitHub Actions status badge
   Verify: All latest patches applied

📋 I want to CONTRIBUTE
   Read: CONTRIBUTING.md
   Review: CODE_OF_CONDUCT.md
   Check: GitHub Issues for ideas
   Submit: Using templates provided

═══════════════════════════════════════════════════════════════════════════════

🎯 CORE FEATURES
═══════════════════════════════════════════════════════════════════════════════

🚪 Stargates
   • Multiple gate types (Atlantis, Giza, Pegasus)
   • Automatic address dialing
   • Kawoosh effects
   • Stable wormholes

🛸 Vehicles
   • Puddle Jumpers with flight physics
   • Ring Transporters for beam tech
   • Drone defense systems
   • Customizable controls

🔋 Power Systems
   • ZPM (Zero Point Module) generators
   • Power distribution networks
   • Energy monitoring
   • Auto-shutdown on overload

🛡️ Defense Systems
   • Shield emitters
   • Auto-targeting systems
   • Energy weapon systems
   • Defensive automation

⚙️ Automation
   • Expression 2 scripting support
   • Wiremod integration
   • Complete API documentation
   • 7 ready-to-use example scripts

═══════════════════════════════════════════════════════════════════════════════

🎮 GETTING STARTED WITH STARGATES
═══════════════════════════════════════════════════════════════════════════════

Step 1: Spawn a Stargate
   ├─ Open: Q menu
   ├─ Navigate: Carter Addon Pack → Stargates
   ├─ Select: Giza class stargate (most forgiving)
   └─ Place: On flat ground

Step 2: Add a DHD (Dialing Device)
   ├─ Q menu: Carter Addon Pack → DHD Devices
   ├─ Place: Near your stargate
   ├─ Note: DHD must be within range of gate

Step 3: Test Dialing
   ├─ Right-click: On the DHD
   ├─ Wait: Gate spins up
   ├─ Watch: Kawoosh effect (wormhole forms)
   ├─ Success: Gate is operational!

Step 4: Understand Addressing
   ├─ Every gate has 7 symbols
   ├─ Dial: Different symbols for different destinations
   ├─ Use: Address reference chart (search online)
   └─ Tip: Create map-specific addresses for consistency

Step 5: Explore Advanced Features
   ├─ Add: Shields, power generators, weapons
   ├─ Automate: With E2 scripts (optional)
   ├─ Customize: Colors, effects, sounds
   └─ Create: Multi-gate networks

═══════════════════════════════════════════════════════════════════════════════

🎓 EXAMPLE E2 SCRIPTS INCLUDED
═══════════════════════════════════════════════════════════════════════════════

📍 Stargate Auto-Dialer (examples/stargate_auto_dialer.txt)
   Difficulty: BEGINNER
   Purpose: Automatically dials saved gate addresses
   Perfect for: Learning E2 basics, testing gates
   Lines: ~110

💾 ZPM Monitor (examples/zpm_monitor.txt)
   Difficulty: BEGINNER
   Purpose: Monitors ZPM power levels with display
   Perfect for: Power management, visual feedback
   Lines: ~130

🛡️ Shield Manager (examples/shield_manager.txt)
   Difficulty: INTERMEDIATE
   Purpose: Advanced shield control with auto-repair
   Perfect for: Base defense automation
   Lines: ~140

🔎 CAP Entity Finder (examples/cap_entity_finder.txt)
   Difficulty: BEGINNER
   Purpose: Scans and maps nearby CAP entities
   Perfect for: Network mapping, system inspection
   Lines: ~110

🎮 Puddle Jumper HUD (examples/puddle_jumper_hud.txt)
   Difficulty: INTERMEDIATE
   Purpose: Full flight HUD with displays
   Perfect for: Flight control, vehicle automation
   Lines: ~140

🔗 Teleporter Network (examples/teleporter_network.txt)
   Difficulty: INTERMEDIATE
   Purpose: Manages ring transporter network
   Perfect for: Multi-location transport
   Lines: ~140

🚁 Drone Launcher (examples/drone_launcher.txt)
   Difficulty: ADVANCED
   Purpose: Automated drone defense system
   Perfect for: Base security, automated defense
   Lines: ~160

═══════════════════════════════════════════════════════════════════════════════

📖 HOW TO USE EXAMPLE SCRIPTS
═══════════════════════════════════════════════════════════════════════════════

1. COPY THE SCRIPT
   ├─ Open: examples/[script_name].txt
   ├─ Copy: All content (Ctrl+A, Ctrl+C)
   └─ Note: Keep .txt extension

2. CREATE E2 CHIP IN-GAME
   ├─ Open: Q menu
   ├─ Find: Wiremod → Expression 2 (or Starfall)
   ├─ Spawn: E2 Chip
   └─ Position: Near your equipment

3. EDIT THE SCRIPT
   ├─ Right-click: On E2 chip
   ├─ Select: Edit
   ├─ Paste: Script content (Ctrl+V)
   ├─ Verify: No red errors
   └─ Save: Ctrl+S

4. CONFIGURE FOR YOUR SETUP
   ├─ Read: Comments in script (@name, @inputs)
   ├─ Adjust: Entity references
   ├─ Connect: Wiremod ports
   ├─ Test: With simple input first
   └─ Debug: Check E2 chat for messages

5. RUN AND MONITOR
   ├─ Enable: Toggle chip on/off
   ├─ Monitor: Visual feedback (HUD, displays)
   ├─ Adjust: Settings based on performance
   ├─ Optimize: For your specific setup
   └─ Enjoy: Automated stargate magic!

═══════════════════════════════════════════════════════════════════════════════

⚠️ SYSTEM REQUIREMENTS
═══════════════════════════════════════════════════════════════════════════════

Garry's Mod:
  ✅ Requires: Garry's Mod (GMod 13+)
  ✅ Version: Latest recommended
  ✅ Platform: Windows, Mac, Linux

Required Addons:
  ✅ cap/ - Main Carter Addon Pack code
  ✅ cap_resources/ - Models, textures, sounds

Optional Addons:
  ℹ️  Wiremod - For E2 automation (recommended)
  ℹ️  Spacebuild - For advanced systems
  ℹ️  PHX - For additional props
  ℹ️  Wire mod extensions - For extra functionality

Performance:
  • CPU: Multi-core recommended
  • RAM: 4GB+ recommended
  • VRAM: 2GB+ for textures
  • Storage: 2GB free for addons

═══════════════════════════════════════════════════════════════════════════════

🔧 TROUBLESHOOTING
═══════════════════════════════════════════════════════════════════════════════

Q: Addon doesn't show up in game
A: • Verify both cap/ and cap_resources/ in addons folder
  • Check: No spaces in folder names
  • Restart: Garry's Mod completely
  • Console: search "cap_ver" for debug info

Q: Models/textures are missing (pink checkerboard)
A: • Verify: cap_resources/ folder is installed
  • Check: File permissions are correct
  • Reinstall: Clean download of resources
  • Update: Graphics drivers

Q: E2 scripts don't work
A: • Verify: Wiremod is installed
  • Check: No red errors in E2 editor
  • Confirm: Entity references are correct
  • Debug: Use print() for testing

Q: Performance issues
A: • Reduce: Number of active stargates
  • Disable: Unused E2 scripts
  • Lower: Effect quality settings
  • Monitor: Server console for errors

Q: Multiplayer issues
A: • Verify: All players have addon installed
  • Check: Server ConVars are consistent
  • Ensure: cap_resources synchronized
  • Review: Lua errors in server console

═══════════════════════════════════════════════════════════════════════════════

🌍 COMMUNITY & SUPPORT
═══════════════════════════════════════════════════════════════════════════════

GitHub Repository:
  🔗 github.com/QuentinMarical/cap
  ├─ Issues: Report bugs and suggest features
  ├─ Discussions: Ask questions and share creations
  ├─ Wiki: Community guides and documentation
  └─ Releases: Download latest version

Discord Communities:
  🎮 Garry's Mod Communities:
     Various servers with addon support
  🌐 Official: Check repository for links

Contributing:
  💡 Submit E2 scripts: Use ISSUE_TEMPLATE/e2_script_submission.md
  📝 Report bugs: Use ISSUE_TEMPLATE/bug_report.md
  🚀 Suggest features: Use ISSUE_TEMPLATE/feature_request.md
  ✍️  Improve docs: Submit pull requests

═══════════════════════════════════════════════════════════════════════════════

📋 NEXT STEPS
═══════════════════════════════════════════════════════════════════════════════

☐ Step 1: Install addon (if not done)
☐ Step 2: Read README.md for overview
☐ Step 3: Check FAQ.md for common questions
☐ Step 4: Follow INSTALLATION.md for setup
☐ Step 5: Spawn first stargate in sandbox
☐ Step 6: Try one example E2 script
☐ Step 7: Join community and share creations
☐ Step 8: Bookmark github.com/QuentinMarical/cap for updates

═══════════════════════════════════════════════════════════════════════════════

🎉 YOU'RE ALL SET!
═══════════════════════════════════════════════════════════════════════════════

The Carter Addon Pack is now installed and ready to use.

Start by spawning a stargate and enjoy the Stargate experience in Garry's Mod!

Questions? Check DOCUMENTATION.md for complete index.
Need help? See community links above.
Want to contribute? Read CONTRIBUTING.md.

Have fun! 🚀

═══════════════════════════════════════════════════════════════════════════════

For more information:
  📖 README.md - Main overview
  🚀 INSTALLATION.md - Detailed setup
  ❓ FAQ.md - Common questions
  📚 DOCUMENTATION.md - Complete index
  💻 DEVELOPMENT.md - Developer guide
  🤖 E2_GUIDE.md - Scripting tutorial
  🛣️  ROADMAP.md - Future plans

═══════════════════════════════════════════════════════════════════════════════

Version: 3.0-Modernized
Date: December 4, 2025
Repository: github.com/QuentinMarical/cap

═══════════════════════════════════════════════════════════════════════════════
