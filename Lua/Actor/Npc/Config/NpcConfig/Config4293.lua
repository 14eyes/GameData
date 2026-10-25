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
local Config4293 = {}

local data = {
    NpcId = "4293",
    Alias = "Npc4293",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321904,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1541.59, y = 49.38209, z = 5015.374}, rot = {x = 0, y = 42.46283, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73287
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 101
tbl.dialogDataList = {{dialogId = 1018429300, duration = 0, intervalMin = 20, intervalMax = 30}}
local v = {}
local validQuestIds2 = {}
local n2 = 73287
validQuestIds2[1] = 0
validQuestIds2[2] = n2
v.validQuestIds = validQuestIds2
v.priority = 302
v.dialogDataList = {{dialogId = 1018429301, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7328706,
            questState = questState.Finished
        }
    }
}

local tbl2 = {}
local validQuestIds3 = {}
local n3 = 73103
validQuestIds3[1] = 0
validQuestIds3[2] = n3
tbl2.validQuestIds = validQuestIds3
tbl2.priority = 303
tbl2.dialogDataList = {{dialogId = 1018429302, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7310315,
            questState = questState.UnFinished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config4293.Data = data
return Config4293
