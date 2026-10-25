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
        NpcId = "7455",
        Alias = "Npc7455",
        DailyScheduleData = {
            {
                bornConfigId = 707455000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9591.039, y = 395.0002, z = 6650.589}, rot = {x = 0, y = 45.00858, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9606.623, y = 395.0549, z = 6665.218}, rot = {x = 0, y = 83.49436, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9616.763, y = 395.0025, z = 6666.437}, rot = {x = 0, y = 159.9976, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9615.229, y = 395.0016, z = 6659.06}, rot = {x = 0, y = 221.4499, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9601.078, y = 395.0014, z = 6653.29}, rot = {x = 0, y = 228.3643, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9592.634, y = 395.0019, z = 6643.178}, rot = {x = 0, y = 84.98901, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9591.832, y = 395.21, z = 6632.907}, rot = {x = 0, y = 72.8079, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9607.354, y = 395.0025, z = 6636.329}, rot = {x = 0, y = 312.9517, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9616.466, y = 395.0021, z = 6649.085}, rot = {x = 0, y = 38.75234, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9627.87, y = 395.0037, z = 6657.963}, rot = {x = 0, y = 124.9832, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9627.06, y = 395.0043, z = 6667.608}, rot = {x = 0, y = 254.4643, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9609.144, y = 395, z = 6659.349}, rot = {x = 0, y = 244.9019, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9598.707, y = 395.0028, z = 6654.887}, rot = {x = 0, y = 269.2473, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7455", priority = 0}}}
    }
}
