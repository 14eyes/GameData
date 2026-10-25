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
        NpcId = "7540",
        Alias = "Npc7540",
        DailyScheduleData = {
            {
                bornConfigId = 707540000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9611.467, y = 397.2837, z = 6691.727}, rot = {x = 0, y = 357.4708, z = 0}},
                        freestyle = 1050,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7540", priority = 0}}}
    }
}
