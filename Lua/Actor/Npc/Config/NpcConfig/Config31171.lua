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
        NpcId = "31171",
        Alias = "Npc31171",
        DailyScheduleData = {
            {
                bornConfigId = 713117101,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1423.612, y = 146.0813, z = 7353.171}, rot = {x = 0, y = 312.0942, z = 0}},
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 713117100,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1429.447, y = 146.3747, z = 7353.401}, rot = {x = 0, y = 37.54021, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
