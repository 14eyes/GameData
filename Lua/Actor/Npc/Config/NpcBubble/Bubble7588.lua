require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7588 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016758800, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 158}
local paramList = {}
local n = 0
local n2 = 0
paramList[1] = 10000148
paramList[2] = n
paramList[3] = n2
tbl3.paramList = paramList
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

local tbl4 = {
    condition = {},
    bubbleDatas = {{dialogId = 1016758801, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp2 = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList2 = {}
local n3 = 0
local n4 = 0
paramList2[1] = 10000148
paramList2[2] = n3
paramList2[3] = n4
tbl7.paramList = paramList2
tbl5[1] = tbl6
tbl5[2] = tbl7
conditionGrp2[1] = tbl5
tbl4.conditionGrp = conditionGrp2
bubbleData[1] = tbl
bubbleData[2] = tbl4
Bubble7588.BubbleData = bubbleData
return Bubble7588
