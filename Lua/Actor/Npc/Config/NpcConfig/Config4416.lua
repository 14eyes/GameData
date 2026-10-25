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
        NpcId = "4416",
        Alias = "Npc4416",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1952.07, y = 264.9322, z = 4230.918}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1949.698, y = 264.9345, z = 4221.469}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1941.772, y = 264.932, z = 4217.495}, rot = {x = 0, y = 60.43957, z = 0}},
                        freestyle = 5020,
                        time = 7,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1942.755, y = 264.9364, z = 4206.879}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1954.961, y = 264.9379, z = 4219.322}, rot = {x = 0, y = 235.5736, z = 0}},
                        freestyle = 5020,
                        time = 7,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1956.451, y = 264.9323, z = 4230.166}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018441600, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
