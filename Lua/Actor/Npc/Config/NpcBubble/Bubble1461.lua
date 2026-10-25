require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1461 = {}
local data = {NpcId = 1461, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016146100, Mode = talkMode.BOTH, BubbleTime = 3.1}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1461.Data = data

Bubble1461.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {{dialogId = 1016146100, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {activityId = 2016, activityCondId = 2016001, isActivityValid = true, priority = 1},
        bubbleDatas = {{dialogId = 1016146101, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {priority = 2},
        bubbleDatas = {{dialogId = 1016146102, duration = 0, intervalMin = 20, intervalMax = 30}},
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

return Bubble1461
