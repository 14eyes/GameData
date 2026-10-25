require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1433 = {}
local data = {NpcId = 1433, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016143300, Mode = talkMode.BOTH, BubbleTime = 1.6}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016143301, Mode = talkMode.BOTH, BubbleTime = 2.2}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1433.Data = data

Bubble1433.BubbleData = {
    {
        condition = {},
        bubbleDatas = {
            {dialogId = 1016143300, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016143301, duration = 0, intervalMin = 20, intervalMax = 30}
        },
        conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
    },
    {
        condition = {priority = 1},
        bubbleDatas = {{dialogId = 1016143302, duration = 0, intervalMin = 20, intervalMax = 30}},
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
        condition = {priority = 2},
        bubbleDatas = {{dialogId = 1016143303, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2020,
                    activityCondId = 2020001,
                    isActivityValid = true
                }
            }
        }
    }
}

return Bubble1433
