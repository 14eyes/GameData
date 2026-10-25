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
        NpcId = "2449",
        Alias = "Npc2449",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -635.3449, y = 209.7778, z = -154.326}, rot = {x = 0, y = 47.8969, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -627.0343, y = 209.7778, z = -159.7796}, rot = {x = 0, y = 8.824356, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -624.1723, y = 209.7778, z = -155.7222}, rot = {x = 0, y = 37.58983, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -621.9389, y = 209.7778, z = -152.3402}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {
                            pos = {x = -630.1448, y = 209.7778, z = -145.9712},
                            rot = {x = 351.4715, y = 217.1388, z = 4.092002}
                        },
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -635.0389, y = 209.7778, z = -153.0609}, rot = {x = 0, y = 78.6617, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2449",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
