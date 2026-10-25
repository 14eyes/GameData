require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1630 = {}
local data = {NpcId = 1630, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016163000, Mode = talkMode.BOTH, BubbleTime = 4.8}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1630.Data = data

Bubble1630.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {{dialogId = 1016163000, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {priority = 1},
        bubbleDatas = {{dialogId = 1016163001, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = true
                },
                {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40080, questState = 3}
            }
        }
    }
}

return Bubble1630
