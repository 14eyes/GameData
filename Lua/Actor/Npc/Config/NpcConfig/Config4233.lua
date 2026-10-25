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
local Config4233 = {}

local data = {
    NpcId = "4233",
    Alias = "Npc4233",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1802.681, y = 326.2995, z = 4111.46}, rot = {x = 0, y = 110.8789, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73204
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 100
tbl.dialogDataList = {{dialogId = 1018423300, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 73223,
            questGlobalVarValue = 4,
            questGlobalVarOperate = compareOperation.Less
        }
    }
}

local v = {}
local validQuestIds2 = {}
local n2 = 73209
validQuestIds2[1] = 0
validQuestIds2[2] = n2
v.validQuestIds = validQuestIds2
v.priority = 300
v.dialogDataList = {{dialogId = 1018423301, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 73223,
            questGlobalVarValue = 4,
            questGlobalVarOperate = compareOperation.Equal
        }
    }
}

local tbl2 = {}
local validQuestIds3 = {}
local n3 = 73205
local n4 = 73206
local n5 = 73207
local n6 = 73209
validQuestIds3[1] = 73204
validQuestIds3[2] = n3
validQuestIds3[3] = n4
validQuestIds3[4] = n5
validQuestIds3[5] = n6
tbl2.validQuestIds = validQuestIds3
tbl2.priority = 300
tbl2.dialogDataList = {{dialogId = 1018423302, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7320401,
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
data.NahidaNarratorData = nahidaNarratorData
Config4233.Data = data
return Config4233
