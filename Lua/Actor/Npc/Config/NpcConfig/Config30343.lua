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
local Config30343 = {}

local data = {
    NpcId = "30343",
    Alias = "Npc30343",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 363034300,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1818.121, y = 153.6441, z = 5962.413}, rot = {x = 0, y = 144.5918, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 363034301,
            condition = {daily = dailyCondition.AllDay, sceneId = 1074, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 6.323628, y = 0.05536738, z = -1.670331}, rot = {x = 0, y = 90, z = 0}},
                    freestyle = 0,
                    action = generalPattern.Sit
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_30343",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73511
local v = 73512
local n2 = 73513
local n3 = 73514
local n4 = 73515
local n5 = 73516
local n6 = 73517
local n7 = 73518
local n8 = 73519
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = v
validQuestIds[4] = n2
validQuestIds[5] = n3
validQuestIds[6] = n4
validQuestIds[7] = n5
validQuestIds[8] = n6
validQuestIds[9] = n7
validQuestIds[10] = n8
tbl.validQuestIds = validQuestIds
tbl.priority = 100
tbl.dialogDataList = {{dialogId = 1018303430, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5128,
            activityCondId = 5128001,
            isActivityValid = true
        }
    }
}

nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config30343.Data = data
return Config30343
