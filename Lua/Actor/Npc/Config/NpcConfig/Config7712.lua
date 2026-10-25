require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local generalPattern = NpcConfigCommon.GeneralPattern
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local reactEnableType = NpcConfigCommon.ReactEnableType
local reactEventType = NpcConfigCommon.ReactEventType
local actorMoveType = NpcConfigCommon.ActorMoveType
local Config7712 = {}
local data = {NpcId = "7712", Alias = "Npc7712"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    transTeleport = true,
    bornConfigId = 707712000,
    condition = {sceneId = 0, priority = 1},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 7714802,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = 9207.965, y = 212.2657, z = 7586.5}, rot = {x = 0, y = 34.84105, z = 0}},
            freestyle = 1070,
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Ignore,
            reactOnBodyLang = reactEnableType.Ignore,
            action = generalPattern.Stand
        }
    }
}

local v = {
    transTeleport = true,
    bornConfigId = 707712000,
    condition = {sceneId = 0, priority = 0},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 7714802,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = 9211.657, y = 212.4226, z = 7586.29}, rot = {x = 0, y = 241.8708, z = 0}},
            action = generalPattern.Hide
        }
    }
}

local tbl2 = {bornConfigId = 707712001, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local tbl3 = {}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7714803
paramList[2] = n
tbl4.paramList = paramList
tbl3[1] = tbl4
conditionGrp[1] = tbl3
tbl2.conditionGrp = conditionGrp

tbl2.actionPoints = {
    {
        dummypoint = {pos = {x = 9215.896, y = 212.7431, z = 7599.024}, rot = {x = 0, y = 219.712, z = 0}},
        freestyle = 1120,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl5 = {bornConfigId = 707712001, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 1
paramList2[1] = 7714803
paramList2[2] = n2
tbl7.paramList = paramList2
tbl6[1] = tbl7
conditionGrp2[1] = tbl6
tbl5.conditionGrp = conditionGrp2

tbl5.actionPoints = {
    {
        dummypoint = {pos = {x = 9207.806, y = 212.2797, z = 7586.862}, rot = {x = 0, y = 66.51678, z = 0}},
        freestyle = 4140,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
dailyScheduleData[3] = tbl2
dailyScheduleData[4] = tbl5
data.DailyScheduleData = dailyScheduleData
Config7712.Data = data
return Config7712
