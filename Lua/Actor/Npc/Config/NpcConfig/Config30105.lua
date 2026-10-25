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
        NpcId = "30105",
        Alias = "Npc30105",
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
                        dummypoint = {pos = {x = 282.4069, y = 337.017, z = 280.4256}, rot = {x = 0, y = 232.833, z = 0}},
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
                        dummypoint = {pos = {x = 269.2938, y = 336.92, z = 248.6153}, rot = {x = 0, y = 103, z = 0}},
                        freestyle = 1190,
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
                        dummypoint = {pos = {x = 282.8894, y = 336.9653, z = 285.3703}, rot = {x = 0, y = 315.7647, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
