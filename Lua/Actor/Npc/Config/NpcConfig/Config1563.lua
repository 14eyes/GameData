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
        NpcId = "1563",
        Alias = "Npc1563",
        DailyScheduleData = {
            {
                condition = {mainQuestId = 418, questState = questState.UnFinished, sceneId = 3, priority = 5},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1366.517, y = 235.96, z = -1545.007}, rot = {x = 0, y = 171.6125, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1353.482, y = 234.6847, z = -1557.137}, rot = {x = 0, y = 112.7604, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1350.992, y = 234.897, z = -1580.803}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1353.482, y = 234.6847, z = -1557.137}, rot = {x = 0, y = 112.7604, z = 0}},
                        freestyle = 1280,
                        time = 10,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1338.698, y = 236.0141, z = -1570.175}, rot = {x = 0, y = 99.87295, z = 0}},
                        freestyle = 4110,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1563",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
