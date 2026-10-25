require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1553 = {}
local data = {NpcId = 1553, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016155300, Mode = talkMode.BOTH, BubbleTime = 1.5}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
local tbl2 = {Id = 1016155301, Mode = talkMode.BOTH, BubbleTime = 3.0}
local bubbleInterval2 = {}
local n3 = 30
bubbleInterval2[1] = 20
bubbleInterval2[2] = n3
tbl2.BubbleInterval = bubbleInterval2
dialogData[1] = tbl
dialogData[2] = tbl2
data.DialogData = dialogData
Bubble1553.Data = data

Bubble1553.BubbleData = {
    {
        condition = {},
        bubbleDatas = {
            {dialogId = 1016155300, duration = 0, intervalMin = 20, intervalMax = 30},
            {dialogId = 1016155301, duration = 0, intervalMin = 20, intervalMax = 30}
        },
        conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
    },
    {
        condition = {priority = 1},
        bubbleDatas = {{dialogId = 1016155302, duration = 0, intervalMin = 20, intervalMax = 30}},
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

return Bubble1553
