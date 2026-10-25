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
        NpcId = "30911",
        Alias = "Npc30911",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 633091100,
                condition = {sceneId = 0, priority = 0},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7452301,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2447.375, y = 246.4255, z = -3892.618}, rot = {x = 0, y = 277.5725, z = 0}},
                        freestyle = 1220,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        BillboardMarkData = {markDatas = {{icon = "UI_NPCTopIcon_Activity_TimeStopPhoto", priority = 0}}}
    }
}
