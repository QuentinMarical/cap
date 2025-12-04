# Changelog

Toutes les modifications notables apportées au Carter Addon Pack depuis le fork initial.

## [Unreleased] - 2025-12-04

### 🤖 Automation & CI/CD

#### GitHub Actions Workflows
Ajout de workflows automatisés pour l'assurance qualité:

**Nouveau fichier:**
- `.github/workflows/lint.yml` - Pipeline de contrôle qualité

**Contrôles inclus:**
- ✅ Vérification syntaxe Lua (luacheck)
- ✅ Détection APIs dépréciées (SetNetworked*)
- ✅ Validation fichiers documentation requis
- ✅ Vérification validité addon.json (JSON parsing)
- ✅ Structure répertoires requis
- ✅ Détection fichiers temporaires/logs
- ✅ Vérification scripts E2 et leurs headers
- ✅ Rapport de synthèse

**Exécution:**
- Automatic sur chaque push/PR sur `master`, `main`, `develop`
- Contrôles sur `lua/` et workflows eux-mêmes
- Continue on errors pour visibilité complète
- Email notifications en cas d'échec

**Avantages:**
- Prévention d'erreurs Lua en production
- Respect des standards APIs
- Documentation toujours à jour
- Structure projet garantie
- E2 scripts validés

#### Dépendabot Configuration
Automatisation des mises à jour de sécurité:

**Nouveau fichier:**
- `.github/dependabot.yml` - Configuration Dependabot

**Fonctionnalités:**
- 🔄 Vérification hebdomadaire des dépendances
- 🔒 Mises à jour de sécurité automatiques
- 🤖 Mises à jour GitHub Actions automatiques
- 📝 Commits avec préfixes standardisés
- 🏷️ Labeling automatique (dependencies, security)

**Bénéfices:**
- Sécurité: patches de vulnérabilités automatiques
- Maintenabilité: dépendances à jour
- Transparence: PR claires avec changelog

### 📚 Développement & Guides

#### Guide de Développement Local
Nouveau fichier pour les contributeurs:

**Nouveau fichier:**
- `DEVELOPMENT.md` - Guide complet de développement

**Contenu:**
- 🚀 Quick Start (5 minutes)
- 📂 Structure du projet expliquée
- 🔧 Configuration VS Code
- 🧪 Guide de test (GMod, E2, Lua)
- 📝 Standards de code (style, conventions)
- 🐛 Conseils de débogage
- 📚 Ressources d'apprentissage
- 🔄 Workflow Git expliqué
- 📋 Checklist contributeur
- 🎓 Ressources Lua/Git/GitHub

**Bénéfices:**
- Nouveaux développeurs peuvent démarrer rapidement
- Standards clairs et documentés
- Processus de contribution transparent
- Ressources d'apprentissage centralisées

#### Configuration EditorConfig
Standardisation du formatage du code:

**Nouveau fichier:**
- `.editorconfig` - Configuration d'éditeur unifiée

**Configurations:**
- Indentation Lua: 4 espaces
- JSON: 2 espaces
- YAML: 2 espaces
- Shell scripts: 2 espaces
- Encodage: UTF-8
- Fin de ligne: LF (Unix style)
- Nettoyage espaces traînants
- Nouvelle ligne finale

**Avantages:**
- Formatage cohérent entre contributeurs
- VS Code/Sublime/JetBrains supportent EditorConfig
- Pas de conflits de formatting
- Diffs plus propres

### 📊 Documentation Améliorée

#### Badges Dynamiques
Ajout de badges supplémentaires au README:

**Nouveaux badges:**
- ![Discord](https://img.shields.io/badge/chat-discord-7289da.svg?logo=discord)
- ![GitHub Issues](https://img.shields.io/github/issues/QuentinMarical/cap)
- ![GitHub Stars](https://img.shields.io/github/stars/QuentinMarical/cap)
- ![Last Commit](https://img.shields.io/github/last-commit/QuentinMarical/cap)

**Bénéfices:**
- Statut du projet plus visible
- Activité communautaire visible
- Liens directs vers ressources

#### Roadmap Détaillée
Fichier de planification long terme:

**Nouveau fichier:**
- `ROADMAP.md` - Feuille de route publique

**Contenu:**
- 🎯 Vision du projet
- 📅 5 phases sur 12 mois (Foundation ✅, Quality 🚀, Community 📚, Enhancement 🎮, Ecosystem 🌐)
- 🎯 Objectifs court/moyen/long terme
- 📊 Métriques de succès
- 🔄 Processus de contribution à la roadmap

**Phases:**
1. **Foundation (Dec 2025)** ✅ Complété
2. **Quality & Automation (Jan 2026)** 🚀 En cours
3. **Community & Examples (Feb 2026)** 📚 Planifié
4. **Enhancement & Features (Mar-Apr 2026)** 🎮 Planifié
5. **Website & Ecosystem (May 2026)** 🌐 Planifié

**Bénéfices:**
- Transparence: tout le monde voit les plans
- Direction claire du projet
- Possibilité de contribuer aux priorités
- Traçabilité des progrès

### 📈 Impacts Globaux

**Mises à jour cumulées:** ~250 lignes
- Workflows: ~150 lignes (lint.yml + dependabot.yml)
- Guide développement: ~600 lignes
- Roadmap: ~250 lignes
- EditorConfig: ~30 lignes
- README amélioré: ~10 lignes

**Qualité:**
- Automation: automatique sur chaque changement
- Dépendances: vérification hebdomadaire
- Documentation: toujours à jour
- Code: standards appliqués

**Communauté:**
- Contribution facilitée (guide clair)
- Transparence (roadmap publique)
- Direction connue (phases définies)

---

### 🔒 Security & Modern Standards

#### Security Policy
Ajout d'une politique de sécurité complète (`SECURITY.md`):

**Nouveau fichier:**
- `SECURITY.md` - Politique de sécurité et signalement de vulnérabilités

**Contenu:**
- 🔒 Guide de signalement privé des vulnérabilités
- 🛡️ Distinction entre problèmes de sécurité et bugs réguliers
- 📋 Liste des versions supportées
- 🎯 Meilleures pratiques de sécurité pour serveurs/joueurs/développeurs
- 📜 Politique de divulgation responsable
- 🏆 Hall of Fame pour les chercheurs en sécurité
- 📞 Canaux de contact appropriés

**Catégories de vulnérabilités couvertes:**
- Exécution de code à distance (RCE)
- Escalade de privilèges
- Accès non autorisé aux configurations serveur
- Crashes intentionnels de clients
- Exposition de données sensibles
- Contournement de protections

#### Modernisation des Métadonnées
Création de `addon.json` moderne remplaçant l'ancien `addon.txt`:

**Nouveau fichier:**
- `addon.json` - Métadonnées au format JSON

**Améliorations:**
- 📋 Format JSON structuré
- 🏷️ Tags appropriés (roleplay, realism, stargate, scifi, build, fun)
- 📝 Description détaillée et attractive
- 🔧 Liste complète des fichiers à ignorer lors du packaging
- 🌐 Métadonnées complètes (auteur, version, license, website)
- ✅ Compatible avec les standards modernes de GMod

#### README Amélioré - Style Q&A
Refonte majeure du README avec sections inspirées de viral32111/stargate:

**Nouvelles sections:**
- ❓ **Quick Questions** - FAQ inline au début du document
  - "What is this?" - Présentation claire du projet
  - "Why this fork?" - Justification et objectifs
  - "How do I install it?" - Liens directs vers installation
  - "Where can I get help?" - Ressources d'aide centralisées
  - "Can I contribute?" - Encouragement à la contribution

**Améliorations "Community & Resources":**
- 📚 Section d'aide structurée avec checklist
- 🔍 Encouragement à vérifier la documentation avant de demander
- 🐛 Instructions pour rapports de bugs complets
- 💬 Canaux de communication clarifiés
- 📋 Template de rapport d'issue (informations requises)

**Impact:**
- Navigation plus intuitive
- Réponses rapides aux questions courantes
- Ton plus engageant et communautaire
- Meilleure orientation pour nouveaux utilisateurs

#### GitHub Templates & Community Infrastructure
Ajout d'une infrastructure GitHub complète pour la gestion du projet:

**Nouveaux fichiers:**
- `.github/ISSUE_TEMPLATE/bug_report.md` - Template de rapport de bug
- `.github/ISSUE_TEMPLATE/feature_request.md` - Template de demande de fonctionnalité
- `.github/ISSUE_TEMPLATE/e2_script_submission.md` - Template de soumission de script E2
- `.github/ISSUE_TEMPLATE/config.yml` - Configuration des templates
- `.github/PULL_REQUEST_TEMPLATE.md` - Template de Pull Request
- `CODE_OF_CONDUCT.md` - Code de conduite de la communauté

**Templates d'Issues:**

1. **Bug Report** - Structure complète pour rapports de bugs
   - Description claire du bug
   - Étapes de reproduction
   - Comportement attendu vs actuel
   - Informations d'environnement (GMod, OS, version CAP)
   - Console errors
   - Screenshots/vidéos
   - Checklist de vérifications

2. **Feature Request** - Format pour suggestions
   - Description de la fonctionnalité
   - Cas d'usage et problème résolu
   - Solution proposée
   - Alternatives considérées
   - Exemples d'implémentation
   - Impact sur différents types d'utilisateurs

3. **E2 Script Submission** - Soumission de scripts
   - Informations sur le script (nom, catégorie, difficulté)
   - Description et fonctionnalités
   - Exigences de câblage
   - Code du script
   - Documentation et tests
   - Accord de licence

**Pull Request Template:**
- Type de changement (bug fix, feature, docs, etc.)
- Description détaillée
- Checklist de qualité de code
- Checklist de documentation
- Checklist de tests
- Contexte additionnel

**Configuration GitHub:**
- Liens vers sécurité (rapports privés)
- Liens vers discussions
- Liens vers documentation et guides
- Désactivation des issues vides non-structurées

**Code of Conduct:**
- 🤝 Standards de comportement communautaire
- 📢 Processus de signalement
- 🔨 Application et conséquences
- 🎯 Guidelines pour discussions saines
- 🌍 Engagement envers la diversité et l'inclusion
- 💬 Directives de communication

**Bénéfices:**
- Issues mieux structurées et plus faciles à traiter
- Contributions plus faciles pour nouveaux contributeurs
- Communauté plus saine et accueillante
- Processus de développement professionnel
- Meilleure collaboration et communication

### 📚 Documentation & Community Features

#### Expression 2 Examples & Documentation
Ajout d'une collection complète d'exemples Expression 2 pour faciliter l'utilisation du CAP:

**Nouveaux fichiers:**
- `examples/README.md` - Guide complet des exemples E2 disponibles
- `examples/stargate_auto_dialer.txt` - Système de numérotation automatique avec carnet d'adresses
- `examples/zpm_monitor.txt` - Surveillance et affichage des ZPMs avec écran EGP
- `examples/shield_manager.txt` - Gestionnaire de boucliers avancé avec auto-réparation
- `examples/cap_entity_finder.txt` - Scanner d'entités CAP dans un rayon défini
- `examples/puddle_jumper_hud.txt` - HUD avancé pour Puddle Jumper avec affichage visuel
- `examples/teleporter_network.txt` - Réseau de transporteurs par anneaux
- `examples/drone_launcher.txt` - Système de défense automatisé avec drones anciens
- `E2_GUIDE.md` - Guide complet d'intégration Expression 2 avec CAP

**Caractéristiques des exemples:**
- 📝 Documentation détaillée dans chaque script
- 🔌 Instructions de câblage claires
- ⚡ Exemples prêts à l'emploi
- 🎯 Cas d'usage pratiques (automatisation, surveillance, défense)
- 🖥️ Support d'affichage EGP pour interfaces visuelles

#### README Modernization
Refonte complète du README principal avec:

**Ajouts visuels:**
- 🏷️ Badges (version, GMod, license, status)
- 📊 Sections organisées avec émojis pour clarté
- 🗺️ Roadmap du projet (complété + planifié)

**Nouvelles sections:**
- 🎮 **Features Overview** - Présentation détaillée des fonctionnalités
  - Stargates (9 variants)
  - Systèmes de défense
  - Systèmes d'alimentation
  - Véhicules et vaisseaux
  - Technologies diverses
  - Intégration Wire & E2
- 🚀 **Quick Start** - Guide de démarrage rapide
- 📚 **Documentation** - Index de toute la documentation
- 🌟 **Community & Resources** - Liens utiles et ressources
- 🎯 **Roadmap** - Progrès et plans futurs
- 👥 **Credits** - Équipe originale et contributeurs

#### Contributing Guide Enhancement
Amélioration du guide de contribution (`CONTRIBUTING.md`):

**Ajouts:**
- 🎮 Section dédiée aux contributions E2
- ✅ Exigences pour les scripts
- 📋 Processus de soumission détaillé
- 💡 Template de script E2
- ⚠️ Bonnes pratiques et choses à éviter
- 🐛 Guide de rapport de bugs
- 💻 Processus de contribution de code

**Organisation améliorée:**
- Structure claire avec émojis
- Sections bien délimitées
- Instructions étape par étape
- Exemples concrets

#### Documentation Structure
Organisation complète de la documentation:
```
/
├── README.md (principal, modernisé)
├── E2_GUIDE.md (nouveau)
├── CONTRIBUTING.md (amélioré)
├── INSTALLATION.md
├── FAQ.md
├── CHANGELOG.md (ce fichier)
├── CORRECTIONS.md
├── CREDITS.md
├── LICENSE.md
└── examples/ (nouveau dossier)
    ├── README.md
    ├── stargate_auto_dialer.txt
    ├── zpm_monitor.txt
    ├── shield_manager.txt
    ├── cap_entity_finder.txt
    ├── puddle_jumper_hud.txt
    ├── teleporter_network.txt
    └── drone_launcher.txt
```

#### Community Integration
Inspiration du dépôt [mouuff/Garry-s-mod-E2](https://github.com/mouuff/Garry-s-mod-E2):
- Organisation similaire pour les exemples E2
- Focus sur l'utilisabilité et la documentation
- Approche communautaire pour le partage de scripts
- Lien vers ressources externes utiles

### 🎯 Impact
Ces améliorations rendent le Carter Addon Pack plus accessible:
- ✅ Nouveaux utilisateurs peuvent démarrer avec des exemples concrets
- ✅ Documentation complète pour l'intégration E2
- ✅ README moderne et attractif
- ✅ Processus de contribution clarifié
- ✅ Meilleure visibilité du projet

#### CAP Resources - Modernisation
Mise à jour de l'addon de ressources (`cap_resources`):

**Fichiers créés/modifiés:**
- `cap_resources/addon.json` - Métadonnées modernes JSON
- `cap_resources/README.md` - Documentation améliorée avec badges

**Améliorations README:**
- 📦 Sections claires sur le contenu (materials, models, sounds, maps)
- ⚙️ Instructions d'installation détaillées
- 📊 Statistiques des ressources (200+ models, 1000+ materials, 300+ sounds)
- ⚠️ Notes importantes sur la dépendance requise
- 🔗 Liens vers documentation principale

**Clarifications:**
- Indique clairement que c'est un addon **REQUIS**
- Explique la relation avec l'addon principal `cap`
- Structure de dossiers attendue
- Taille et contenu de l'addon

**Bénéfices:**
- Les utilisateurs comprennent mieux la séparation des addons
- Documentation cohérente entre `cap` et `cap_resources`
- Métadonnées modernes pour les deux addons
- Professionnalisme accru

---

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
