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
        NpcId = "2124",
        Alias = "Npc2124",
        DailyScheduleData = {
            {
                condition = {mainQuestId = 21023, questState = questState.Finished, sceneId = 3, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 946.197, y = 208.5482, z = 364.767}, rot = {x = 0, y = 191.2566, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q21023_Target"), action = generalPattern.Stand}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2124",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
