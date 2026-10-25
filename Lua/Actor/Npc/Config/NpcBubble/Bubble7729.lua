require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7729 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016772900, duration = 0, intervalMin = 20, intervalMax = 30}}
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
    bubbleDatas = {{dialogId = 1016772901, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 3
paramList2[1] = 99902
paramList2[2] = n2
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2
bubbleData[1] = tbl
bubbleData[2] = tbl3
Bubble7729.BubbleData = bubbleData
return Bubble7729
