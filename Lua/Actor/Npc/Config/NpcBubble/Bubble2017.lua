require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local Bubble2017 = {}
local bubbleData = {}

local tbl = {
    condition = {},
    bubbleDatas = {{dialogId = 1016201700, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
}

local v = {
    condition = {priority = 1},
    bubbleDatas = {{dialogId = 1016201702, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2010,
                activityCondId = 2010002,
                isActivityValid = true
            }
        }
    }
}

local tbl2 = {
    condition = {priority = 2},
    bubbleDatas = {{dialogId = 1016201703, duration = 0, intervalMin = 20, intervalMax = 30}},
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

local tbl3 = {
    condition = {priority = 3},
    bubbleDatas = {{dialogId = 1016201704, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2028,
                activityCondId = 2028001,
                isActivityValid = true
            }
        }
    }
}

local tbl4 = {
    condition = {priority = 3},
    bubbleDatas = {{dialogId = 1016201704, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditionGrp = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 173}
local paramList = {}
local n = 0
local n2 = 2
paramList[1] = 101001
paramList[2] = n
paramList[3] = n2
tbl6.paramList = paramList
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 4022408
paramList2[2] = n3
tbl7.paramList = paramList2
tbl5[1] = tbl6
tbl5[2] = tbl7
conditionGrp[1] = tbl5
tbl4.conditionGrp = conditionGrp
bubbleData[1] = tbl
bubbleData[2] = v
bubbleData[3] = tbl2
bubbleData[4] = tbl3
bubbleData[5] = tbl4
Bubble2017.BubbleData = bubbleData
return Bubble2017
