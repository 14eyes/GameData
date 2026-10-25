require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1427 = {}
local data = {NpcId = 1427, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016142700, Mode = talkMode.BOTH, BubbleTime = 6.2}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016142701, Mode = talkMode.BOTH, BubbleTime = 3.3}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1427.Data = data

Bubble1427.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016142700, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016142701, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {activityId = 2003, activityCondId = 2003000, isActivityValid = true, priority = 1},
        bubbleDatas = {{dialogId = 1016142702, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {activityId = 2016, activityCondId = 2016001, isActivityValid = true, priority = 1},
        bubbleDatas = {{dialogId = 1016142703, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {activityId = 2020, activityCondId = 2020001, isActivityValid = true, priority = 2},
        bubbleDatas = {{dialogId = 1016142704, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1427
