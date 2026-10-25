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
local Config4296 = {}

local data = {
    NpcId = "4296",
    Alias = "Npc4296",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321902,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1537.579, y = 25.22074, z = 5155.58}, rot = {x = 0, y = 279.6171, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321902,
                        questGlobalVarValue = 2,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1533.028, y = 25.134, z = 5152.607}, rot = {x = 0, y = 104.8815, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {73225},
    priority = 320,
    dialogDataList = {{dialogId = 1018429600, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7322501,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7322514,
                questState = questState.None
            }
        }
    }
}

local v = {
    validQuestIds = {73225},
    priority = 321,
    dialogDataList = {{dialogId = 1018429601, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7322520,
                questState = questState.Finished
            }
        }
    }
}

local tbl2 = {}
local validQuestIds = {}
local n = 73186
validQuestIds[1] = 0
validQuestIds[2] = n
tbl2.validQuestIds = validQuestIds
tbl2.priority = 308
tbl2.dialogDataList = {{dialogId = 1018429602, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318601,
            questState = questState.UnFinished
        }
    }
}

local tbl3 = {}
local validQuestIds2 = {}
local n2 = 73186
validQuestIds2[1] = 0
validQuestIds2[2] = n2
tbl3.validQuestIds = validQuestIds2
tbl3.priority = 309
tbl3.dialogDataList = {{dialogId = 1018429603, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl3.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318628,
            questState = questState.UnFinished
        }
    }
}

local tbl4 = {}
local validQuestIds3 = {}
local n3 = 73187
validQuestIds3[1] = 0
validQuestIds3[2] = n3
tbl4.validQuestIds = validQuestIds3
tbl4.priority = 310
tbl4.dialogDataList = {{dialogId = 1018429604, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl4.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318721,
            questState = questState.UnFinished
        }
    }
}

local tbl5 = {}
local validQuestIds4 = {}
local n4 = 73187
validQuestIds4[1] = 0
validQuestIds4[2] = n4
tbl5.validQuestIds = validQuestIds4
tbl5.priority = 311
tbl5.dialogDataList = {{dialogId = 1018429605, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl5.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318732,
            questState = questState.UnFinished
        }
    }
}

local tbl6 = {}
local validQuestIds5 = {}
local n5 = 73220
validQuestIds5[1] = 0
validQuestIds5[2] = n5
tbl6.validQuestIds = validQuestIds5
tbl6.priority = 313
tbl6.dialogDataList = {{dialogId = 1018429606, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl6.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7322004,
            questState = questState.Finished
        }
    }
}

local tbl7 = {
    validQuestIds = {0},
    priority = 314,
    dialogDataList = {{dialogId = 1018429607, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7322008,
                questState = questState.Finished
            }
        }
    }
}

local tbl8 = {}
local validQuestIds6 = {}
local n6 = 73287
validQuestIds6[1] = 0
validQuestIds6[2] = n6
tbl8.validQuestIds = validQuestIds6
tbl8.priority = 301
tbl8.dialogDataList = {{dialogId = 1018429608, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl8.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7328715,
            questState = questState.Finished
        }
    }
}

local tbl9 = {}
local validQuestIds7 = {}
local n7 = 73219
validQuestIds7[1] = 0
validQuestIds7[2] = n7
tbl9.validQuestIds = validQuestIds7
tbl9.priority = 302
tbl9.dialogDataList = {{dialogId = 1018429609, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl9.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321911,
            questState = questState.Finished
        }
    }
}

local tbl10 = {}
local validQuestIds8 = {}
local n8 = 73219
validQuestIds8[1] = 0
validQuestIds8[2] = n8
tbl10.validQuestIds = validQuestIds8
tbl10.priority = 303
tbl10.dialogDataList = {{dialogId = 1018429610, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl10.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321940,
            questState = questState.Finished
        }
    }
}

local tbl11 = {}
local validQuestIds9 = {}
local n9 = 73305
validQuestIds9[1] = 0
validQuestIds9[2] = n9
tbl11.validQuestIds = validQuestIds9
tbl11.priority = 316
tbl11.dialogDataList = {{dialogId = 1018429611, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl11.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7330509,
            questState = questState.Finished
        }
    }
}

local tbl12 = {}
local validQuestIds10 = {}
local n10 = 73244
validQuestIds10[1] = 0
validQuestIds10[2] = n10
tbl12.validQuestIds = validQuestIds10
tbl12.priority = 317
tbl12.dialogDataList = {{dialogId = 1018429612, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl12.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7324403,
            questState = questState.Finished
        }
    }
}

local tbl13 = {}
local validQuestIds11 = {}
local n11 = 73244
validQuestIds11[1] = 0
validQuestIds11[2] = n11
tbl13.validQuestIds = validQuestIds11
tbl13.priority = 318
tbl13.dialogDataList = {{dialogId = 1018429613, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl13.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7324415,
            questState = questState.Finished
        }
    }
}

local tbl14 = {}
local validQuestIds12 = {}
local n12 = 73220
validQuestIds12[1] = 0
validQuestIds12[2] = n12
tbl14.validQuestIds = validQuestIds12
tbl14.priority = 312
tbl14.dialogDataList = {{dialogId = 1018429614, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl14.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7322013,
            questState = questState.Finished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
nahidaNarratorData[5] = tbl4
nahidaNarratorData[6] = tbl5
nahidaNarratorData[7] = tbl6
nahidaNarratorData[8] = tbl7
nahidaNarratorData[9] = tbl8
nahidaNarratorData[10] = tbl9
nahidaNarratorData[11] = tbl10
nahidaNarratorData[12] = tbl11
nahidaNarratorData[13] = tbl12
nahidaNarratorData[14] = tbl13
nahidaNarratorData[15] = tbl14
data.NahidaNarratorData = nahidaNarratorData
Config4296.Data = data
return Config4296
