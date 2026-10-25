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
local Config21842 = {}
local data = {NpcId = "21842", Alias = "Npc21842"}
local reactionData = {}
local reactionDatas = {}

local tbl = {
    _type_ = NpcConfigCommon.ReactDataType.SimpleSerial,
    reactionId = 1,
    bornPosId = 0,
    priority = 0,
    triggerCD = 0,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList = {}
local n = 2201
local n2 = 0
paramList[1] = 0
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 7, compare = 0}
v[1] = tbl2
v[2] = tbl3
preConditions[1] = v
tbl.preConditions = preConditions
local runningConditions = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 20, compare = 0}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList2 = {}
local n3 = 2201
local n4 = 0
paramList2[1] = 0
paramList2[2] = n3
paramList2[3] = n4
tbl6.paramList = paramList2
tbl4[1] = tbl5
tbl4[2] = tbl6
runningConditions[1] = tbl4
tbl.runningConditions = runningConditions
tbl.beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}}
tbl.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 4474, time = 0}}
reactionDatas[1] = tbl
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config21842.Data = data
return Config21842
