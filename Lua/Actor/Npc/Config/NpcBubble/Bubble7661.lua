require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7661 = {}
local bubbleData = {}

local tbl = {
    condition = {priority = 1},
    bubbleDatas = {{dialogId = 1016766100, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 158}
local paramList = {}
local n = 0
local n2 = 0
paramList[1] = 10000127
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

local tbl3 = {
    condition = {priority = 1},
    bubbleDatas = {{dialogId = 1016766101, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList2 = {}
local n3 = 0
local n4 = 0
paramList2[1] = 10000127
paramList2[2] = n3
paramList2[3] = n4
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2
bubbleData[1] = tbl
bubbleData[2] = tbl3
Bubble7661.BubbleData = bubbleData
return Bubble7661
