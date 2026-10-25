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
local Config4169 = {}

local data = {
    NpcId = "4169",
    Alias = "Npc4169",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1929.176, y = 203.7407, z = 2689.31}, rot = {x = 0, y = 162.5539, z = 0}},
                    freestyle = 1120,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4169",
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
    dialogDataList = {{dialogId = 1018416900, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {
    validQuestIds = {14037},
    priority = 300,
    dialogDataList = {{dialogId = 1018416901, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl2 = {}
local validQuestIds = {}
local n = 14039
validQuestIds[1] = 14038
validQuestIds[2] = n
tbl2.validQuestIds = validQuestIds
tbl2.priority = 300
tbl2.dialogDataList = {{dialogId = 1018416902, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403804,
            questState = questState.Finished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config4169.Data = data
return Config4169
