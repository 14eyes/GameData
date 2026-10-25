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
local Config31004 = {}
local data = {NpcId = "31004", Alias = "Npc31004"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 653100400, condition = {sceneId = 0, priority = 0}}
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
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7055901
paramList2[2] = n3
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n4 = 3
paramList3[1] = 7055801
paramList3[2] = n4
tbl4.paramList = paramList3
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {
            pos = {x = 2107.439, y = 210.1505, z = -1004.877},
            rot = {x = 348.5261, y = 147.5722, z = 1.980179}
        },
        freestyle = 1240,
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

local tbl5 = {
    _type_ = NpcConfigCommon.ReactDataType.SimpleSerial,
    reactionId = 1,
    bornPosId = 653100400,
    priority = 0,
    triggerCD = 5,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList4 = {}
local n5 = 5315001
local n6 = 1
paramList4[1] = 5315
paramList4[2] = n5
paramList4[3] = n6
tbl7.paramList = paramList4
local tbl8 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 2.5, compare = 0}
tbl6[1] = tbl7
tbl6[2] = tbl8
preConditions[1] = tbl6
tbl5.preConditions = preConditions
local runningConditions = {}
local tbl9 = {}
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList5 = {}
local n7 = 5315001
local n8 = 1
paramList5[1] = 5315
paramList5[2] = n7
paramList5[3] = n8
tbl10.paramList = paramList5
local tbl11 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 2.5, compare = 0}
tbl9[1] = tbl10
tbl9[2] = tbl11
runningConditions[1] = tbl9
tbl5.runningConditions = runningConditions
tbl5.beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}}
tbl5.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1200, time = 0}}
reactionDatas[1] = tbl5
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config31004.Data = data
return Config31004
