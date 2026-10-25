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
        NpcId = "6570",
        Alias = "Npc6570",
        DailyScheduleData = {
            {
                bornConfigId = 586570000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        platformPoint = {
                            groupId = 0,
                            configId = 0,
                            offsetPos = {x = 0.0, y = 0.0, z = 0.0},
                            offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                        }
                    }
                }
            }
        }
    }
}
