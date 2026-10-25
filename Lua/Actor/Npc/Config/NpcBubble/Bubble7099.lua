require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble7099 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016709900, duration = 10, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7601101
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 1
paramList2[1] = 7600901
paramList2[2] = n2
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList3 = {}
local n3 = 2
paramList3[1] = 7665004
paramList3[2] = n3
tbl4.paramList = paramList3
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList4 = {}
local n4 = 0
paramList4[1] = 7601101
paramList4[2] = n4
tbl6.paramList = paramList4
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList5 = {}
local n5 = 1
paramList5[1] = 7600901
paramList5[2] = n5
tbl7.paramList = paramList5
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList6 = {}
local n6 = 0
paramList6[1] = 7665009
paramList6[2] = n6
tbl8.paramList = paramList6
tbl5[1] = tbl6
tbl5[2] = tbl7
tbl5[3] = tbl8
conditionGrp[1] = v
conditionGrp[2] = tbl5
tbl.conditionGrp = conditionGrp
bubbleData[1] = tbl
Bubble7099.BubbleData = bubbleData
return Bubble7099
