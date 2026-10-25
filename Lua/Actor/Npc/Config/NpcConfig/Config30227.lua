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
        NpcId = "30227",
        Alias = "Npc30227",
        DailyScheduleData = {
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7902212,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 9,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 300.5323, y = 120.2077, z = 232.6398}, rot = {x = 0, y = 230.2164, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7902212,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 9,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 143.1708, y = 120.3273, z = -151.2881}, rot = {x = 0, y = 281.1127, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
