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
        NpcId = "30117",
        Alias = "Npc30117",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    questGlobalVarId = 4004701,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 7,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 275.058, y = 337.685, z = 245.1144}, rot = {x = 0, y = 233.098, z = 0}},
                        freestyle = 4130,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 4004701,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 7,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 267.6041, y = 336.92, z = 247.8613}, rot = {x = 0, y = 225.5618, z = 0}},
                        freestyle = 8040,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 4004701,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 7,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 283.0621, y = 336.9628, z = 286.2032}, rot = {x = 0, y = 233.0158, z = 0}},
                        freestyle = 1170,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
