require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble2085 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016208500, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}}
}

local v = {
    condition = {},
    bubbleDatas = {{dialogId = 1016208501, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}}
}

local tbl2 = {
    condition = {priority = 1},
    bubbleDatas = {{dialogId = 1016208502, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2010,
                activityCondId = 2010002,
                isActivityValid = true
            },
            {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
        }
    }
}

local tbl3 = {
    condition = {priority = 2},
    bubbleDatas = {{dialogId = 1016208503, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2019,
                activityCondId = 2019001,
                isActivityValid = true
            },
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 4009201,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    }
}

local tbl4 = {
    condition = {priority = 3},
    bubbleDatas = {{dialogId = 1016208504, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2036,
                activityCondId = 2036001,
                isActivityValid = true
            }
        }
    }
}

local tbl5 = {
    condition = {priority = 3},
    bubbleDatas = {{dialogId = 1016208504, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 173}
local paramList = {}
local n = 0
local n2 = 2
paramList[1] = 101001
paramList[2] = n
paramList[3] = n2
tbl7.paramList = paramList
tbl6[1] = tbl7
conditionGrp[1] = tbl6
tbl5.conditionGrp = conditionGrp
bubbleData[1] = tbl
bubbleData[2] = v
bubbleData[3] = tbl2
bubbleData[4] = tbl3
bubbleData[5] = tbl4
bubbleData[6] = tbl5
Bubble2085.BubbleData = bubbleData
return Bubble2085
