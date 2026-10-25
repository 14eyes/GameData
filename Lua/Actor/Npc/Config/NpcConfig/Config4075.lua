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
        NpcId = "4075",
        Alias = "Npc4075",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -309.9182, y = 248.5391, z = 2832.166}, rot = {x = 0, y = 191.1224, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -310.3709, y = 246.4011, z = 2799.588}, rot = {x = 0, y = 152.7127, z = 0}},
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -318.1487, y = 246.4004, z = 2794.943}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -321.1168, y = 246.133, z = 2797.419}, rot = {x = 0, y = 15.17642, z = 0}},
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -329.2634, y = 245.076, z = 2799.949}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -331.8816, y = 245.1585, z = 2795.563}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -322.8573, y = 246.3987, z = 2791.029}, rot = {x = 0, y = 224.0089, z = 0}},
                        time = 5,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018407500, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
