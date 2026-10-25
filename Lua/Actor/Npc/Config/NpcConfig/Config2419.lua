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
        NpcId = "2419",
        Alias = "Npc2419",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -345.5499, y = 272.8035, z = 951.3041}, rot = {x = 0, y = 217.5413, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -339.5005, y = 272.0926, z = 946.3888}, rot = {x = 0, y = 209.654, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -332.5087, y = 271.2473, z = 946.9461}, rot = {x = 0, y = 153.5748, z = 0}},
                        freestyle = 1050,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2419",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
