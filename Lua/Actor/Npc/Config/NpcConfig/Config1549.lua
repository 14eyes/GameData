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
        NpcId = "1549",
        Alias = "Npc1549",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1935.397, y = 209.2535, z = -716.5337}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1925.283, y = 210.1847, z = -707.4301}, rot = {x = 0, y = 27.61378, z = 0}},
                        freestyle = 1190,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1921.338, y = 210.2892, z = -709.4377}, rot = {x = 0, y = 328.9253, z = 0}},
                        freestyle = 1280,
                        time = 20,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1549",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
