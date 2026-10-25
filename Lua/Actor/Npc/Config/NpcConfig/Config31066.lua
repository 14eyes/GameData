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
        NpcId = "31066",
        Alias = "Npc31066",
        InteeData = {inteeDatas = {{icon = "UI_Icon_Intee_ColorBall", priority = 0, validQuestIds = {0}}}},
        DailyScheduleData = {
            {
                bornConfigId = 663106600,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 397.8481, y = 206.6585, z = 14142.37}, rot = {x = 0, y = 0, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        BillboardMarkData = {markDatas = {{icon = "UI_NPCTopIcon_Activity_ColorBall", priority = 0}}}
    }
}
