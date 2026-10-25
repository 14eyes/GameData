require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1561 = {}
local data = {NpcId = 1561, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016156100, Mode = talkMode.BOTH, BubbleTime = 2.7}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016156101, Mode = talkMode.BOTH, BubbleTime = 2.1}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1561.Data = data

Bubble1561.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016156100, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016156101, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {
            questGlobalVarId = 70516,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Greater,
            activityId = 5085,
            activityCondId = 5085005,
            isActivityValid = true,
            priority = 1
        },
        bubbleDatas = {}
    }
}

return Bubble1561
