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
local Config4349 = {}

local data = {
    NpcId = "4349",
    Alias = "Npc4349",
    DailyScheduleData = {
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -670.8645, y = 212.3398, z = 2737.913}, rot = {x = 0, y = 191.9059, z = 0}},
                    freestyle = 1120,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4349",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 11,
    dialogDataList = {{dialogId = 1018434900, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {
    validQuestIds = {0},
    priority = 110,
    dialogDataList = {{dialogId = 1018434901, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 1
paramList[1] = 603801
paramList[2] = n
tbl3.paramList = paramList
tbl2[1] = tbl3
conditions[1] = tbl2
v.conditions = conditions
nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config4349.Data = data
return Config4349
