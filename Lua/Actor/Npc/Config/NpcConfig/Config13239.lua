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
local Config13239 = {}

local data = {
    NpcId = "13239",
    Alias = "Npc13239",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            bornConfigId = 371323900,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 1907705,
                        questState = questState.UnFinished
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -307.5908, y = 243.2437, z = 2867.623}, rot = {x = 0, y = 242.3331, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_13239",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    },
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_13239",
                priority = 0,
                hideInBillboard = true,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907701,
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
    validQuestIds = {19077},
    priority = 300,
    dialogDataList = {{dialogId = 1018132390, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1907702,
                questState = questState.UnFinished
            }
        }
    }
}

local v = {}
local validQuestIds = {}
local n = 19077
validQuestIds[1] = 0
validQuestIds[2] = n
v.validQuestIds = validQuestIds
v.priority = 300
v.dialogDataList = {{dialogId = 1018132391, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1907705,
            questState = questState.UnFinished
        }
    }
}

local tbl2 = {
    validQuestIds = {19077},
    priority = 300,
    disable = true,
    dialogDataList = {},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1907701,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl3 = {
    validQuestIds = {13036},
    dialogDataList = {{dialogId = 130369904, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303608,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
data.NahidaNarratorData = nahidaNarratorData
Config13239.Data = data
return Config13239
