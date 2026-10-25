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
        NpcId = "6045",
        Alias = "Npc6045",
        DailyScheduleData = {
            {
                bornConfigId = 506045000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1877.084, y = 66.32049, z = 9124.245}, rot = {x = 0, y = 203.9245, z = 0}},
                        freestyle = 1050,
                        time = 3,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -1879.04, y = 66.32049, z = 9115.003}, rot = {x = 0, y = 224.7289, z = 0}},
                        time = 3,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -1874.321, y = 66.32049, z = 9114.945}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -1862.687, y = 66.98033, z = 9110.834}, rot = {x = 0, y = 159.4883, z = 0}},
                        freestyle = 1240,
                        time = 3,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -1871.087, y = 66.98034, z = 9101.602}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        time = 3,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -1872.878, y = 66.32049, z = 9117.354}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    }
                }
            }
        }
    }
}
