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
        NpcId = "1597",
        Alias = "Npc1597",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1795.737, y = 194.7619, z = -1557.622}, rot = {x = 0, y = 317.0803, z = 0}},
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
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {activityId = 2016, activityCondId = 2016005, isActivityValid = true, sceneId = 3, priority = 2},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
