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
local Config4481 = {}
local data = {NpcId = "4481", Alias = "Npc4481"}
local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 200,
    dialogDataList = {{dialogId = 1018448100, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions = {}
local v = {}

local tbl2 = {
    _type_ = LuaVirtualType.NpcActionSubQuestCondition,
    subQuestId = 4021010,
    questState = questState.Finished
}

local tbl3 = {
    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
    activityId = 2043,
    activityCondId = 2043001,
    isActivityValid = true
}

local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList = {}
local n = 3
paramList[1] = 4021101
paramList[2] = n
tbl4.paramList = paramList
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditions[1] = v
tbl.conditions = conditions

local tbl5 = {
    validQuestIds = {0},
    priority = 200,
    dialogDataList = {{dialogId = 1018448101, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021129,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2043,
                activityCondId = 2043003,
                isActivityValid = true
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl5
data.NahidaNarratorData = nahidaNarratorData
Config4481.Data = data
return Config4481
