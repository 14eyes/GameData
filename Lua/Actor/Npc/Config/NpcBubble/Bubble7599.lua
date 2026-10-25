require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7599 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016759900, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 161}
local paramList = {}
local n = 766779902
local n2 = 0
local n3 = 0
paramList[1] = 400630001
paramList[2] = n
paramList[3] = n2
paramList[4] = n3
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

local tbl3 = {
    condition = {},
    bubbleDatas = {{dialogId = 1016759901, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 161}
local paramList2 = {}
local n4 = 766779902
local n5 = 0
local n6 = 1
paramList2[1] = 400630001
paramList2[2] = n4
paramList2[3] = n5
paramList2[4] = n6
tbl5.paramList = paramList2
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 161}
local paramList3 = {}
local n7 = 766779902
local n8 = 4
local n9 = 4
paramList3[1] = 400630001
paramList3[2] = n7
paramList3[3] = n8
paramList3[4] = n9
tbl6.paramList = paramList3
tbl4[1] = tbl5
tbl4[2] = tbl6
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2
bubbleData[1] = tbl
bubbleData[2] = tbl3
Bubble7599.BubbleData = bubbleData
return Bubble7599
