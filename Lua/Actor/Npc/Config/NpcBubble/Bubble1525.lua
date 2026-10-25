require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1525 = {}
local data = {NpcId = 1525, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016152500, Mode = talkMode.BOTH, BubbleTime = 3.6}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1525.Data = data

Bubble1525.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {{dialogId = 1016152500, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {
            questGlobalVarId = 70516,
            questGlobalVarValue = 2,
            questGlobalVarOperate = compareOperation.Greater,
            activityId = 5085,
            activityCondId = 5085005,
            isActivityValid = true,
            priority = 1
        },
        bubbleDatas = {}
    }
}

return Bubble1525
