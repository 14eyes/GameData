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
        NpcId = "1541",
        Alias = "Npc1541",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1957.019, y = 217.5793, z = -944.8851}, rot = {x = 0, y = 13.52155, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1957.019, y = 217.5793, z = -944.8851}, rot = {x = 0, y = 13.52155, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1957.019, y = 217.5793, z = -944.8851}, rot = {x = 0, y = 13.52155, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1953.528, y = 218.3219, z = -956.173}, rot = {x = 0, y = 153.2632, z = 0}},
                        freestyle = 1280,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1541",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
