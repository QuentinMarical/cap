# Corrections apportées au Carter Addon Pack

Ce document liste toutes les corrections de syntaxe effectuées sur le code du Carter Addon Pack.

## Erreurs corrigées

### 1. lua/autorun/a_gmod13.lua (Ligne 4)
**Problème:** Utilisation de l'opérateur `!=` (syntaxe C-style) au lieu de `~=` (syntaxe Lua)
```lua
# Avant:
if (Gmod13Lib!=nil) then return end

# Après:
if (Gmod13Lib~=nil) then return end
```

### 2. lua/autorun/stargate.lua (Ligne 120)
**Problème:** Variable `ver` non définie, devrait utiliser `StarGate.CapVer`
```lua
# Avant:
if (ver==0) then

# Après:
if (StarGate.CapVer==0) then
```

### 3. lua/stargate/shared/capcheck.lua (Multiple occurrences)
**Problème:** Syntaxe `end if` incorrecte - devrait être séparé en deux instructions distinctes

**Ligne 308:**
```lua
# Avant:
end if (ws_addonlist[175394472]) then

# Après:
end
if (ws_addonlist[175394472]) then
```

**Ligne 317:**
```lua
# Avant:
end if (table.HasValue( addonlist, "Carter Addon Pack - Resources" ) and cap_res<cap_res_req) then

# Après:
end
if (table.HasValue( addonlist, "Carter Addon Pack - Resources" ) and cap_res<cap_res_req) then
```

**Ligne 337:**
```lua
# Avant:
end	if (ws_addonlist[175394472] and (not cap_installed and not table.HasValue( addonlist, "Carter Addon Pack - Resources" ))) then

# Après:
end
if (ws_addonlist[175394472] and (not cap_installed and not table.HasValue( addonlist, "Carter Addon Pack - Resources" ))) then
```

**Ligne 346:**
```lua
# Avant:
end if (not cap_installed and table.HasValue( addonlist, "Carter Addon Pack - Resources" ) and cap_res<cap_res_req) then

# Après:
end
if (not cap_installed and table.HasValue( addonlist, "Carter Addon Pack - Resources" ) and cap_res<cap_res_req) then
```

**Ligne 355:**
```lua
# Avant:
end if (Workshop_res_Installed() and table.HasValue( addonlist, "Carter Addon Pack - Resources" )) then

# Après:
end
if (Workshop_res_Installed() and table.HasValue( addonlist, "Carter Addon Pack - Resources" )) then
```

**Ligne 364:**
```lua
# Avant:
end if (ws_addonlist[175394472] and table.HasValue( addonlist, "Carter Addon Pack" )) then

# Après:
end
if (ws_addonlist[175394472] and table.HasValue( addonlist, "Carter Addon Pack" )) then
```

**Ligne 402:**
```lua
# Avant:
end if (not WireAddon and not file.Exists("weapons/gmod_tool/stools/wire_adv.lua","LUA")) then

# Après:
end
if (not WireAddon and not file.Exists("weapons/gmod_tool/stools/wire_adv.lua","LUA")) then
```

## Résumé
- **Fichiers corrigés:** 3
- **Total d'erreurs corrigées:** 9
- **Types d'erreurs:**
  - Opérateur de comparaison incorrect: 1
  - Variable non définie: 1
  - Syntaxe `end if` incorrecte: 7

## Impact
Ces corrections résolvent des erreurs de syntaxe Lua qui auraient empêché le chargement correct de l'addon. Le code devrait maintenant fonctionner correctement dans Garry's Mod.

## Date de correction
2025-12-03
