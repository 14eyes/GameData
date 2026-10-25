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
        NpcId = "30230",
        Alias = "Npc30230",
        DailyScheduleData = {
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7902312,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 9,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -283.1312, y = 120.8373, z = 483.8564}, rot = {x = 0, y = 66.78918, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7902312,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 9,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 139.3484, y = 120.2319, z = -150.8357}, rot = {x = 0, y = 81.6038, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
