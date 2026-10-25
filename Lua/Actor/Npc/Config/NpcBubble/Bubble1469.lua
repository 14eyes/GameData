require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1469 = {}
local data = {NpcId = 1469, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016146900, Mode = talkMode.BOTH, BubbleTime = 2.4}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016146901, Mode = talkMode.BOTH, BubbleTime = 2.3}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1469.Data = data

Bubble1469.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016146900, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016146901, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    }
}

return Bubble1469
