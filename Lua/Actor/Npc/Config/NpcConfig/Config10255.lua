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
        NpcId = "10255",
        Alias = "Npc10255",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    mainQuestId = 1015,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -618.2205, y = 251.7006, z = 386.4384}, rot = {x = 0, y = 179.3024, z = 0}},
                        freestyle = 1190,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -625.0306, y = 251.7006, z = 387.4088}, rot = {x = 0, y = 225.8053, z = 0}},
                        freestyle = 1280,
                        time = 20,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    mainQuestId = 1020,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_10255",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
