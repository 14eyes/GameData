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
        NpcId = "30166",
        Alias = "Npc30166",
        DailyScheduleData = {
            {
                condition = {
                    questGlobalVarId = 4005513,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2548.286, y = 217.549, z = -3840.742}, rot = {x = 0, y = 218.0881, z = 0}},
                        freestyle = 1180,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 4005513,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2560.389, y = 214.2126, z = -3845.149}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
