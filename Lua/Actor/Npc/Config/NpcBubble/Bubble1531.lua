require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble1531 = {}
local data = {NpcId = 1531, Pattern = voicePattern.SOLO, TalkMode = talkMode.BOTH, BubbleTime = 5}
local bubbleInterval = {}
local n = 30
bubbleInterval[1] = 20
bubbleInterval[2] = n
data.BubbleInterval = bubbleInterval
local dialogData = {}
local tbl = {Id = 1016153100, Mode = talkMode.BOTH, BubbleTime = 5.2}
local v = {}
local n2 = 30
v[1] = 20
v[2] = n2
tbl.BubbleInterval = v
dialogData[1] = tbl
data.DialogData = dialogData
Bubble1531.Data = data

Bubble1531.BubbleData = {
    {
        condition = {daily = dailyCondition.AllDay},
        bubbleDatas = {{dialogId = 1016153100, duration = 0, intervalMin = 20, intervalMax = 30}}
    },
    {
        condition = {priority = 1},
        bubbleDatas = {{dialogId = 1016153101, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = true
                },
                {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40079, questState = 3}
            }
        }
    }
}

return Bubble1531
