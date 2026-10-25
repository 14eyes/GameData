require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1403 = {}
local data = {NpcId = 1403, Pattern = voicePattern.TALK, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
data.IsInitiator = 1
local talkInterval = {}
local v = 10
talkInterval[1] = 5
talkInterval[2] = v
data.TalkInterval = talkInterval
local talkData = {}
local tbl = {Index = 1, TargetList = {"Npc1401"}}
local dialogData = {}
local tbl2 = {Id = 1016140300, Mode = talkMode.BOTH, BubbleTime = 2.3}
local bubbleInterval2 = {}
local n2 = 2
bubbleInterval2[1] = 1
bubbleInterval2[2] = n2
tbl2.BubbleInterval = bubbleInterval2
tbl2.Target = "Npc1401"
tbl2.TargetIndex = 1
local tbl3 = {Id = 1016140301, Mode = talkMode.BOTH, BubbleTime = 2.8}
local bubbleInterval3 = {}
local n3 = 2
bubbleInterval3[1] = 1
bubbleInterval3[2] = n3
tbl3.BubbleInterval = bubbleInterval3
tbl3.Target = "Npc1401"
tbl3.TargetIndex = 2
local tbl4 = {Id = 1016140302, Mode = talkMode.BOTH, BubbleTime = 2.6}
local bubbleInterval4 = {}
local n4 = 2
bubbleInterval4[1] = 1
bubbleInterval4[2] = n4
tbl4.BubbleInterval = bubbleInterval4
tbl4.Target = "Npc1401"
tbl4.TargetIndex = 0
dialogData[1] = tbl2
dialogData[2] = tbl3
dialogData[3] = tbl4
tbl.DialogData = dialogData
local talkInterval2 = {}
local n5 = 30
talkInterval2[1] = 20
talkInterval2[2] = n5
tbl.TalkInterval = talkInterval2
talkData[1] = tbl
data.TalkData = talkData
Bubble1403.Data = data

Bubble1403.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016140300, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016140301, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {activityId = 2020, activityCondId = 2020001, isActivityValid = true, priority = 2},
        bubbleDatas = {{dialogId = 1016140303, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {activityId = 2016, activityCondId = 2016001, isActivityValid = true, priority = 1},
        bubbleDatas = {{dialogId = 1016140304, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1403
