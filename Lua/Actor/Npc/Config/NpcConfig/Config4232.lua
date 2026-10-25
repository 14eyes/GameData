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
local Config4232 = {}

local data = {
    NpcId = "4232",
    Alias = "Npc4232",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1994.19, y = 288.5375, z = 4093.523}, rot = {x = 0, y = 110.5383, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 100,
    dialogDataList = {{dialogId = 1018423200, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {}
local validQuestIds = {}
local n = 73193
local n2 = 73203
local n3 = 73204
local n4 = 73205
local n5 = 73206
local n6 = 73207
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = n2
validQuestIds[4] = n3
validQuestIds[5] = n4
validQuestIds[6] = n5
validQuestIds[7] = n6
v.validQuestIds = validQuestIds
v.priority = 300
v.dialogDataList = {{dialogId = 1018423201, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 73275,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        }
    }
}

local tbl2 = {}
local validQuestIds2 = {}
local n7 = 73203
validQuestIds2[1] = 73193
validQuestIds2[2] = n7
tbl2.validQuestIds = validQuestIds2
tbl2.priority = 300
tbl2.dialogDataList = {{dialogId = 1018423202, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7319301,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7320401,
            questState = questState.None
        }
    }
}

local tbl3 = {}
local validQuestIds3 = {}
local n8 = 73209
validQuestIds3[1] = 73207
validQuestIds3[2] = n8
tbl3.validQuestIds = validQuestIds3
tbl3.priority = 300
tbl3.dialogDataList = {{dialogId = 1018423203, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl3.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7320701,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7320903,
            questState = questState.None
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
data.NahidaNarratorData = nahidaNarratorData
Config4232.Data = data
return Config4232
