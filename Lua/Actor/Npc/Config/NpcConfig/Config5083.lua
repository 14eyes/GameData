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
        NpcId = "5083",
        Alias = "Npc5083",
        DailyScheduleData = {
            {
                bornConfigId = 405083000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3497.405, y = 426.6231, z = 4522.387}, rot = {x = 0, y = 231.1825, z = 0}},
                        freestyle = 1240,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3491.788, y = 426.6236, z = 4509.763}, rot = {x = 0, y = 202.6078, z = 0}},
                        freestyle = 1230,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3516.387, y = 426.6192, z = 4476.199}, rot = {x = 0, y = 104.0414, z = 0}},
                        freestyle = 1190,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3491.788, y = 426.6236, z = 4509.763}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3455.816, y = 426.6191, z = 4524.448}, rot = {x = 0, y = 352.1019, z = 0}},
                        freestyle = 1120,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3475.69, y = 426.6192, z = 4535.436}, rot = {x = 0, y = 354.8513, z = 0}},
                        freestyle = 1230,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 405083001,
                condition = {daily = dailyCondition.AllDay, sceneId = 1083, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5.386272, y = 2.241347E-8, z = -0.4149609}, rot = {x = 0, y = 86.3782, z = 0}},
                        freestyle = 8040,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_5083",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
