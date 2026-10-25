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
        NpcId = "30986",
        Alias = "Npc30986",
        DailyScheduleData = {
            {
                bornConfigId = 643098600,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -6.793825, y = 0.4097941, z = -4.217801}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 8060,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {titleDatas = {{titleStr = "NPC_TITLE_30986", priority = 0}}}
    }
}
