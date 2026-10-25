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
local Config4419 = {}
local data = {NpcId = "4419", Alias = "Npc4419"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    transTeleport = true,
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = -2022.334, y = 274.8627, z = 4241.195}, rot = {x = 0, y = 141.3687, z = 0}},
            freestyle = 1120,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local v = {
    transTeleport = true,
    condition = {sceneId = 3, priority = 1},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 302821,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = -1990.234, y = 290.5375, z = 4103.242}, rot = {x = 0, y = 193.6824, z = 0}},
            actionPointId = 330300020,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local tbl2 = {
    condition = {sceneId = 3, priority = 2},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2034,
                activityCondId = 2034004,
                isActivityValid = true
            },
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 4016801,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    },
    actionPoints = {{action = generalPattern.Hide}}
}

local tbl3 = {bornConfigId = 100036816, condition = {sceneId = 0, priority = 2}}
local conditionGrp = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2043001
local n2 = 1
paramList[1] = 2043
paramList[2] = n
paramList[3] = n2
tbl5.paramList = paramList
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n3 = 0
paramList2[1] = 302821
paramList2[2] = n3
tbl6.paramList = paramList2
tbl4[1] = tbl5
tbl4[2] = tbl6
conditionGrp[1] = tbl4
tbl3.conditionGrp = conditionGrp
tbl3.actionPoints = {{action = generalPattern.Hide}}
dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
dailyScheduleData[3] = tbl2
dailyScheduleData[4] = tbl3
data.DailyScheduleData = dailyScheduleData

data.NahidaNarratorData = {
    {
        validQuestIds = {0},
        priority = 10,
        dialogDataList = {{dialogId = 1018441900, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditions = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                    questGlobalVarId = 302821,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal
                }
            }
        }
    },
    {
        validQuestIds = {0},
        priority = 10,
        dialogDataList = {{dialogId = 1018441901, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditions = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                    questGlobalVarId = 302821,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal
                }
            }
        }
    }
}

Config4419.Data = data
return Config4419
