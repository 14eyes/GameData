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
local Config4406 = {}

local data = {
    NpcId = "4406",
    Alias = "Npc4406",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1979.46, y = 290.5375, z = 4090.991}, rot = {x = 0, y = 8.348492, z = 0}},
                    freestyle = 4010,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4406",
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
    dialogDataList = {{dialogId = 1018440600, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {}
local validQuestIds = {}
local n = 73233
local n2 = 23042
local n3 = 23043
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = n2
validQuestIds[4] = n3
v.validQuestIds = validQuestIds
v.priority = 300
v.dialogDataList = {{dialogId = 1018440601, duration = 3, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73233, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23042, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23043, questState = 2}}
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config4406.Data = data
return Config4406
