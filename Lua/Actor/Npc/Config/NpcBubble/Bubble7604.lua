require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7604 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016760400, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 99902
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

local tbl3 = {
    condition = {},
    bubbleDatas = {{dialogId = 1016760401, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 161}
local paramList2 = {}
local n2 = 766779903
local n3 = 0
local n4 = 0
paramList2[1] = 400630001
paramList2[2] = n2
paramList2[3] = n3
paramList2[4] = n4
tbl5.paramList = paramList2
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 161}
local paramList3 = {}
local n5 = 766779901
local n6 = 0
local n7 = 0
paramList3[1] = 400630001
paramList3[2] = n5
paramList3[3] = n6
paramList3[4] = n7
tbl6.paramList = paramList3
tbl4[1] = tbl5
tbl4[2] = tbl6
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2

local tbl7 = {
    condition = {},
    bubbleDatas = {{dialogId = 1016760402, duration = 3, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp3 = {}
local tbl8 = {}
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n8 = 3
paramList4[1] = 99902
paramList4[2] = n8
tbl9.paramList = paramList4
tbl8[1] = tbl9
conditionGrp3[1] = tbl8
tbl7.conditionGrp = conditionGrp3
bubbleData[1] = tbl
bubbleData[2] = tbl3
bubbleData[3] = tbl7
Bubble7604.BubbleData = bubbleData
return Bubble7604
