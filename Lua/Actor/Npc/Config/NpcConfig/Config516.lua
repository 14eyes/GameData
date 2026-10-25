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
local Config516 = {}
local data = {NpcId = "516", Alias = "Coop_Kaeya"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 19079
validQuestIds[1] = 19073
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 301
tbl.dialogDataList = {{dialogId = 1018051602, duration = 0, intervalMin = 20, intervalMax = 30}}

local v = {
    validQuestIds = {19098},
    priority = 302,
    dialogDataList = {
        {dialogId = 1018051601, duration = 0, intervalMin = 20, intervalMax = 30},
        {dialogId = 1018051600, duration = 0, intervalMin = 20, intervalMax = 30}
    },
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1909803,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config516.Data = data
return Config516
