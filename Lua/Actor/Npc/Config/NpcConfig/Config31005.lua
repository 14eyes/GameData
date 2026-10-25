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
local Config31005 = {}
local data = {NpcId = "31005", Alias = "Npc31005"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 653100500, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5315001
local n2 = 1
paramList[1] = 5315
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7055801
paramList2[2] = n3
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 2099.257, y = 210.1667, z = -1002.393}, rot = {x = 0, y = 312.1846, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
local reactionData = {}
local reactionDatas = {}

local tbl4 = {
    _type_ = NpcConfigCommon.ReactDataType.SimpleSerial,
    reactionId = 1,
    bornPosId = 653100500,
    priority = 0,
    triggerCD = 5,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList3 = {}
local n4 = 5315001
local n5 = 1
paramList3[1] = 5315
paramList3[2] = n4
paramList3[3] = n5
tbl6.paramList = paramList3
local tbl7 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 2.5, compare = 0}
tbl5[1] = tbl6
tbl5[2] = tbl7
preConditions[1] = tbl5
tbl4.preConditions = preConditions
local runningConditions = {}
local tbl8 = {}
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList4 = {}
local n6 = 5315001
local n7 = 1
paramList4[1] = 5315
paramList4[2] = n6
paramList4[3] = n7
tbl9.paramList = paramList4
local tbl10 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 2.5, compare = 0}
tbl8[1] = tbl9
tbl8[2] = tbl10
runningConditions[1] = tbl8
tbl4.runningConditions = runningConditions
tbl4.beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}}
tbl4.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1210, time = 0}}
reactionDatas[1] = tbl4
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config31005.Data = data
return Config31005
