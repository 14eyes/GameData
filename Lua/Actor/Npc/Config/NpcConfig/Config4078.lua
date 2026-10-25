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
local Config4078 = {}

local data = {
    NpcId = "4078",
    Alias = "Npc4078",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -309.3933, y = 246.4011, z = 2788.206}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -303.0968, y = 246.4011, z = 2800.385}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -295.2298, y = 246.1631, z = 2810.559}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -291.6509, y = 246.1631, z = 2814.869}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -298.6519, y = 246.1631, z = 2806.198}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -303.0997, y = 246.4011, z = 2800.396}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -309.3809, y = 246.4011, z = 2788.258}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = -318.7816, y = 246.4021, z = 2788.501}, rot = {x = 0, y = 77.1418, z = 0}},
                    time = 5,
                    action = generalPattern.Stand
                }
            }
        },
        {
            condition = {sceneId = 3, priority = 5},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 4010021,
                        questState = questState.UnFinished
                    }
                }
            },
            actionPoints = {{action = generalPattern.Hide}}
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4078",
                priority = 0,
                condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 13031
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 10
tbl.dialogDataList = {{dialogId = 1018407800, duration = 0, intervalMin = 20, intervalMax = 30}}

local v = {
    validQuestIds = {13031},
    priority = 300,
    dialogDataList = {{dialogId = 130319911, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303115,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303108,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config4078.Data = data
return Config4078
