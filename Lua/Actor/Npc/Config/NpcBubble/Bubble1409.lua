require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1409 = {}
local data = {NpcId = 1409, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016140900, Mode = talkMode.BOTH, BubbleTime = 3.0}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016140901, Mode = talkMode.BOTH, BubbleTime = 2.1}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
local tbl3 = {Id = 1016140902, Mode = talkMode.BOTH, BubbleTime = 2.4}
local bubbleInterval3 = {}
local n4 = 30
bubbleInterval3[1] = 20
bubbleInterval3[2] = n4
tbl3.BubbleInterval = bubbleInterval3
dialogData[1] = tbl
dialogData[2] = tbl2
dialogData[3] = tbl3
data.DialogData = dialogData
Bubble1409.Data = data

Bubble1409.BubbleData = {
    {
        condition = {daily = dailyCondition.Day},
        bubbleDatas = {
            {dialogId = 1016140900, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016140901, duration = 0, intervalMin = 20, intervalMax = 30}
        }
    },
    {
        condition = {daily = dailyCondition.Night},
        bubbleDatas = {{dialogId = 1016140902, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {
            activityId = 2003,
            activityCondId = 2003000,
            isActivityValid = true,
            daily = dailyCondition.Day,
            priority = 1
        },
        bubbleDatas = {{dialogId = 1016140903, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {priority = 1},
        bubbleDatas = {{dialogId = 1016140904, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = true
                },
                {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40078, questState = 3},
                {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}
            }
        }
    },
    {
        condition = {priority = 2},
        bubbleDatas = {{dialogId = 1016140905, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditionGrp = {
            {
                {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day},
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

return Bubble1409
