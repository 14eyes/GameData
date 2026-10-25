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
local Config4042 = {}

local data = {
    NpcId = "4042",
    Alias = "Npc4042",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -443.0466, y = 235.9173, z = 2776.088}, rot = {x = 0, y = 127.473, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4042",
                priority = 0,
                condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 13031
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 10
tbl.dialogDataList = {{dialogId = 1018404200, duration = 0, intervalMin = 20, intervalMax = 30}}

local v = {
    validQuestIds = {23015},
    priority = 300,
    dialogDataList = {{dialogId = 1018404201, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23015, questState = 2}}}
}

local tbl2 = {
    validQuestIds = {23016},
    priority = 300,
    dialogDataList = {{dialogId = 1018404202, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23016, questState = 2}}}
}

local tbl3 = {
    validQuestIds = {13031},
    priority = 300,
    dialogDataList = {{dialogId = 130319909, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303107,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
data.NahidaNarratorData = nahidaNarratorData
Config4042.Data = data
return Config4042
