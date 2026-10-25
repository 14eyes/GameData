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
        NpcId = "6034",
        Alias = "Npc6034",
        DailyScheduleData = {
            {
                bornConfigId = 506034000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1925.638, y = 52.42165, z = 9070.406}, rot = {x = 0, y = 100.4151, z = 0}},
                        freestyle = 1230,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1917.75, y = 52.42165, z = 9050.956}, rot = {x = 0, y = 213.2049, z = 0}},
                        freestyle = 1280,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1904.591, y = 52.42165, z = 9049.576}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -1887.51, y = 52.42165, z = 9064.277}, rot = {x = 0, y = 76.14603, z = 0}},
                        freestyle = 1190,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1897.93, y = 52.42165, z = 9080.247}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_6034",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
