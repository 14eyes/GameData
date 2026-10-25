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
        NpcId = "7466",
        Alias = "Npc7466",
        DailyScheduleData = {
            {
                bornConfigId = 707466000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9309.146, y = 281.6672, z = 6905.913}, rot = {x = 0, y = 311.7648, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9301.188, y = 281.6672, z = 6914.036}, rot = {x = 0, y = 56.96635, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9290.336, y = 281.6672, z = 6922.956}, rot = {x = 0, y = 41.75165, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9281.208, y = 281.6672, z = 6923.116}, rot = {x = 0, y = 220.3168, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9292.659, y = 281.6672, z = 6916.426}, rot = {x = 0, y = 226.2396, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9295.252, y = 281.6672, z = 6906.929}, rot = {x = 0, y = 222.9145, z = 0}},
                        freestyle = 4510,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9301.979, y = 281.6672, z = 6898.791}, rot = {x = 0, y = 35.7639, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7466", priority = 0}}}
    }
}
