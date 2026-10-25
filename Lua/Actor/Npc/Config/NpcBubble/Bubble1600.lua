require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1600 = {}
local data = {NpcId = 1600, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016160000, Mode = talkMode.BOTH, BubbleTime = 1.5}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1600.Data = data

Bubble1600.BubbleData = {
    {
        condition = {questGlobalVarId = 2002901, questGlobalVarValue = 2, questGlobalVarOperate = compareOperation.Less},
        bubbleDatas = {{dialogId = 1016160000, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {
            questGlobalVarId = 2002901,
            questGlobalVarValue = 1,
            questGlobalVarOperate = compareOperation.Greater
        },
        bubbleDatas = {{dialogId = 1016160001, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1600
