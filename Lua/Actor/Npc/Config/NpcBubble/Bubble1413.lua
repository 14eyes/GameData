require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1413 = {}
local data = {NpcId = 1413, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016141300, Mode = talkMode.BOTH, BubbleTime = 1.5}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016141301, Mode = talkMode.BOTH, BubbleTime = 1.7}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
local tbl3 = {Id = 1016141302, Mode = talkMode.BOTH, BubbleTime = 3.1}
local bubbleInterval3 = {}
local n4 = 30
bubbleInterval3[1] = 20
bubbleInterval3[2] = n4
tbl3.BubbleInterval = bubbleInterval3
dialogData[1] = tbl
dialogData[2] = tbl2
dialogData[3] = tbl3
data.DialogData = dialogData
Bubble1413.Data = data

Bubble1413.BubbleData = {
    {
        condition = {daily = dailyCondition.Day},
        bubbleDatas = {
            {dialogId = 1016141300, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016141301, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {daily = dailyCondition.Night},
        bubbleDatas = {{dialogId = 1016141302, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1413
