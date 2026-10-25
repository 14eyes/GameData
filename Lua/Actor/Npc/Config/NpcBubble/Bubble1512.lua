require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1512 = {}
local data = {NpcId = 1512, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 120
bubbleInterval[1] = 60
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016151200, Mode = talkMode.BOTH, BubbleTime = 0.9}
local v = {}
local n2 = 120
v[1] = 60
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016151201, Mode = talkMode.BOTH, BubbleTime = 1.0}
local bubbleInterval2 = {}
local n3 = 120
bubbleInterval2[1] = 60
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1512.Data = data

Bubble1512.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016151200, duration = 0, intervalMin = 60, intervalMax = 120},
            {dialogId = 1016151201, duration = 0, intervalMin = 60, intervalMax = 120}
        }
    }
}

return Bubble1512
