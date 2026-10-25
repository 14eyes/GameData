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
local Config4299 = {}

local data = {
    NpcId = "4299",
    Alias = "Npc4299",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321906,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1522.972, y = 60.09952, z = 4993.536}, rot = {x = 0, y = 151.0804, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73225
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 310
tbl.dialogDataList = {{dialogId = 1018429900, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7322523,
            questState = questState.UnFinished
        }
    }
}

local v = {
    validQuestIds = {0},
    priority = 101,
    dialogDataList = {{dialogId = 1018429901, duration = 0, intervalMin = 20, intervalMax = 30}}
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config4299.Data = data
return Config4299
