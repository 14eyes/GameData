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
local Config20658 = {}

local data = {
    NpcId = "20658",
    Alias = "Npc20658",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 462065800,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 3527.082, y = 427.4049, z = 4490.993}, rot = {x = 0, y = 57.44654, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 23014
validQuestIds[1] = 23013
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 230139903, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 73803,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        }
    }
}

local v = {
    validQuestIds = {23015},
    priority = 300,
    dialogDataList = {{dialogId = 230159902, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl2 = {
    validQuestIds = {23016},
    priority = 300,
    dialogDataList = {{dialogId = 230169902, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl3 = {
    validQuestIds = {23017},
    priority = 300,
    dialogDataList = {{dialogId = 230179902, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl4 = {
    validQuestIds = {73803},
    priority = 300,
    dialogDataList = {{dialogId = 738030131, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl5 = {}
local validQuestIds2 = {}
local n2 = 23014
validQuestIds2[1] = 23013
validQuestIds2[2] = n2
tbl5.validQuestIds = validQuestIds2
tbl5.priority = 300
tbl5.dialogDataList = {{dialogId = 230139905, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl5.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 73803,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Greater
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
nahidaNarratorData[5] = tbl4
nahidaNarratorData[6] = tbl5
data.NahidaNarratorData = nahidaNarratorData
Config20658.Data = data
return Config20658
