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
        NpcId = "3423",
        Alias = "Npc3423",
        DailyScheduleData = {
            {
                bornConfigId = 703423000,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9.499209, y = 0.01067934, z = 22.10974}, rot = {x = 0, y = 90.92472, z = 0}},
                        freestyle = 1230,
                        time = 10,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 4.371274, y = 0.01067935, z = 23.11556}, rot = {x = 0, y = 42.08624, z = 0}},
                        freestyle = 1050,
                        time = 10,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -3.009521, y = 1.15121E-9, z = 23.34755}, rot = {x = 0, y = 225.9428, z = 0}},
                        freestyle = 1171,
                        time = 10,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -3.366114, y = 7.000473E-10, z = 14.97388}, rot = {x = 0, y = 306.3589, z = 0}},
                        freestyle = 1172,
                        time = 10,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2.746994, y = 5.832161E-9, z = 14.10304}, rot = {x = 0, y = 204.8566, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2.771966, y = 9.239297E-9, z = 18.24184}, rot = {x = 0, y = 58.93373, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
