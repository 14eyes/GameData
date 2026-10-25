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
        NpcId = "7551",
        Alias = "Npc7551",
        DailyScheduleData = {
            {
                bornConfigId = 707551000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9736.155, y = 402.567, z = 6631.377}, rot = {x = 0, y = 2.3561, z = 0}},
                        freestyle = 1171,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7551", priority = 0}}}
    }
}
