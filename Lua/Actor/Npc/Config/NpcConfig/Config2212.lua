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
        NpcId = "2212",
        Alias = "Npc2212",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 3,
                    questGlobalVarOperate = compareOperation.Greater,
                    sceneId = 6,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 980.8423, y = 1017.653, z = 913.8221}, rot = {x = 0, y = 348.8782, z = 0}},
                        freestyle = 4284,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
