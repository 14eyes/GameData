require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1537 = {}
local data = {NpcId = 1537, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016153700, Mode = talkMode.BOTH, BubbleTime = 1.5}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016153701, Mode = talkMode.BOTH, BubbleTime = 3.1}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
local tbl3 = {Id = 1016153702, Mode = talkMode.BOTH, BubbleTime = 4.0}
local bubbleInterval3 = {}
local n4 = 30
bubbleInterval3[1] = 20
bubbleInterval3[2] = n4
tbl3.BubbleInterval = bubbleInterval3
local tbl4 = {Id = 1016153703, Mode = talkMode.BOTH, BubbleTime = 5.8}
local bubbleInterval4 = {}
local n5 = 30
bubbleInterval4[1] = 20
bubbleInterval4[2] = n5
tbl4.BubbleInterval = bubbleInterval4
dialogData[1] = tbl
dialogData[2] = tbl2
dialogData[3] = tbl3
dialogData[4] = tbl4
data.DialogData = dialogData
Bubble1537.Data = data

Bubble1537.BubbleData = {
    {
        condition = {daily = dailyCondition.Day},
        bubbleDatas = {
            {dialogId = 1016153700, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016153701, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {daily = dailyCondition.Night},
        bubbleDatas = {
            {dialogId = 1016153702, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016153703, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {
            activityId = 2016,
            activityCondId = 2016001,
            isActivityValid = true,
            daily = dailyCondition.Day,
            priority = 1
        },
        bubbleDatas = {{dialogId = 1016153705, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1537
