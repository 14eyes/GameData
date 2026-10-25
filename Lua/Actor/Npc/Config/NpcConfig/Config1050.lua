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
local Config1050 = {}
local data = {NpcId = "1050", Alias = "Npc1050"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 19171
local v = 19172
validQuestIds[1] = 19170
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018105000, duration = 0, intervalMin = 20, intervalMax = 30}}

local tbl2 = {
    validQuestIds = {19173},
    priority = 301,
    dialogDataList = {{dialogId = 1018105001, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl3 = {
    validQuestIds = {19173},
    priority = 302,
    dialogDataList = {{dialogId = 1018105002, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1917324,
                questState = questState.Finished
            }
        }
    }
}

local tbl4 = {
    validQuestIds = {40111},
    priority = 303,
    dialogDataList = {{dialogId = 401119901, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4011104,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl5 = {
    validQuestIds = {19077},
    priority = 300,
    dialogDataList = {{dialogId = 1018105003, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1907703,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl6 = {
    validQuestIds = {40100},
    priority = 300,
    dialogDataList = {{dialogId = 401009910, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010003,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010013,
                questState = questState.None
            }
        }
    }
}

local tbl7 = {
    validQuestIds = {40104},
    priority = 300,
    dialogDataList = {{dialogId = 401049908, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010404,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010406,
                questState = questState.None
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010406,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl8 = {
    validQuestIds = {13037},
    priority = 300,
    dialogDataList = {{dialogId = 130379906, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303711,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl9 = {
    validQuestIds = {14037},
    priority = 300,
    dialogDataList = {{dialogId = 1018105004, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl10 = {
    validQuestIds = {73532},
    priority = 300,
    dialogDataList = {{dialogId = 1018105005, duration = 5, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7353205,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7353206,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl11 = {
    validQuestIds = {40168},
    priority = 300,
    dialogDataList = {{dialogId = 1018105006, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4016802,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4016816,
                questState = questState.None
            }
        }
    }
}

local tbl12 = {
    validQuestIds = {40210},
    priority = 300,
    dialogDataList = {{dialogId = 1018105007, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021002,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021004,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl13 = {
    validQuestIds = {40210},
    priority = 300,
    dialogDataList = {{dialogId = 1018105008, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021005,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021013,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021010,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
nahidaNarratorData[3] = tbl3
nahidaNarratorData[4] = tbl4
nahidaNarratorData[5] = tbl5
nahidaNarratorData[6] = tbl6
nahidaNarratorData[7] = tbl7
nahidaNarratorData[8] = tbl8
nahidaNarratorData[9] = tbl9
nahidaNarratorData[10] = tbl10
nahidaNarratorData[11] = tbl11
nahidaNarratorData[12] = tbl12
nahidaNarratorData[13] = tbl13
data.NahidaNarratorData = nahidaNarratorData
Config1050.Data = data
return Config1050
