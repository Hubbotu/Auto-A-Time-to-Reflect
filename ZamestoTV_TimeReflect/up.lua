-- Localization Table
local L = {}
if GetLocale() == "ruRU" then
    L["Valorstones"] = "Доблесть"
    L["Weathered"] = "Истертый"
    L["Carved"] = "Резной"
    L["Runed"] = "Рунический"
    L["Gilded"] = "Позолоченный"
    L["Explorer"] = "Исследователь"
    L["Adventurer"] = "Искатель приключений"
    L["Veteran"] = "Ветеран"
    L["Champion"] = "Защитник"
    L["Hero"] = "Герой"
    L["Myth"] = "Легенда"
elseif GetLocale() == "ptBR" then
    L["Valorstones"] = "Pedras da Bravura"
    L["Weathered"] = "Desgastado"
    L["Carved"] = "Entalhado"
    L["Runed"] = "Rúnico"
    L["Gilded"] = "Dourado"
    L["Explorer"] = "Explorador"
    L["Adventurer"] = "Aventureiro"
    L["Veteran"] = "Veterano"
    L["Champion"] = "Campeão"
    L["Hero"] = "Herói"
    L["Myth"] = "Mito"
elseif GetLocale() == "frFR" then
    L["Valorstones"] = "Pierres de vaillance"
    L["Weathered"] = "Abîmé"
    L["Carved"] = "Gravé"
    L["Runed"] = "Runique"
    L["Gilded"] = "Doré"
    L["Explorer"] = "Explorateur"
    L["Adventurer"] = "Aventurier"
    L["Veteran"] = "Vétéran"
    L["Champion"] = "Champion"
    L["Hero"] = "Héros"
    L["Myth"] = "Mythique"
elseif GetLocale() == "zhCN" then
    L["Valorstones"] = "神勇石"
    L["Weathered"] = "风化"
    L["Carved"] = "蚀刻"
    L["Runed"] = "符文"
    L["Gilded"] = "鎏金"
    L["Explorer"] = "探险者"
    L["Adventurer"] = "冒险者"
    L["Veteran"] = "老兵"
    L["Champion"] = "勇士"
    L["Hero"] = "英雄"
    L["Myth"] = "神話"
elseif GetLocale() == "zhTW" then
    L["Valorstones"] = "勇氣石"
    L["Weathered"] = "陳舊"
    L["Carved"] = "雕刻"
    L["Runed"] = "符文"
    L["Gilded"] = "鍍金"
    L["Explorer"] = "探險者"
    L["Adventurer"] = "冒險者"
    L["Veteran"] = "精兵"
    L["Champion"] = "勇士"
    L["Hero"] = "英雄"
    L["Myth"] = "傳說"
else -- Default to enUS
    L["Valorstones"] = "Valorstones"
    L["Weathered"] = "Weathered"
    L["Carved"] = "Carved"
    L["Runed"] = "Runed"
    L["Gilded"] = "Gilded"
    L["Explorer"] = "Explorer"
    L["Adventurer"] = "Adventurer"
    L["Veteran"] = "Veteran"
    L["Champion"] = "Champion"
    L["Hero"] = "Hero"
    L["Myth"] = "Myth"
end

-- Constants and Data (Using English names internally)
local CRESTS = {
    [0] = {minLevel=597, maxLevel=619, shortName="Valorstones", color=HEIRLOOM_BLUE_COLOR},
    [1] = {minLevel=623, maxLevel=645, shortName="Weathered", color=UNCOMMON_GREEN_COLOR, achieve=40942},
    [2] = {minLevel=636, maxLevel=658, shortName="Carved", color=RARE_BLUE_COLOR, achieve=40943},
    [3] = {minLevel=649, maxLevel=665, shortName="Runed", color=ITEM_EPIC_COLOR, achieve=40944},
    [4] = {minLevel=662, maxLevel=678, shortName="Gilded", color=ITEM_LEGENDARY_COLOR},
}

local UPGRADE_BONUSES = {
    {id=11942, level=1, max=8, name="Explorer", ilvl=597, crest=CRESTS[0]},
    {id=11943, level=2, max=8, name="Explorer", ilvl=600, crest=CRESTS[0]},
    {id=11944, level=3, max=8, name="Explorer", ilvl=603, crest=CRESTS[0]},
    {id=11945, level=4, max=8, name="Explorer", ilvl=606, crest=CRESTS[0]},
    {id=11946, level=5, max=8, name="Explorer", ilvl=610, crest=CRESTS[0]},
    {id=11947, level=6, max=8, name="Explorer", ilvl=613, crest=CRESTS[0]},
    {id=11948, level=7, max=8, name="Explorer", ilvl=616, crest=CRESTS[0]},
    {id=11949, level=8, max=8, name="Explorer", ilvl=619},
    {id=11951, level=1, max=8, name="Adventurer", ilvl=610, crest=CRESTS[0]},
    {id=11952, level=2, max=8, name="Adventurer", ilvl=613, crest=CRESTS[0]},
    {id=11953, level=3, max=8, name="Adventurer", ilvl=616, crest=CRESTS[0]},
    {id=11954, level=4, max=8, name="Adventurer", ilvl=619, crest=CRESTS[1]},
    {id=11955, level=5, max=8, name="Adventurer", ilvl=623, crest=CRESTS[1]},
    {id=11956, level=6, max=8, name="Adventurer", ilvl=626, crest=CRESTS[1]},
    {id=11957, level=7, max=8, name="Adventurer", ilvl=629, crest=CRESTS[1]},
    {id=11950, level=8, max=8, name="Adventurer", ilvl=632},
    {id=11969, level=1, max=8, name="Veteran", ilvl=623, crest=CRESTS[1]},
    {id=11970, level=2, max=8, name="Veteran", ilvl=626, crest=CRESTS[1]},
    {id=11971, level=3, max=8, name="Veteran", ilvl=629, crest=CRESTS[1]},
    {id=11972, level=4, max=8, name="Veteran", ilvl=632, crest=CRESTS[2]},
    {id=11973, level=5, max=8, name="Veteran", ilvl=636, crest=CRESTS[2]},
    {id=11974, level=6, max=8, name="Veteran", ilvl=639, crest=CRESTS[2]},
    {id=11975, level=7, max=8, name="Veteran", ilvl=642, crest=CRESTS[2]},
    {id=11976, level=8, max=8, name="Veteran", ilvl=645},
    {id=11977, level=1, max=8, name="Champion", ilvl=636, crest=CRESTS[2]},
    {id=11978, level=2, max=8, name="Champion", ilvl=639, crest=CRESTS[2]},
    {id=11979, level=3, max=8, name="Champion", ilvl=642, crest=CRESTS[2]},
    {id=11980, level=4, max=8, name="Champion", ilvl=645, crest=CRESTS[3]},
    {id=11981, level=5, max=8, name="Champion", ilvl=649, crest=CRESTS[3]},
    {id=11982, level=6, max=8, name="Champion", ilvl=652, crest=CRESTS[3]},
    {id=11983, level=7, max=8, name="Champion", ilvl=655, crest=CRESTS[3]},
    {id=11984, level=8, max=8, name="Champion", ilvl=658},
    {id=11985, level=1, max=6, name="Hero", ilvl=649, crest=CRESTS[3]},
    {id=11986, level=2, max=6, name="Hero", ilvl=652, crest=CRESTS[3]},
    {id=11987, level=3, max=6, name="Hero", ilvl=655, crest=CRESTS[3]},
    {id=11988, level=4, max=6, name="Hero", ilvl=658, crest=CRESTS[3]},
    {id=11989, level=5, max=6, name="Hero", ilvl=662, crest=CRESTS[4]},
    {id=11990, level=6, max=6, name="Hero", ilvl=665},
    {id=11991, level=1, max=6, name="Myth", ilvl=662, crest=CRESTS[4]},
    {id=11992, level=2, max=6, name="Myth", ilvl=665, crest=CRESTS[4]},
    {id=11993, level=3, max=6, name="Myth", ilvl=668, crest=CRESTS[4]},
    {id=11994, level=4, max=6, name="Myth", ilvl=671},
    {id=11995, level=5, max=6, name="Myth", ilvl=675},
    {id=11996, level=6, max=6, name="Myth", ilvl=678},
}

local UPGRADE_TIERS = {
    ["Explorer"] = {minLevel=597, maxLevel=619, color=ITEM_POOR_COLOR},
    ["Adventurer"] = {minLevel=610, maxLevel=632, color=WHITE_FONT_COLOR},
    ["Veteran"] = {minLevel=623, maxLevel=645, color=UNCOMMON_GREEN_COLOR},
    ["Champion"] = {minLevel=636, maxLevel=658, color=RARE_BLUE_COLOR},
    ["Hero"] = {minLevel=649, maxLevel=665, color=ITEM_EPIC_COLOR},
    ["Myth"] = {minLevel=662, maxLevel=678, color=ITEM_LEGENDARY_COLOR},
}

-- Utility Functions
local function SetValueToKey(list, field, valuesArray)
    local newList = {}
    for _, v in ipairs(list) do
        local key = v
        local data = true
        if field then 
            key = v[field]
        end
        if tonumber(key) then 
            key = tonumber(key)
        end
        if valuesArray then
            data = v
        end
        newList[key] = data
    end
    return newList
end
UPGRADE_BONUSES = SetValueToKey(UPGRADE_BONUSES, "id", true)

local localePatterns = {
    ["enUS"] = "(%a+) (%d+)/(%d+)$",
    ["koKR"] = "(.+): (.+) (%d+)/(%d+)$",
    ["frFR"] = "(%a+) (%d+)/(%d+)$",
    ["deDE"] = "(%a+) (%d+)/(%d+)$",
    ["zhCN"] = "(.+) (%d+)/(%d+)$",
    ["esES"] = "(%a+) (%d+)/(%d+)$",
    ["zhTW"] = "(.+) (%d+)/(%d+)$",
    ["esMX"] = "(%a+) (%d+)/(%d+)$",
    ["ruRU"] = "(.+): (.+) (%d+)/(%d+)$",
    ["ptBR"] = "(%a+) (%d+)/(%d+)$",
    ["itIT"] = "(%a+) (%d+)/(%d+)$",
}

local function GetRankInfoByLocale(text, locale)
    local tier, current, total
    if locale == "ruRU" or locale == "koKR" then
        _, tier, current, total = text:match(localePatterns[locale])
    elseif locale == "zhCN" or locale == "zhTW" then
        tier, current, total = text:match(localePatterns[locale])
    elseif locale == "ptBR" then
        tier, current, total = text:match(localePatterns[locale])
    elseif locale == "frFR" then
        tier, current, total = text:match(localePatterns[locale])
    else
        tier, current, total = text:match(localePatterns["enUS"])
    end
    return tier, current, total    
end

local function GetRankInfo(item, text, locale)
    local tier, current, total, bonusID = GetRankInfoByLocale(text, locale)
    if tier and current and total and not UPGRADE_TIERS[tier] then
        for id, v in pairs(UPGRADE_BONUSES) do
            if v.level == tonumber(current) 
            and v.max == tonumber(total)
            and v.ilvl == item:GetCurrentItemLevel() then
                tier = v.name
                current = v.level
                total = v.max
                bonusID = v.id
            end
        end
    end
    return tier, current, total, bonusID
end

-- Configuration Defaults
local defaults = {
    showUpgradeCurrency = true,
    colorRank = true,
    colorRange = true,
    ilvlRangeColor = {0.61568629741669, 0.61568629741669, 0.61568629741669, 1},
}

-- Addon Frame
local frame = CreateFrame("Frame", "GearUpgradeTooltipRenamerFrame", UIParent)
frame:RegisterEvent("ADDON_LOADED")

-- Process Tooltip
local function ProcessTooltip(tooltip)
    if not tooltip.GetItem then
        return -- Skip processing for tooltips that don't support GetItem
    end

    local itemName, itemLink = tooltip:GetItem()
    if not itemLink then return end
    
    local item = Item:CreateFromItemLink(itemLink)
    if item:IsItemEmpty() then return end
    local itemLevel = item:GetCurrentItemLevel()
    if itemLevel < 597 then return end
    
    local itemLinkValues = {strsplit(":", itemLink)}
    local numBonusIDs = tonumber(itemLinkValues[14]) or 0
    if numBonusIDs == 0 then return end
    local bonusIDs = {select(15, unpack(itemLinkValues, 1, 15 + numBonusIDs - 1))}
    bonusIDs = SetValueToKey(bonusIDs)
    
    local bonusID = false
    for id in pairs(bonusIDs) do
        if UPGRADE_BONUSES[id] then
            bonusID = id
        end
    end    
    
    for i = 1, tooltip:NumLines() do
        local line = _G[tooltip:GetName().."TextLeft"..i]
        local text = line:GetText()
        
        if text and text:match(localePatterns[GetLocale()]) then
            local tier, current, total
            if bonusID then
                tier = UPGRADE_BONUSES[bonusID].name
                current = UPGRADE_BONUSES[bonusID].level
                total = UPGRADE_BONUSES[bonusID].max
            else
                tier, current, total, bonusID = GetRankInfo(item, text, GetLocale())
            end
            if not tier or not current or not total then return end
            if tier == "Awakened" and itemLevel >= 532 then tier = "Awakened+" end
            if tier and not UPGRADE_TIERS[tier] then return end
            
            local minLevel = UPGRADE_TIERS[tier].minLevel
            local maxLevel = UPGRADE_TIERS[tier].maxLevel
            if minLevel and maxLevel and itemLevel >= minLevel and itemLevel <= maxLevel then
                local db = GearUpgradeTooltipRenamerDB or defaults
                local localizedTier = L[tier] -- Use localized name for display
                local tierHexColorMarkup = db.colorRank and UPGRADE_TIERS[tier].color:GenerateHexColorMarkup() or ""
                local rangeHexColorMarkup = db.colorRange and CreateColor(unpack(db.ilvlRangeColor)):GenerateHexColorMarkup() or ""
                
                local newLineText = string.format("%s%d/%d %s|r %s(%d-%d)|r", 
                    tierHexColorMarkup, current, total, localizedTier, 
                    rangeHexColorMarkup, minLevel, maxLevel)
                line:SetText(newLineText)
                line:Show()
            end
            
            if bonusID and UPGRADE_BONUSES[bonusID].crest and (GearUpgradeTooltipRenamerDB or defaults).showUpgradeCurrency then
                local crest = UPGRADE_BONUSES[bonusID].crest
                if crest then
                    local crestName = L[crest.shortName] -- Localize crest name for display
                    local crestName_colored = crest.color:WrapTextInColorCode(crestName)
                    local achieve = crest.achieve and select(13, GetAchievementInfo(crest.achieve))
                    local rightLineText = "|A:2329:20:20:1:-1|a" .. (not achieve and crestName_colored or "")
                    local rightLine = _G[tooltip:GetName().."TextRight"..i]
                    rightLine:SetText(rightLineText)
                    rightLine:Show()
                end
            end 
        end
    end
end

-- Tooltip Hooking
TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip)
    ProcessTooltip(tooltip)
end)

-- Interface Options Panel
local function CreateOptionsPanel()
    local panel = CreateFrame("Frame")
    panel.name = "Gear Upgrade Tooltip Renamer"

    local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetText("Gear Upgrade Tooltip Renamer")

    local note = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    note:SetPoint("TOPLEFT", 10, -40)
    note:SetText("|cFFFF0000IMPORTANT:|r\nAny change requires a |cFFFFFF00/reload|r to take effect.")

    local showCurrency = CreateFrame("CheckButton", "GUTRShowCurrency", panel, "InterfaceOptionsCheckButtonTemplate")
    showCurrency:SetPoint("TOPLEFT", 10, -80)
    _G[showCurrency:GetName().."Text"]:SetText("Show Upgrade Currency")
    showCurrency.tooltipText = "Toggle the currency that is required to upgrade this item. This is shown at the right side of the tooltip."
    showCurrency:SetChecked((GearUpgradeTooltipRenamerDB or defaults).showUpgradeCurrency)
    showCurrency:SetScript("OnClick", function(self)
        GearUpgradeTooltipRenamerDB.showUpgradeCurrency = self:GetChecked()
    end)

    local colorRank = CreateFrame("CheckButton", "GUTRColorRank", panel, "InterfaceOptionsCheckButtonTemplate")
    colorRank:SetPoint("TOPLEFT", 10, -110)
    _G[colorRank:GetName().."Text"]:SetText("Color Rank")
    colorRank.tooltipText = "Toggle colorization of the rank title."
    colorRank:SetChecked((GearUpgradeTooltipRenamerDB or defaults).colorRank)
    colorRank:SetScript("OnClick", function(self)
        GearUpgradeTooltipRenamerDB.colorRank = self:GetChecked()
    end)

    local colorRange = CreateFrame("CheckButton", "GUTRColorRange", panel, "InterfaceOptionsCheckButtonTemplate")
    colorRange:SetPoint("TOPLEFT", 10, -140)
    _G[colorRange:GetName().."Text"]:SetText("Color Item Level Range")
    colorRange.tooltipText = "Toggle colorization of the item level range."
    colorRange:SetChecked((GearUpgradeTooltipRenamerDB or defaults).colorRange)
    colorRange:SetScript("OnClick", function(self)
        GearUpgradeTooltipRenamerDB.colorRange = self:GetChecked()
    end)

    InterfaceOptions_AddCategory(panel)
end

-- Event Handler
frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "GearUpgradeTooltipRenamer" then
        GearUpgradeTooltipRenamerDB = GearUpgradeTooltipRenamerDB or CopyTable(defaults)
        CreateOptionsPanel()
    end
end)

-- Slash Command for Config
SLASH_GEARUPGRADETOOLTIPRENAMER1 = "/gutr"
SlashCmdList["GEARUPGRADETOOLTIPRENAMER"] = function(msg)
    print("|cFFFF0000Gear Upgrade Tooltip Renamer|r: Use /reload after changing settings in the interface options.")
end
