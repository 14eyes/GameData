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

return {
    Data = {
        NpcId = "30108",
        Alias = "Npc30108",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    questGlobalVarId = 4004701,
                    questGlobalVarValue = 4,
                    questGlobalVarOperate = compareOperation.Less,
                    sceneId = 7,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 298.0626, y = 325.2838, z = 316.1026}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 316.826, y = 325.3041, z = 309.8368}, rot = {x = 0, y = 100, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 296.7163, y = 325.4014, z = 327.5469}, rot = {x = 0, y = 0, z = 0}},
                        time = 8,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 258.398, y = 325.375, z = 330.3987}, rot = {x = 0, y = -45, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 250.9415, y = 325.3412, z = 320.7198}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 236.7052, y = 325.2797, z = 316.8795}, rot = {x = 0, y = 230, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 269.1197, y = 325.274, z = 331.6236}, rot = {x = 0, y = 0, z = 0}},
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 291.865, y = 325.2607, z = 322.3795}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 4004701,
                    questGlobalVarValue = 4,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 7,
                    priority = 0
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 72276, questState = questState.Finished, sceneId = 7, priority = 1},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30108",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
