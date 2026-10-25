require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1439 = {}
local data = {NpcId = 1439, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016143900, Mode = talkMode.BOTH, BubbleTime = 2.7}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016143901, Mode = talkMode.BOTH, BubbleTime = 1.1}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1439.Data = data

Bubble1439.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {
            {dialogId = 1016143900, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016143901, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {mainQuestId = 359, questState = questState.UnFinished, priority = 1},
        bubbleDatas = {}
    },
    {
        condition = {activityId = 2003, activityCondId = 2003000, isActivityValid = true, priority = 2},
        bubbleDatas = {{dialogId = 1016143902, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {priority = 2},
        bubbleDatas = {{dialogId = 1016143903, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = true
                },
                {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40078, questState = 3}
            }
        }
    },
    {
        condition = {activityId = 2020, activityCondId = 2020001, isActivityValid = true, priority = 3},
        bubbleDatas = {{dialogId = 1016143904, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

return Bubble1439
