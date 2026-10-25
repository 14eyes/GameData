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
local Config4120 = {}

local data = {
    NpcId = "4120",
    Alias = "Npc4120",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -2069.253, y = 201.6223, z = 2601.653}, rot = {x = 0, y = 288.2922, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4120",
                priority = 0,
                condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 10,
    dialogDataList = {{dialogId = 1018412000, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {}
local validQuestIds = {}
local n = 14039
validQuestIds[1] = 14038
validQuestIds[2] = n
v.validQuestIds = validQuestIds
v.priority = 300
v.dialogDataList = {{dialogId = 1018412001, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config4120.Data = data
return Config4120
