require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local generalPattern = NpcConfigCommon.GeneralPattern
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local reactEnableType = NpcConfigCommon.ReactEnableType
local reactEventType = NpcConfigCommon.ReactEventType
local actorMoveType = NpcConfigCommon.ActorMoveType
local Config20930 = {}

local data = {
    NpcId = "20930",
    Alias = "Npc20930",
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_20930",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7329401,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {73294},
    dialogDataList = {{dialogId = 1018209300, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7329405,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7329412,
                questState = questState.None
            }
        }
    }
}

local v = {}
local validQuestIds = {}
local n = 73294
validQuestIds[1] = 73295
validQuestIds[2] = n
v.validQuestIds = validQuestIds
v.dialogDataList = {{dialogId = 1018209301, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7329412,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7329501,
            questState = questState.UnFinished
        }
    }
}

local tbl2 = {
    validQuestIds = {73295},
    dialogDataList = {{dialogId = 1018209302, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7329504,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7329508,
                questState = questState.None
            }
        }
    }
}

local tbl3 = {}
local validQuestIds2 = {}
local n2 = 73295
validQuestIds2[1] = 73296
validQuestIds2[2] = n2
tbl3.validQuestIds = validQuestIds2
tbl3.dialogDataList = {{dialogId = 1018209303, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl3.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7329508,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7329601,
            questState = questState.UnFinished
        }
    }
}

local tbl4 = {}
local validQuestIds3 = {}
local n3 = 73296
validQuestIds3[1] = 73297
validQuestIds3[2] = n3
tbl4.validQuestIds = validQuestIds3
tbl4.dialogDataList = {{dialogId = 1018209304, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl4.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7329608,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7329701,
            questState = questState.UnFinished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
nahidaNarratorData[5] = tbl4
data.NahidaNarratorData = nahidaNarratorData
Config20930.Data = data
return Config20930
