require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble2353 = {}
local bubbleData = {}

local tbl = {
    condition = {priority = 99},
    bubbleDatas = {{dialogId = 1016235300, duration = 5, intervalMin = 65, intervalMax = 65}}
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
bubbleData[1] = tbl
Bubble2353.BubbleData = bubbleData
return Bubble2353
