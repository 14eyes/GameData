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
        NpcId = "21853",
        Alias = "Npc21853",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 582185300,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 610.4427, y = 200, z = 14627.62}, rot = {x = 0, y = 254.0294, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
