require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7452 = {}
local bubbleData = {}

local tbl = {
    condition = {priority = 1},
    bubbleDatas = {{dialogId = 1016745200, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7718404
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
local tbl3 = {}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 0
paramList2[1] = 7718402
paramList2[2] = n2
tbl4.paramList = paramList2
tbl3[1] = tbl4
conditionGrp[1] = v
conditionGrp[2] = tbl3
tbl.conditionGrp = conditionGrp

local tbl5 = {
    condition = {priority = 2},
    bubbleDatas = {{dialogId = 1016745201, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp2 = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 118}
local paramList3 = {}
local n3 = 0
paramList3[1] = 7718402
paramList3[2] = n3
tbl7.paramList = paramList3
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList4 = {}
local n4 = 1
paramList4[1] = 7718404
paramList4[2] = n4
tbl8.paramList = paramList4
tbl6[1] = tbl7
tbl6[2] = tbl8
conditionGrp2[1] = tbl6
tbl5.conditionGrp = conditionGrp2
bubbleData[1] = tbl
bubbleData[2] = tbl5
Bubble7452.BubbleData = bubbleData
return Bubble7452
