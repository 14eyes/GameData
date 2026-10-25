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
        NpcId = "30165",
        Alias = "Npc30165",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 4005513,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2549.079, y = 217.549, z = -3841.562}, rot = {x = 0, y = 25.9912, z = 0}},
                        freestyle = 1120,
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
                        dummypoint = {pos = {x = -2559.659, y = 214.2126, z = -3845.542}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
