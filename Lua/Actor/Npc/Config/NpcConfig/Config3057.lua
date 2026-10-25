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
        NpcId = "3057",
        Alias = "Npc3057",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1064, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3.179455, y = 0.09673291, z = -9.412113}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3.653545, y = 0.096728, z = 5.649422}, rot = {x = 0, y = 343.6131, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3057",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
