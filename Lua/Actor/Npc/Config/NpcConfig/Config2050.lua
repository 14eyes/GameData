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
        NpcId = "2050",
        Alias = "Npc2050",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -711.6605, y = 214.3197, z = 162.4833}, rot = {x = 0, y = 274.5701, z = 0}},
                        freestyle = 1280,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -703.0864, y = 214.0672, z = 169.0097}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -658.8475, y = 214.0672, z = 162.8744}, rot = {x = 0, y = 11.90425, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -685.6547, y = 213.738, z = 149.4338}, rot = {x = 0, y = 181.1176, z = 0}},
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
                    titleStr = "NPC_TITLE_2050",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
