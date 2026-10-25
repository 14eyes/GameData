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
        NpcId = "7474",
        Alias = "Npc7474",
        DailyScheduleData = {
            {
                bornConfigId = 707474000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9360.82, y = 299.5638, z = 6873.395}, rot = {x = 0, y = 120.2318, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9351.144, y = 299.5638, z = 6870.347}, rot = {x = 0, y = 130.6956, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9348.417, y = 299.5638, z = 6866.999}, rot = {x = 0, y = 131.402, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9345.434, y = 299.5638, z = 6863.694}, rot = {x = 0, y = 191.4525, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9344.392, y = 299.5638, z = 6852.616}, rot = {x = 0, y = 166.2644, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9348.365, y = 299.5638, z = 6862.241}, rot = {x = 0, y = 125.4078, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9350.188, y = 299.5638, z = 6865.855}, rot = {x = 0, y = 133.2321, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9353.77, y = 299.5638, z = 6868.867}, rot = {x = 0, y = 63.14367, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9357.602, y = 299.5638, z = 6870.944}, rot = {x = 0, y = 332.2815, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7474", priority = 0}}}
    }
}
