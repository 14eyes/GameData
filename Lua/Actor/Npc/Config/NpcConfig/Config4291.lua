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
local Config4291 = {}

local data = {
    NpcId = "4291",
    Alias = "Npc4291",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7321901,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1530.724, y = 37.13929, z = 5093.505}, rot = {x = 0, y = 250.8339, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73219
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 301
tbl.dialogDataList = {{dialogId = 1018429107, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321960,
            questState = questState.Finished
        }
    }
}

local v = {}
local validQuestIds2 = {}
local n2 = 73186
local n3 = 73187
local n4 = 73103
validQuestIds2[1] = 0
validQuestIds2[2] = n2
validQuestIds2[3] = n3
validQuestIds2[4] = n4
v.validQuestIds = validQuestIds2
v.priority = 302
v.dialogDataList = {{dialogId = 1018429104, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318601,
            questState = questState.Finished
        }
    }
}

local tbl2 = {}
local validQuestIds3 = {}
local n5 = 73103
local n6 = 73220
validQuestIds3[1] = 0
validQuestIds3[2] = n5
validQuestIds3[3] = n6
tbl2.validQuestIds = validQuestIds3
tbl2.priority = 303
tbl2.dialogDataList = {{dialogId = 1018429105, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7310313,
            questState = questState.Finished
        }
    }
}

local tbl3 = {}
local validQuestIds4 = {}
local n7 = 73220
validQuestIds4[1] = 0
validQuestIds4[2] = n7
tbl3.validQuestIds = validQuestIds4
tbl3.priority = 304
tbl3.dialogDataList = {{dialogId = 1018429106, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl3.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7322008,
            questState = questState.Finished
        }
    }
}

local tbl4 = {}
local validQuestIds5 = {}
local n8 = 73305
validQuestIds5[1] = 0
validQuestIds5[2] = n8
tbl4.validQuestIds = validQuestIds5
tbl4.priority = 305
tbl4.dialogDataList = {{dialogId = 1018429108, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl4.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7330509,
            questState = questState.Finished
        }
    }
}

local tbl5 = {}
local validQuestIds6 = {}
local n9 = 73212
local n10 = 73264
validQuestIds6[1] = 0
validQuestIds6[2] = n9
validQuestIds6[3] = n10
tbl5.validQuestIds = validQuestIds6
tbl5.priority = 310
tbl5.dialogDataList = {{dialogId = 1018429100, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl5.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321211,
            questState = questState.Finished
        }
    }
}

local tbl6 = {}
local validQuestIds7 = {}
local n11 = 73264
local n12 = 73225
local n13 = 73212
validQuestIds7[1] = 0
validQuestIds7[2] = n11
validQuestIds7[3] = n12
validQuestIds7[4] = n13
tbl6.validQuestIds = validQuestIds7
tbl6.priority = 311
tbl6.dialogDataList = {{dialogId = 1018429101, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl6.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7326413,
            questState = questState.Finished
        }
    }
}

local tbl7 = {}
local validQuestIds8 = {}
local n14 = 73264
local n15 = 73225
validQuestIds8[1] = 0
validQuestIds8[2] = n14
validQuestIds8[3] = n15
tbl7.validQuestIds = validQuestIds8
tbl7.priority = 312
tbl7.dialogDataList = {{dialogId = 1018429102, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl7.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7322505,
            questState = questState.Finished
        }
    }
}

local tbl8 = {}
local validQuestIds9 = {}
local n16 = 73225
validQuestIds9[1] = 0
validQuestIds9[2] = n16
tbl8.validQuestIds = validQuestIds9
tbl8.priority = 313
tbl8.dialogDataList = {{dialogId = 1018429103, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl8.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7322514,
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
data.NahidaNarratorData = nahidaNarratorData
Config4291.Data = data
return Config4291
