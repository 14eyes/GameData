require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1543 = {}
local data = {NpcId = 1543, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016154300, Mode = talkMode.BOTH, BubbleTime = 2.1}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016154301, Mode = talkMode.BOTH, BubbleTime = 3.9}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
local tbl3 = {Id = 1016154302, Mode = talkMode.BOTH, BubbleTime = 4.2}
local bubbleInterval3 = {}
local n4 = 30
bubbleInterval3[1] = 20
bubbleInterval3[2] = n4
tbl3.BubbleInterval = bubbleInterval3
dialogData[1] = tbl
dialogData[2] = tbl2
dialogData[3] = tbl3
data.DialogData = dialogData
Bubble1543.Data = data

Bubble1543.BubbleData = {
    {
        condition = {daily = dailyCondition.Day},
        bubbleDatas = {
            {dialogId = 1016154300, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016154301, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {daily = dailyCondition.Night},
        bubbleDatas = {{dialogId = 1016154302, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1543
