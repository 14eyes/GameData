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
        NpcId = "1581",
        Alias = "Npc1581",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2862.917, y = 258.2756, z = -1876.055}, rot = {x = 0, y = 125.5188, z = 0}},
                        freestyle = 1130,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2845.968, y = 263.4894, z = -1888.296}, rot = {x = 0, y = 136.1147, z = 0}},
                        freestyle = 4000,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2828.512, y = 263.732, z = -1874.771}, rot = {x = 0, y = 249.9689, z = 0}},
                        freestyle = 1250,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2829.776, y = 261.6098, z = -1860.851}, rot = {x = 0, y = 279.7222, z = 0}},
                        freestyle = 4000,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2828.512, y = 263.732, z = -1874.771}, rot = {x = 0, y = 249.9689, z = 0}},
                        freestyle = 1130,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2845.968, y = 263.4894, z = -1888.296}, rot = {x = 0, y = 136.1147, z = 0}},
                        freestyle = 4000,
                        time = 20,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1581",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
