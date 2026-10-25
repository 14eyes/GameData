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
local Config13854 = {}
local data = {NpcId = "13854", Alias = "Npc13854"}
local titleDataNew = {}
local titleDatas = {}
local tbl = {titleStr = "NPC_TITLE_13854", priority = 0}
local conditions = {}

local v = {
    {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
    {
        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
        subQuestId = 4013902,
        questState = questState.Finished
    }
}

local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 173}
local paramList = {}
local n = 0
local n2 = 2
paramList[1] = 101001
paramList[2] = n
paramList[3] = n2
tbl4.paramList = paramList
tbl2[1] = tbl3
tbl2[2] = tbl4
conditions[1] = v
conditions[2] = tbl2
tbl.conditions = conditions
titleDatas[1] = tbl
titleDataNew.titleDatas = titleDatas
data.TitleDataNew = titleDataNew

data.ExplicitNameData = {
    nameDatas = {
        {
            nameStr = "NPC_EXPNAME_13854",
            priority = 3,
            conditions = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 4013902,
                        questState = questState.UnFinished
                    }
                }
            }
        }
    }
}

Config13854.Data = data
return Config13854
