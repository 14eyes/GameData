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
        NpcId = "6099",
        Alias = "Npc6099",
        DailyScheduleData = {
            {
                bornConfigId = 506099000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2145.088, y = 243.9951, z = 8433.785}, rot = {x = 0, y = 52.51511, z = 0}},
                        freestyle = 1280,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2142.786, y = 243.9348, z = 8439.9}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2123.952, y = 243.9951, z = 8437.225}, rot = {x = 0, y = 159.5031, z = 0}},
                        freestyle = 1190,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2111.605, y = 243.9348, z = 8453.284}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2091.735, y = 244.1559, z = 8450.438}, rot = {x = 0, y = 117.3584, z = 0}},
                        freestyle = 1230,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2111.605, y = 243.9348, z = 8453.284}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2128.332, y = 243.9348, z = 8441.13}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2143.719, y = 243.9348, z = 8439.525}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2150.733, y = 243.9951, z = 8442.426}, rot = {x = 0, y = 22.90799, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_6099",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
