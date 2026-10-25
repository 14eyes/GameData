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
local Config13066 = {}

local data = {
    NpcId = "13066",
    Alias = "Npc13066",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 351306600,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -494.1412, y = 223.4688, z = 2811.746}, rot = {x = 0, y = 265.2194, z = 0}},
                    freestyle = 806401,
                    action = generalPattern.Sit
                }
            }
        },
        {
            bornConfigId = 351306600,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -494.1412, y = 223.4688, z = 2811.746}, rot = {x = 0, y = 265.2194, z = 0}},
                    action = generalPattern.Hide
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 13025
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018130660, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1302502,
            questState = questState.UnFinished
        }
    }
}

local v = {
    validQuestIds = {13025},
    priority = 300,
    dialogDataList = {{dialogId = 1018130661, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1302509,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config13066.Data = data
return Config13066
