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
        NpcId = "3100",
        Alias = "Npc3100",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2570.388, y = 274.2039, z = -4593.421}, rot = {x = 0, y = 0, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2565.782, y = 274, z = -4596.2}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2558.258, y = 274, z = -4598.563}, rot = {x = 0, y = 106.1054, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2561.775, y = 274.0263, z = -4602.987}, rot = {x = 0, y = 0, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2562.01, y = 274.0287, z = -4598.507}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2568.094, y = 274.1954, z = -4593.182}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3100",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
