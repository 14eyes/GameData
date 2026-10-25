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
local Config1517 = {}

local data = {
    NpcId = "1517",
    Alias = "Npc1517",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            condition = {
                questGlobalVarId = 2002901,
                questGlobalVarValue = 2,
                questGlobalVarOperate = compareOperation.Less,
                sceneId = 1008,
                priority = 0
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = 5.630874, y = 0.02498459, z = 39.65122}, rot = {x = 0, y = 275.0108, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            condition = {
                questGlobalVarId = 2002901,
                questGlobalVarValue = 3,
                questGlobalVarOperate = compareOperation.Equal,
                sceneId = 3,
                priority = 0
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -456.8762, y = 237.5985, z = 2743.991}, rot = {x = 0, y = 295.982, z = 0}},
                    freestyle = 1160,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_1517",
                priority = 0,
                condList = {
                    {
                        condition = {questGlobalVarId = 2002901, questGlobalVarValue = 2, questGlobalVarOperate = compareOperation.Less},
                        priority = 0,
                        isShow = true
                    }
                }
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 100,
    dialogDataList = {{dialogId = 1018151700, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                questGlobalVarId = 2002901,
                questGlobalVarValue = 3,
                questGlobalVarOperate = compareOperation.Equal
            }
        }
    }
}

local v = {}
local validQuestIds = {}
local n = 23032
validQuestIds[1] = 23011
validQuestIds[2] = n
v.validQuestIds = validQuestIds
v.priority = 300
v.dialogDataList = {{dialogId = 1018151701, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23011, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23032, questState = 2}}
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config1517.Data = data
return Config1517
