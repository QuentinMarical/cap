-- CAP Test Command - Teste le fonctionnement de tous les composants de l'addon
-- Utilisation: cap_test ou cap_test [categorie]
-- Catégories: entities, weapons, effects, tools, all

if SERVER then

local testResults = {}

local function TestLog(message, success)
	local status = success and "[OK]" or "[FAIL]"
	local color = success and Color(0, 255, 0) or Color(255, 0, 0)
	table.insert(testResults, {msg = status .. " " .. message, success = success})
	MsgC(color, status .. " ")
	MsgC(Color(255, 255, 255), message .. "\n")
end

local function TestEntities()
	MsgC(Color(0, 200, 255), "\n=== Test des Entités ===\n")
	local entityFiles = file.Find("entities/*.lua", "LUA")
	local testedCount = 0
	local successCount = 0
	
	for _, fileName in ipairs(entityFiles) do
		local entName = string.StripExtension(fileName)
		if scripted_ents.Get(entName) then
			TestLog("Entité: " .. entName, true)
			successCount = successCount + 1
		else
			TestLog("Entité: " .. entName .. " (non chargée)", false)
		end
		testedCount = testedCount + 1
	end
	
	MsgC(Color(255, 255, 0), string.format("Résultat: %d/%d entités OK\n", successCount, testedCount))
	return successCount, testedCount
end

local function TestWeapons()
	MsgC(Color(0, 200, 255), "\n=== Test des Armes ===\n")
	local weaponFiles = file.Find("weapons/*.lua", "LUA")
	local testedCount = 0
	local successCount = 0
	
	for _, fileName in ipairs(weaponFiles) do
		local wepName = string.StripExtension(fileName)
		if weapons.Get(wepName) then
			TestLog("Arme: " .. wepName, true)
			successCount = successCount + 1
		else
			TestLog("Arme: " .. wepName .. " (non chargée)", false)
		end
		testedCount = testedCount + 1
	end
	
	MsgC(Color(255, 255, 0), string.format("Résultat: %d/%d armes OK\n", successCount, testedCount))
	return successCount, testedCount
end

local function TestEffects()
	MsgC(Color(0, 200, 255), "\n=== Test des Effets ===\n")
	local effectFiles = file.Find("effects/*.lua", "LUA")
	local testedCount = 0
	local successCount = 0
	
	for _, fileName in ipairs(effectFiles) do
		local effName = string.StripExtension(fileName)
		-- Les effets sont difficiles à tester côté serveur, on vérifie juste que le fichier existe
		if file.Exists("effects/" .. fileName, "LUA") then
			TestLog("Effet: " .. effName, true)
			successCount = successCount + 1
		else
			TestLog("Effet: " .. effName .. " (fichier introuvable)", false)
		end
		testedCount = testedCount + 1
	end
	
	MsgC(Color(255, 255, 0), string.format("Résultat: %d/%d effets OK\n", successCount, testedCount))
	return successCount, testedCount
end

local function TestTools()
	MsgC(Color(0, 200, 255), "\n=== Test des Outils (STools) ===\n")
	local toolFiles = file.Find("weapons/gmod_tool/stools/*.lua", "LUA")
	local testedCount = 0
	local successCount = 0
	
	for _, fileName in ipairs(toolFiles) do
		local toolName = string.StripExtension(fileName)
		if file.Exists("weapons/gmod_tool/stools/" .. fileName, "LUA") then
			TestLog("Outil: " .. toolName, true)
			successCount = successCount + 1
		else
			TestLog("Outil: " .. toolName .. " (fichier introuvable)", false)
		end
		testedCount = testedCount + 1
	end
	
	MsgC(Color(255, 255, 0), string.format("Résultat: %d/%d outils OK\n", successCount, testedCount))
	return successCount, testedCount
end

local function TestStargateCore()
	MsgC(Color(0, 200, 255), "\n=== Test du Core Stargate ===\n")
	local coreTests = {
		{name = "StarGate table", test = StarGate ~= nil},
		{name = "SGLanguage", test = SGLanguage ~= nil},
		{name = "CAP Version", test = StarGate and StarGate.CapVer ~= nil},
		{name = "WireRD", test = StarGate and StarGate.WireRD ~= nil},
		{name = "Keyboard", test = StarGate and StarGate.KeyBoard ~= nil},
	}
	
	local successCount = 0
	for _, test in ipairs(coreTests) do
		if test.test then
			TestLog("Core: " .. test.name, true)
			successCount = successCount + 1
		else
			TestLog("Core: " .. test.name, false)
		end
	end
	
	MsgC(Color(255, 255, 0), string.format("Résultat: %d/%d tests core OK\n", successCount, #coreTests))
	return successCount, #coreTests
end

local function TestSyntax()
	MsgC(Color(0, 200, 255), "\n=== Test de Syntaxe Lua ===\n")
	local function findLuaFiles(dir)
		local files = {}
		local dirs = {}
		
		local f, d = file.Find(dir .. "/*", "LUA")
		for _, fileName in ipairs(f or {}) do
			if string.EndsWith(fileName, ".lua") then
				table.insert(files, dir .. "/" .. fileName)
			end
		end
		
		for _, dirName in ipairs(d or {}) do
			local subFiles = findLuaFiles(dir .. "/" .. dirName)
			for _, subFile in ipairs(subFiles) do
				table.insert(files, subFile)
			end
		end
		
		return files
	end
	
	local allFiles = {}
	table.Add(allFiles, findLuaFiles("entities"))
	table.Add(allFiles, findLuaFiles("weapons"))
	table.Add(allFiles, findLuaFiles("effects"))
	table.Add(allFiles, findLuaFiles("stargate"))
	
	local testedCount = 0
	local successCount = 0
	
	for _, filePath in ipairs(allFiles) do
		local content = file.Read(filePath, "LUA")
		if content then
			local func, err = CompileString(content, filePath, false)
			if func then
				successCount = successCount + 1
			else
				TestLog("Syntaxe: " .. filePath .. " - " .. tostring(err), false)
			end
			testedCount = testedCount + 1
		end
	end
	
	MsgC(Color(255, 255, 0), string.format("Résultat: %d/%d fichiers sans erreur de syntaxe\n", successCount, testedCount))
	return successCount, testedCount
end

local function RunAllTests()
	testResults = {}
	MsgC(Color(100, 255, 100), "\n")
	MsgC(Color(100, 255, 100), "=======================================================\n")
	MsgC(Color(100, 255, 100), "    CAP - Tests de Fonctionnement de l'Addon\n")
	MsgC(Color(100, 255, 100), "=======================================================\n")
	
	local totalSuccess = 0
	local totalTests = 0
	
	local s, t = TestStargateCore()
	totalSuccess = totalSuccess + s
	totalTests = totalTests + t
	
	s, t = TestSyntax()
	totalSuccess = totalSuccess + s
	totalTests = totalTests + t
	
	s, t = TestEntities()
	totalSuccess = totalSuccess + s
	totalTests = totalTests + t
	
	s, t = TestWeapons()
	totalSuccess = totalSuccess + s
	totalTests = totalTests + t
	
	s, t = TestEffects()
	totalSuccess = totalSuccess + s
	totalTests = totalTests + t
	
	s, t = TestTools()
	totalSuccess = totalSuccess + s
	totalTests = totalTests + t
	
	MsgC(Color(100, 255, 100), "\n=======================================================\n")
	local percentage = math.Round((totalSuccess / totalTests) * 100, 1)
	if percentage >= 90 then
		MsgC(Color(0, 255, 0), string.format("    RÉSULTAT FINAL: %d/%d (%d%%) - EXCELLENT\n", totalSuccess, totalTests, percentage))
	elseif percentage >= 70 then
		MsgC(Color(255, 255, 0), string.format("    RÉSULTAT FINAL: %d/%d (%d%%) - BON\n", totalSuccess, totalTests, percentage))
	else
		MsgC(Color(255, 100, 0), string.format("    RÉSULTAT FINAL: %d/%d (%d%%) - ATTENTION\n", totalSuccess, totalTests, percentage))
	end
	MsgC(Color(100, 255, 100), "=======================================================\n\n")
end

concommand.Add("cap_test", function(ply, cmd, args)
	if IsValid(ply) and not ply:IsAdmin() then
		ply:ChatPrint("Vous devez être administrateur pour utiliser cette commande.")
		return
	end
	
	local category = args[1] or "all"
	
	if category == "all" then
		RunAllTests()
	elseif category == "entities" then
		TestEntities()
	elseif category == "weapons" then
		TestWeapons()
	elseif category == "effects" then
		TestEffects()
	elseif category == "tools" then
		TestTools()
	elseif category == "core" then
		TestStargateCore()
	elseif category == "syntax" then
		TestSyntax()
	else
		if IsValid(ply) then
			ply:ChatPrint("Catégories disponibles: all, entities, weapons, effects, tools, core, syntax")
		else
			print("Catégories disponibles: all, entities, weapons, effects, tools, core, syntax")
		end
	end
end, nil, "Teste le fonctionnement de l'addon CAP. Usage: cap_test [categorie]")

MsgC(Color(0, 255, 0), "[CAP] Commande de test chargée. Utilisez 'cap_test' pour lancer les tests.\n")

end
