require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1401 = {}
local data = {NpcId = 1401, Pattern = voicePattern.TALK, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
data.IsInitiator = 0
local talkInterval = {}
local v = 10
talkInterval[1] = 5
talkInterval[2] = v
data.TalkInterval = talkInterval
local talkData = {}
local tbl = {Index = 1, TargetList = {"Npc1403"}}
local dialogData = {}
local tbl2 = {Id = 1016140100, Mode = talkMode.BOTH, BubbleTime = 1.7}
local bubbleInterval2 = {}
local n2 = 2
bubbleInterval2[1] = 1
bubbleInterval2[2] = n2
tbl2.BubbleInterval = bubbleInterval2
tbl2.Target = "Npc1403"
tbl2.TargetIndex = 2
local tbl3 = {Id = 1016140101, Mode = talkMode.BOTH, BubbleTime = 1.9}
local bubbleInterval3 = {}
local n3 = 2
bubbleInterval3[1] = 1
bubbleInterval3[2] = n3
tbl3.BubbleInterval = bubbleInterval3
tbl3.Target = "Npc1403"
tbl3.TargetIndex = 3
dialogData[1] = tbl2
dialogData[2] = tbl3
tbl.DialogData = dialogData
local talkInterval2 = {}
local n4 = 30
talkInterval2[1] = 20
talkInterval2[2] = n4
tbl.TalkInterval = talkInterval2
talkData[1] = tbl
data.TalkData = talkData
Bubble1401.Data = data

Bubble1401.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016140100, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016140101, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {activityId = 2020, activityCondId = 2020001, isActivityValid = true, priority = 2},
        bubbleDatas = {{dialogId = 1016140102, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {activityId = 2016, activityCondId = 2016001, isActivityValid = true, priority = 1},
        bubbleDatas = {{dialogId = 1016140103, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1401
