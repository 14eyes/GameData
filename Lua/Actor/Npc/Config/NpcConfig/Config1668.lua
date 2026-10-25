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
        NpcId = "1668",
        Alias = "Npc1668",
        DailyScheduleData = {
            {
                condition = {
                    questGlobalVarId = 40026,
                    questGlobalVarValue = 3,
                    questGlobalVarOperate = compareOperation.Less,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1584.981, y = 287.7848, z = -1083.415}, rot = {x = 0, y = 305.0173, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 40029,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 2
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1605.681, y = 286.1013, z = -1090.114}, rot = {x = 0, y = 125.0422, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 40028,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q40028_snowman_joel"), action = generalPattern.Stand}}
            }
        }
    }
}
