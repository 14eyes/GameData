require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1597 = {}
local data = {NpcId = 1597, Pattern = voicePattern.TALK, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 60
bubbleInterval[1] = 30
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
data.IsInitiator = 1
local talkInterval = {}
local v = 60
talkInterval[1] = 30
talkInterval[2] = v
data.TalkInterval = talkInterval
local talkData = {}
local tbl = {Index = 1, TargetList = {"Npc1598"}}
local dialogData = {}
local tbl2 = {Id = 1016159700, Mode = talkMode.BOTH, BubbleTime = 2.1}
local bubbleInterval2 = {}
local n2 = 2
bubbleInterval2[1] = 1
bubbleInterval2[2] = n2
tbl2.BubbleInterval = bubbleInterval2
tbl2.Target = "Npc1598"
tbl2.TargetIndex = 1
dialogData[1] = tbl2
tbl.DialogData = dialogData
local talkInterval2 = {}
local n3 = 60
talkInterval2[1] = 30
talkInterval2[2] = n3
tbl.TalkInterval = talkInterval2
talkData[1] = tbl
data.TalkData = talkData
Bubble1597.Data = data

Bubble1597.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {{dialogId = 1016159700, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1597
