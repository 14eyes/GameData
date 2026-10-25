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
        NpcId = "7151",
        Alias = "Npc7151",
        DailyScheduleData = {
            {
                bornConfigId = 607151000,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {
                            pos = {x = 1456.307, y = 225.8897, z = 9349.742},
                            rot = {x = 0.1402994, y = 288.9476, z = 359.0388}
                        },
                        freestyle = 1190,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {
                            pos = {x = 1451.54, y = 224.4539, z = 9351.168},
                            rot = {x = 0.05426928, y = 292.5145, z = -1.667527E-9}
                        },
                        freestyle = 1230,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1446.756, y = 222.5886, z = 9352.553}, rot = {x = 2.680143, y = 294.0344, z = 358.1598}},
                        freestyle = 1230,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1450.129, y = 223.843, z = 9351.471}, rot = {x = 0, y = 110.0435, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
