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
        NpcId = "1670",
        Alias = "Npc1670",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1569.966, y = 275.7305, z = -1027.996}, rot = {x = 0, y = 130.4188, z = 0}},
                        freestyle = 4200,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {activityId = 2009, activityCondId = 2009006, isActivityValid = true, sceneId = 3, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1609.583, y = 273.5075, z = -1033.916}, rot = {x = 0, y = 180, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1670",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
