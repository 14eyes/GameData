require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble4170 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016417000, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
}

local v = {hideSpeechBubble = true, condition = {priority = 2}, bubbleDatas = {}}
local conditionGrp = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5296001
local n2 = 1
paramList[1] = 5296
paramList[2] = n
paramList[3] = n2
tbl3.paramList = paramList
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n3 = 1
paramList2[1] = 7650801
paramList2[2] = n3
tbl4.paramList = paramList2
tbl2[1] = tbl3
tbl2[2] = tbl4
conditionGrp[1] = tbl2
v.conditionGrp = conditionGrp
local tbl5 = {hideSpeechBubble = true, condition = {priority = 1}, bubbleDatas = {}}
local conditionGrp2 = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList3 = {}
local n4 = 2043002
local n5 = 1
paramList3[1] = 2043
paramList3[2] = n4
paramList3[3] = n5
tbl7.paramList = paramList3
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n6 = 3
paramList4[1] = 7370503
paramList4[2] = n6
tbl8.paramList = paramList4
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList5 = {}
local n7 = 5296001
local n8 = 0
paramList5[1] = 5296
paramList5[2] = n7
paramList5[3] = n8
tbl9.paramList = paramList5
tbl6[1] = tbl7
tbl6[2] = tbl8
tbl6[3] = tbl9
conditionGrp2[1] = tbl6
tbl5.conditionGrp = conditionGrp2
bubbleData[1] = tbl
bubbleData[2] = v
bubbleData[3] = tbl5
Bubble4170.BubbleData = bubbleData
return Bubble4170
