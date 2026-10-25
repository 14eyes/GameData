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
local Config4292 = {}

local data = {
    NpcId = "4292",
    Alias = "Npc4292",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321903,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1580.526, y = 39.76124, z = 5056.173}, rot = {x = 0, y = 115.7737, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73279
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 310
tbl.dialogDataList = {{dialogId = 1018429200, duration = 0, intervalMin = 20, intervalMax = 30}}
tbl.conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73220, questState = 3}}}

local v = {
    validQuestIds = {73281},
    priority = 311,
    dialogDataList = {{dialogId = 1018429201, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73279, questState = 3}}}
}

local tbl2 = {
    validQuestIds = {73282},
    priority = 312,
    dialogDataList = {{dialogId = 1018429202, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73281, questState = 3}}}
}

local tbl3 = {}
local validQuestIds2 = {}
local n2 = 73287
validQuestIds2[1] = 0
validQuestIds2[2] = n2
tbl3.validQuestIds = validQuestIds2
tbl3.priority = 101
tbl3.dialogDataList = {{dialogId = 1018429203, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
data.NahidaNarratorData = nahidaNarratorData
Config4292.Data = data
return Config4292
