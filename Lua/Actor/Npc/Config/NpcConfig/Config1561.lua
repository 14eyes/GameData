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
        NpcId = "1561",
        Alias = "Npc1561",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1810.566, y = 194.7493, z = -1539.047}, rot = {x = 0, y = 214.7167, z = 0}},
                        freestyle = 1020,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    questGlobalVarId = 70516,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Greater,
                    activityId = 5085,
                    activityCondId = 5085005,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {dummypoint = sceneData:GetDummyPoint(3, "Q7051601_T7051603_N1561"), action = generalPattern.Stand}
                }
            },
            {
                condition = {activityId = 2016, activityCondId = 2016005, isActivityValid = true, sceneId = 3, priority = 2},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1561",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
