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
local Config4283 = {}

local data = {
    NpcId = "4283",
    Alias = "Npc4283",
    DailyScheduleData = {
        {
            bornConfigId = 364283000,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 379.304, y = 281.3343, z = 6209.029}, rot = {x = 0, y = 225.3766, z = 0}},
                    freestyle = 1190,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4283",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7323817,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    },
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_4283",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7323817,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7323817,
                            questState = questState.None
                        }
                    }
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73238
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 100
tbl.dialogDataList = {{dialogId = 1018428300, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 7323805,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        }
    }
}

local v = {}
local validQuestIds2 = {}
local n2 = 73251
validQuestIds2[1] = 0
validQuestIds2[2] = n2
v.validQuestIds = validQuestIds2
v.priority = 101
v.dialogDataList = {{dialogId = 1018428301, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 7325104,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        },
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 7323802,
            questGlobalVarValue = 1,
            questGlobalVarOperate = compareOperation.Equal
        }
    }
}

local tbl2 = {}
local validQuestIds3 = {}
local n3 = 73238
validQuestIds3[1] = 0
validQuestIds3[2] = n3
tbl2.validQuestIds = validQuestIds3
tbl2.priority = 300
tbl2.dialogDataList = {{dialogId = 1018428302, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 7323805,
            questGlobalVarValue = 1,
            questGlobalVarOperate = compareOperation.Equal
        },
        {
            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
            questGlobalVarId = 7323802,
            questGlobalVarValue = 0,
            questGlobalVarOperate = compareOperation.Equal
        }
    }
}

local tbl3 = {
    validQuestIds = {73251},
    priority = 300,
    dialogDataList = {{dialogId = 1018428303, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 7325106,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    }
}

local tbl4 = {
    validQuestIds = {73256},
    priority = 300,
    dialogDataList = {{dialogId = 1018428304, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 7325601,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
nahidaNarratorData[5] = tbl4
data.NahidaNarratorData = nahidaNarratorData
Config4283.Data = data
return Config4283
