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
        NpcId = "3074",
        Alias = "Npc3074",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2576.832, y = 210.8772, z = -3806.996}, rot = {x = 0, y = 50.53423, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 4005513,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    activityId = 2012,
                    activityCondId = 2012002,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2583.958, y = 214.2126, z = -3832.382}, rot = {x = 0, y = 200, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
