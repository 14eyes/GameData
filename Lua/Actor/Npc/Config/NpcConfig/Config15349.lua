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
local Config15349 = {}
local data = {NpcId = "15349", Alias = "Npc15349"}
local titleDataNew = {}
local titleDatas = {}

local tbl = {
    titleStr = "NPC_TITLE_15349",
    priority = 1,
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 600717,
                questState = questState.Finished
            }
        }
    }
}

local v = {titleStr = "NPC_TITLE_15349_1", priority = 10, isBanDaily = false}
local validQuestIds = {}
local n = 6005
local n2 = 6006
validQuestIds[1] = 6004
validQuestIds[2] = n
validQuestIds[3] = n2
v.validQuestIds = validQuestIds
v.conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
titleDatas[1] = tbl
titleDatas[2] = v
titleDataNew.titleDatas = titleDatas
data.TitleDataNew = titleDataNew
local explicitNameData = {}
local nameDatas = {}

local tbl2 = {
    nameStr = "NPC_EXPNAME_15349",
    priority = 1,
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 600717,
                questState = questState.Finished
            }
        }
    }
}

local tbl3 = {nameStr = "NPC_EXPNAME_15349_1", priority = 10, isBanDaily = false}
local validQuestIds2 = {}
local n3 = 6005
local n4 = 6006
validQuestIds2[1] = 6004
validQuestIds2[2] = n3
validQuestIds2[3] = n4
tbl3.validQuestIds = validQuestIds2
tbl3.conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
nameDatas[1] = tbl2
nameDatas[2] = tbl3
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config15349.Data = data
return Config15349
