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
        NpcId = "7643",
        Alias = "Npc7643",
        DailyScheduleData = {
            {
                bornConfigId = 637643000,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5245.568, y = 342.0576, z = 9447.136}, rot = {x = 0, y = 286.4992, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7643", priority = 0}}}
    }
}
