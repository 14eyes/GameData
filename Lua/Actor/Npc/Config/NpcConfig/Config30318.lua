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
local Config30318 = {}

local data = {
    NpcId = "30318",
    Alias = "Npc30318",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 353031800,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1909.284, y = 203.0997, z = 2503.89}, rot = {x = 0, y = 0, z = 0}},
                    freestyle = 1230,
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 353031801,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1636.974, y = 200.7683, z = 2568.763}, rot = {x = 0, y = 250, z = 0}},
                    freestyle = 1120,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_30318",
                priority = 0,
                condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73507
local v = 73508
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 290
tbl.dialogDataList = {{dialogId = 1018303180, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5120,
            activityCondId = 5120001,
            isActivityValid = true
        }
    }
}

local tbl2 = {}
local validQuestIds2 = {}
local n2 = 73507
local n3 = 73508
validQuestIds2[1] = 0
validQuestIds2[2] = n2
validQuestIds2[3] = n3
tbl2.validQuestIds = validQuestIds2
tbl2.priority = 299
tbl2.dialogDataList = {{dialogId = 1018303182, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5120,
            activityCondId = 5120013,
            isActivityValid = true
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config30318.Data = data
return Config30318
