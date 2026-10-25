require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble2510 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016251000, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
}

local v = {
    hideSpeechBubble = true,
    condition = {priority = 1},
    bubbleDatas = {{dialogId = 1016251001, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5278101
local n2 = 1
paramList[1] = 5278
paramList[2] = n
paramList[3] = n2
tbl3.paramList = paramList
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 4019909
paramList2[2] = n3
tbl4.paramList = paramList2
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList3 = {}
local n4 = 3
paramList3[1] = 4020101
paramList3[2] = n4
tbl5.paramList = paramList3
tbl2[1] = tbl3
tbl2[2] = tbl4
tbl2[3] = tbl5
conditionGrp[1] = tbl2
v.conditionGrp = conditionGrp
bubbleData[1] = tbl
bubbleData[2] = v
Bubble2510.BubbleData = bubbleData
return Bubble2510
