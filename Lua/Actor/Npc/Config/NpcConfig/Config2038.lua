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
        NpcId = "2038",
        Alias = "Npc2038",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -685.7023, y = 216.416, z = 96.19488}, rot = {x = 0, y = 269.3254, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -685.8657, y = 216.416, z = 110.1962}, rot = {x = 0, y = 274.7666, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -686.2572, y = 216.0825, z = 135.7074}, rot = {x = 0, y = 359.647, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2038",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
