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
        NpcId = "4235",
        Alias = "Npc4235",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1990.459, y = 287.7, z = 4086.883}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1995.668, y = 286.7268, z = 4080.969}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1998.352, y = 285.9927, z = 4075.15}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2000.383, y = 285.3805, z = 4070.498}, rot = {x = 0, y = 238.9671, z = 0}},
                        freestyle = 5020,
                        time = 8,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1993.154, y = 286.6976, z = 4078.012}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1986.506, y = 287.0491, z = 4076.355}, rot = {x = 0, y = 81.98684, z = 0}},
                        freestyle = 5020,
                        time = 8,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1990.396, y = 287.7041, z = 4086.935}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1989.028, y = 288.1208, z = 4092.179}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018423500, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
