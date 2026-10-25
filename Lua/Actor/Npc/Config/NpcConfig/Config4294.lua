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
local Config4294 = {}

local data = {
    NpcId = "4294",
    Alias = "Npc4294",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321905,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1575.181, y = 14.79647, z = 5060.583}, rot = {x = 0, y = 55.29589, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73212
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 310
tbl.dialogDataList = {{dialogId = 1018429400, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321201,
            questState = questState.Finished
        }
    }
}

local v = {}
local validQuestIds2 = {}
local n2 = 73212
local n3 = 73264
local n4 = 73225
validQuestIds2[1] = 0
validQuestIds2[2] = n2
validQuestIds2[3] = n3
validQuestIds2[4] = n4
v.validQuestIds = validQuestIds2
v.priority = 311
v.dialogDataList = {{dialogId = 1018429401, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321210,
            questState = questState.Finished
        }
    }
}

local tbl2 = {}
local validQuestIds3 = {}
local n5 = 73287
validQuestIds3[1] = 0
validQuestIds3[2] = n5
tbl2.validQuestIds = validQuestIds3
tbl2.priority = 101
tbl2.dialogDataList = {{dialogId = 1018429402, duration = 0, intervalMin = 20, intervalMax = 30}}
local tbl3 = {}
local validQuestIds4 = {}
local n6 = 73287
validQuestIds4[1] = 0
validQuestIds4[2] = n6
tbl3.validQuestIds = validQuestIds4
tbl3.priority = 302
tbl3.dialogDataList = {{dialogId = 1018429403, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl3.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7328706,
            questState = questState.Finished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
data.NahidaNarratorData = nahidaNarratorData
Config4294.Data = data
return Config4294
