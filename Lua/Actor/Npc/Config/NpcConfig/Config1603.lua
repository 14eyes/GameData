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
        NpcId = "1603",
        Alias = "Npc1603",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2242.968, y = 210.017, z = -942.4093}, rot = {x = 0, y = 350.9917, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 1009, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -5.355353, y = 4.802241, z = -2.164307}, rot = {x = 0, y = 1.180226, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1603",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
