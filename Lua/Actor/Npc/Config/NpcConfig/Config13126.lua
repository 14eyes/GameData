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
local Config13126 = {}

local data = {
    NpcId = "13126",
    Alias = "Npc13126",
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_13126",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 13026
validQuestIds[1] = 13025
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018131260, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1302505,
            questState = questState.UnFinished
        }
    },
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1302601,
            questState = questState.UnFinished
        }
    }
}

nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config13126.Data = data
return Config13126
