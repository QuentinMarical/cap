# Changelog

Toutes les modifications notables apportées au Carter Addon Pack depuis le fork initial.

## [Unreleased] - 2025-12-03

### 🔄 Migration majeure des APIs de réseautage

#### Contexte
Migration complète de l'ancien système `Set/GetNetworked*` (déprécié dans GMod 13+) vers le système moderne `Set/GetNW*` à travers toute la codebase. Cette migration améliore la compatibilité avec les versions récentes de Garry's Mod et suit les meilleures pratiques recommandées.

#### Fichiers impactés (171 fichiers)
**Entités Stargate:**
- `stargate_base/` (init, cl_init, modules/lib, modules/wire_lib)
- `stargate_universe/` (init, cl_init) - chevrons, SpinNumber, ChevronBool, GateLights
- `stargate_atlantis/init.lua` - chevrons
- `stargate_movie/init.lua` - ChevAnim
- `stargate_orlin/` (init, cl_init) - timer, chevrons
- `stargate_tollan/` (init, cl_init) - chevrons
- `stargate_infinity/init.lua` - chevrons
- `stargate_sg1/init.lua` - chevrons
- `stargate_supergate/` (init, cl_init) - chevrons
- `stargate_asuran.lua` - health, containment, beamsound, player entities

**Systèmes de boucliers:**
- `shield_core/` (init, cl_init, shared) - Kill, Size, Ang, Pos, Col, Mod, MenuData, HUD_Enable, HUD_Percent, ShouldClip, depleted, Shield Own/Immunity, dupeInfo
- `shield_core_buble/` (init, cl_init, shared) - TraceSize, SC_Owner, depleted
- `ship_shield/` (init, cl_init) - shield_jumper_open, depleted
- `shield_generator.lua` - shield_color
- `shield/` (init, cl_init) - TraceSize, depleted
- `tokra_shield/` (init, cl_init) - DoClientSide

**Systèmes ZPM:**
- `zpm_mk3.lua` - zpmyellowlightalpha, ZPM entity, add string
- `zpmhub.lua` - netid, range, DrawText, add, ZPMA/ZPMB/ZPMC entities
- `sgc_zpm_hub.lua` - références ZPM
- `asuran_zpm_hub.lua` - références ZPM

**Véhicules:**
- `puddle_jumper/` (init, cl_init, server/sv_control, server/sv_toggles)
- `sg_vehicle_f302/` (init, cl_init)
- `sg_vehicle_daedalus/` (init, cl_init)
- `sg_vehicle_dart.lua`
- `sg_vehicle_shuttle.lua`
- `sg_vehicle_teltac.lua`
- `sg_vehicle_glider.lua`
- `sg_vehicle_gate_glider.lua`
- `sg_vehicle_base.lua`

**Armes et combat:**
- `asuran_gate_weapon.lua` - isActive, isFiring, localGate, remoteGate, SmallBeam, outBeam
- `gate_overloader.lua`
- Tous les fichiers `weapons/` (fnp90, staff_weapon, zat, hand_device, etc.)
- `chair_drone.lua`, `mini_drone.lua`, `minidrone_key_ent.lua`
- `drone.lua`, `drone_launcher.lua`
- `302missile.lua`, `302turret.lua`

**Transporteurs et téléportation:**
- `atlantis_transporter/` (init, cl_init)
- `ring_base/` (init, cl_init)
- `ring_panel*.lua` (ancient, goauld, ori)
- `transporter.lua`
- `event_horizon/` (init, cl_init, modules/collision, modules/teleport)

**DHD et contrôles:**
- `dhd_base/` (init, cl_init, shared)
- `dhd_city.lua`
- `control_panel.lua`
- `control_chair.lua`
- `ancient_control_panel.lua`
- `destiny_console/` (init, cl_init)
- `destiny_timer.lua`

**Effets visuels:**
- `effects/cloaking.lua` - cloak_color
- `effects/ag3_beams.lua` - Sat1 entity
- `effects/unstable.lua` - remoteGate entity
- `effects/zat_tracer.lua` - zat entity
- Tous les effets de bouclier (shield_core_*, shield_hit, shield_engage, etc.)
- Effets d'énergie (energy_beam, energy_laser_2p, etc.)

**Entités diverses:**
- `ori_satellite.lua` - shield_color
- `wraith_bomb.lua` - shield_color, StunRagdoll
- `ship_hangar.lua` - health
- `shield_identifier.lua` - GModOverlayText
- `sgc_server.lua` - SGU_FIND_RANDE
- `ag_3.lua`
- `molecular_construction_device/` (init, cl_init)
- Toutes les entités technologiques (naquadah_generator, black_hole_power, bearing, etc.)

**Systèmes serveur:**
- `stargate/server/entity.lua` - GateSpawnerSpawned
- `stargate/server/convars.lua` - GateSpawnerProtected
- `stargate/server/init.lua` - Address resend
- `stargate/server/spawner.lua` - modernisation du code
- `stargate/server/wire_rd.lua` - références d'entités
- `stargate/server/cap.lua` - vérifications d'entités

**Interfaces et menus:**
- `stargate/vgui/jumper.lua`
- `stargate/vgui/stargatemenus.lua`
- `stargate/client/menu.lua`
- `stargate/client/keyboard.lua` (232 lignes modifiées)

**Outils:**
- `gmod_tool/stools/staff_weapon.lua` - shaft bool
- `gmod_tool/stools/gravitycontroller.lua`
- `gmod_tool/stools/shield_door.lua`
- `gmod_tool/stools/wraith_harvester.lua`

#### Détails techniques

**Migrations Set/GetNetworked* → Set/GetNW*:**
- `SetNetworkedString` → `SetNWString`
- `GetNetworkedString` → `GetNWString`
- `SetNetworkedInt` → `SetNWInt`
- `GetNetworkedInt` → `GetNWInt`
- `SetNetworkedBool` → `SetNWBool`
- `GetNetworkedBool` → `GetNWBool`
- `SetNetworkedEntity` → `SetNWEntity`
- `GetNetworkedEntity` → `GetNWEntity`
- `SetNetworkedVector` → `SetNWVector`
- `GetNetworkedVector` → `GetNWVector`
- `SetNetworkedAngle` → `SetNWAngle`
- `GetNetworkedAngle` → `GetNWAngle`

**Commentaires:**
- Tous les commentaires contenant des références aux anciennes APIs ont été mis à jour pour refléter les nouvelles APIs NW
- Préservation de l'historique de développement via les commentaires mis à jour

**Statistiques:**
- 2381 insertions
- 2047 suppressions
- ~200 occurrences actives converties
- 13 références dans les commentaires mises à jour

### 🐛 Corrections de syntaxe Lua

**Fichiers corrigés (8 fichiers, 41 erreurs):**

#### `lua/autorun/a_gmod13.lua` (1 erreur)
- Ligne 4: `Gmod13Lib!=nil` → `Gmod13Lib~=nil`

#### `lua/stargate/shared/capcheck.lua` (20 erreurs)
- Ligne 160: `k!=1` → `k~=1`
- Ligne 230: `GetAddonList!=nil` → `GetAddonList~=nil`
- Lignes multiples (18×): `status != "Error"` → `status ~= "Error"`
- Ligne 450: `cl!=nil` → `cl~=nil`

#### `lua/stargate/server/cap.lua` (2 erreurs)
- Ligne 49: `type(pos)!="Vector"` → `type(pos)~="Vector"`
- Ligne 66: `own!=CPPI_DEFER` → `own~=CPPI_DEFER`

#### `lua/entities/stargate_base/init.lua` (1 erreur)
- Ligne 81: `classes!=""` → `classes~=""`

#### `lua/stargate/server/spawner.lua` (7 erreurs)
- Opérateurs `!=` remplacés par `~=` dans les conditions de spawning
- Corrections des vérifications de materials et classes d'entités

#### `lua/stargate/client/menu.lua` (5 erreurs)
- Lignes 89-91, 95, 200-201, 220: `!obj.*` → `not obj.*` ou `obj.*~=""`

#### `lua/stargate/client/keyboard.lua` (1 erreur)
- Ligne 23: `name!=""` → `name~=""`

**Types d'erreurs:**
- Opérateur `!=` incorrect → `~=` (37 occurrences)
- Opérateur `!` incorrect → `not` (4 occurrences)

### 🔧 Infrastructure et tooling

#### Ajout de `.gitignore` complet
Nouvelles exclusions pour un environnement de développement propre:

**VS Code:**
- `.vscode/`
- `*.code-workspace`

**Logs et temporaires:**
- `*.log`
- `*.tmp`
- `*.temp`
- `*.cache`

**Lua:**
- `*.luac`
- `*.bak`
- `lua/bin/`

**Garry's Mod:**
- `data/`
- `downloads/`
- `cache/`
- `*.vpk`
- `*.vtf` (hors materials/)
- `*.vmt` (hors materials/)
- `screenshots/`
- `demos/`

**Système:**
- `.DS_Store`
- `Thumbs.db`
- `desktop.ini`

#### Hook Git pre-commit
Nouveau hook dans `.githooks/pre-commit` bloquant automatiquement:
- Fichiers compilés Lua (`.luac`)
- Logs (`.log`)
- Fichiers temporaires (`.tmp`, `.temp`, `.bak`)
- Caches (`.cache`)

**Activation:**
```bash
git config core.hooksPath .githooks
```

#### Documentation de contribution
Nouveau fichier `CONTRIBUTING.md` définissant:

**Workflow Git:**
- Travail sur `master` ou branches feature (`feature/...`)
- Pull en rebase systématique (`git pl`)
- Commits signés SSH (clé `id_ed25519`)

**Convention de messages:**
- `feat:` - nouvelles fonctionnalités
- `fix:` - corrections de bugs
- `chore:` - maintenance, config, CI
- `docs:` - documentation

**Alias Git utiles:**
```bash
git st    # statut court
git lg    # log graphique
git co    # commit
git br    # branches détaillées
git pl    # pull rebase
git last  # dernier commit avec signature
```

### 📝 Documentation

#### Création de `CORRECTIONS.md`
- Documentation complète des 41 corrections de syntaxe
- Liste détaillée fichier par fichier
- Statistiques des types d'erreurs
- Impact et résolution

#### Mise à jour de `CONTRIBUTING.md`
- Workflow Git standardisé
- Hooks pre-commit configurés
- Conventions de commit établies
- Alias Git productifs

### 🔍 Validation et tests

**Tests suggérés pour validation en jeu:**

**Stargates:**
- Ouverture/fermeture de tous les types (SG-1, Atlantis, Universe, etc.)
- Animation des chevrons (`ChevronBool` côté client)
- Transmission des adresses (`Address` NW string)
- États de dial (SpinNumber, timer)

**Boucliers:**
- Activation/désactivation shield_core
- HUD bouclier (`HUD_Enable`, `HUD_Percent`)
- État `depleted` côté client
- Ouverture/fermeture ship_shield
- Couleurs bouclier (`shield_color`)

**ZPM Hub:**
- Affichage HUD
- Champs `netid`, `range`, `DrawText`
- Insertion/retrait ZPM A/B/C
- Indicateurs visuels (alpha)

**Arme Asuran:**
- Armement et détection porte distante
- Démarrage/arrêt tir
- Entités beam (`SmallBeam`, `outBeam`)
- Sons et jamming DHD

**Outils:**
- Staff weapon toggle `shaft`
- Autres stools modifiés

**Divers:**
- Ring panels (ADDRESS)
- Shield identifier (GModOverlayText)
- Wraith bomb (couleur, ragdoll stun)
- Véhicules (Puddle Jumper, F302, etc.)

## [2024-11-28] - Commit initial fork

### 🎉 Fork du dépôt original
- Fork depuis `RafaelDeJongh/cap` commit `eaabe44`
- Base: Rev 499.5 Update avec corrections multi-addons
- Configuration initiale SSH et GPG

---

## Légende

- 🔄 Migration/Refactoring majeur
- 🐛 Corrections de bugs
- 🔧 Infrastructure et tooling
- 📝 Documentation
- 🎉 Nouveautés majeures
- 🔍 Tests et validation

---

**Format:** [Sémantique de versioning](https://semver.org/)  
**Maintenance:** Quentin Marical (@QuentinMarical)  
**Dépôt:** https://github.com/QuentinMarical/cap
