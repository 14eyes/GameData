require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1599 = {}
local data = {NpcId = 1599, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016159900, Mode = talkMode.BOTH, BubbleTime = 3.2}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1599.Data = data

Bubble1599.BubbleData = {
    {
        condition = {questGlobalVarId = 2002901, questGlobalVarValue = 2, questGlobalVarOperate = compareOperation.Less},
        bubbleDatas = {{dialogId = 1016159900, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {
            questGlobalVarId = 2002901,
            questGlobalVarValue = 1,
            questGlobalVarOperate = compareOperation.Greater
        },
        bubbleDatas = {{dialogId = 1016159901, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1599
