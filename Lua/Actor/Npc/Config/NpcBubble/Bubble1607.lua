require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1607 = {}
local data = {NpcId = 1607, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016160700, Mode = talkMode.BOTH, BubbleTime = 9.1}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1607.Data = data

Bubble1607.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {{dialogId = 1016160700, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {activityId = 2003, activityCondId = 2003000, isActivityValid = true, priority = 1},
        bubbleDatas = {{dialogId = 1016160701, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1607
