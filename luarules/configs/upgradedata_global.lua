---
--- Created by Breno "MaDDoX" Azevedo.
--- DateTime: 18-Aug-19 8:49 PM
---
--- All global upgrades info (command buttons to unlock, upgrade time, etc)

CMD.UPG_CAPTURE = 42999
CMD_UPG_CAPTURE = CMD.UPG_CAPTURE
CMD.UPG_BOOSTER1 = 42998
CMD_UPG_BOOSTER1 = CMD.UPG_BOOSTER1
CMD.UPG_BOOSTER2 = 42997
CMD_UPG_BOOSTER2 = CMD.UPG_BOOSTER2
CMD.UPG_BOOSTER3 = 42996
CMD_UPG_BOOSTER3 = CMD.UPG_BOOSTER3
CMD.UPG_THROTTLE = 42995
CMD_UPG_THROTTLE = CMD.UPG_THROTTLE

local CMD_CAPTURE = CMD.CAPTURE

-- Settings + Button options (as shown in a given unit's command list)
GlobalUpgrades = {
    -- key = upgrade id
    capture = {
        UpgradeCmdDesc = {
            id      = CMD_UPG_CAPTURE,
            name    = '^ CAPTURE',
            action  = 'upgradecapture',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Capture: Unlocks the Capture ability on all builder units\nMetal Cost: 200\nTime: 10s',
            texture = 'luaui/images/upgrades/techcapture.dds',
            onlyTexture = true,
            showUnique = true, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "",
        metalCost = 200,
        energyCost = 3000,
        upgradeTime = 10 * 30, --5 seconds, in frames
        alertWhenDone = true, -- [Optional] if true, fires an alert once completed
        type = "tech", -- TODO: Currently unused. Should indicate special types (auras, debuffs, etc)
        buttonToUnlock = CMD_CAPTURE,
        buttonToUnlockTooltip = "", --automatically fed when button is locked (@ unit create)
        --UnlockedCmdDescTootip = "" (to be added/used by handlers)
        upgradableDefIDs = { [UnitDefNames["armck"].id] = true,
                             [UnitDefNames["corck"].id] = true,
                             [UnitDefNames["armcv"].id] = true,
                             [UnitDefNames["corcv"].id] = true,
                             [UnitDefNames["armca"].id] = true,
                             [UnitDefNames["corca"].id] = true,
                             [UnitDefNames["armcs"].id] = true,
                             [UnitDefNames["armacsub"].id] = true,
                             [UnitDefNames["coracsub"].id] = true,
                             [UnitDefNames["armack"].id] = true,
                             [UnitDefNames["corack"].id] = true,
                             [UnitDefNames["armacv"].id] = true,
                             [UnitDefNames["coracv"].id] = true,
                             [UnitDefNames["armaca"].id] = true,
                             [UnitDefNames["coraca"].id] = true,
        },
        techToGrant = "capture",
    },
    throttle = {
        UpgradeCmdDesc = {
            id      = CMD_UPG_THROTTLE,
            name    = '^ THROTTLE',
            action  = 'upgradethrottle',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Throttle - Upgrade the maximum speed of Tanks and Raider vehicles\nMetal Cost: 300\nTime: 15s',
            texture = 'luaui/images/upgrades/techthrottle.dds',
            onlyTexture = true,
            showUnique = true, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "",
        metalCost = 300,
        energyCost = 4500,
        upgradeTime = 15 * 30, --5 seconds, in frames
        alertWhenDone = true, -- [Optional] if true, fires an alert once completed
        type = "tech", -- TODO: Currently unused. Should indicate special types (auras, debuffs, etc)
        buttonToUnlock = nil,
        buttonToUnlockTooltip = "", --automatically fed when button is locked (@ unit create)
        --UnlockedCmdDescTootip = "" (to be added/used by handlers)
        upgradableDefIDs = { [UnitDefNames["armstump"].id] = true,
                             [UnitDefNames["corraid"].id] = true,
                             [UnitDefNames["armfav"].id] = true,
                             [UnitDefNames["corlevlr"].id] = true,
                             [UnitDefNames["armflash"].id] = true,
                             [UnitDefNames["corgator"].id] = true,

                             [UnitDefNames["armkam"].id] = true,
                             [UnitDefNames["corbw"].id] = true,
        },
        techToGrant = "throttle",
    },
    booster1 = {
        UpgradeCmdDesc = {
            id      = CMD_UPG_BOOSTER1,
            name    = '^ BOOST 1',
            action  = 'upgradecapture',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Morph Booster: Increases Morph Speed by 25%\nMetal Cost: 600\nTime: 15s',
            texture = 'luaui/images/upgrades/techbooster1.dds',
            onlyTexture = true,
            showUnique = true, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "",
        metalCost = 600,
        energyCost = 11400,
        upgradeTime = 15 * 30, --15 seconds, in frames
        alertWhenDone = true, -- [Optional] if true, fires an alert once completed
        type = "tech",
        buttonToUnlock = nil,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = { },
        techToGrant = "booster1",
    },
    booster2 = {
        UpgradeCmdDesc = {
            id      = CMD_UPG_BOOSTER2,
            name    = '^ BOOST 2',
            action  = 'upgradecapture',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Morph Booster II: Increases Morph Speed by 33% (cumulative)\nMetal Cost: 1800\nTime: 30s',
            texture = 'luaui/images/upgrades/techbooster2.dds',
            onlyTexture = true,
            showUnique = true, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "Tech2",
        metalCost = 1800,
        energyCost = 30600,
        upgradeTime = 30 * 30,
        alertWhenDone = true, -- [Optional] if true, fires an alert once completed
        type = "tech",
        buttonToUnlock = nil,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = { },
        techToGrant = "booster2",
    },
    booster3 = {
        UpgradeCmdDesc = {
            id      = CMD_UPG_BOOSTER3,
            name    = '^ BOOST 3',
            action  = 'upgradecapture',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Morph Booster III: Increases Morph Speed by 50% (cumulative)\nMetal Cost: 3600\nTime: 40s',
            texture = 'luaui/images/upgrades/techbooster3.dds',
            onlyTexture = true,
            showUnique = true, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "Tech3",
        metalCost = 3600,
        energyCost = 58320,
        upgradeTime = 40 * 30,
        alertWhenDone = true, -- [Optional] if true, fires an alert once completed
        type = "tech",
        buttonToUnlock = nil,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = { },
        techToGrant = "booster3",
    },
}

-- Which units can research what
GlobalResearchers = {
    [UnitDefNames["armtech"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["cortech"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["armtech1"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["cortech1"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["armtech2"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["cortech2"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["armtech3"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["cortech3"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["armtech4"].id] = {"capture","throttle","booster1","booster2","booster3"},
    [UnitDefNames["cortech4"].id] = {"capture","throttle","booster1","booster2","booster3"},
}

-- Which unitDefs are Tech Centers (Global Researchers)
TechCenterDefIDs = {
    [UnitDefNames["armtech"].id] = true,
    [UnitDefNames["armtech1"].id] = true,
    [UnitDefNames["armtech2"].id] = true,
    [UnitDefNames["armtech3"].id] = true,
    [UnitDefNames["armtech4"].id] = true,
    [UnitDefNames["cortech"].id] = true,
    [UnitDefNames["cortech1"].id] = true,
    [UnitDefNames["cortech2"].id] = true,
    [UnitDefNames["cortech3"].id] = true,
    [UnitDefNames["cortech4"].id] = true,
}