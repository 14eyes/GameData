require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1405 = {}
local data = {NpcId = 1405, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016140500, Mode = talkMode.BOTH, BubbleTime = 4.3}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016140501, Mode = talkMode.BOTH, BubbleTime = 5.0}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1405.Data = data

Bubble1405.BubbleData = {
    {
        condition = {
            taskVarId = 24800,
            taskVarIndex = 1,
            taskVarValue = 1,
            taskVarOperate = compareOperation.Equal,
            questGlobalVarId = 2001401,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        },
        bubbleDatas = {{dialogId = 614059901, duration = 3, intervalMin = 10, intervalMax = 15}}
    },
    {
        condition = {
            daily = dailyCondition.AllDay,
            questGlobalVarId = 2001401,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        },
        bubbleDatas = {
            {dialogId = 1016140500, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016140501, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    }
}

return Bubble1405
