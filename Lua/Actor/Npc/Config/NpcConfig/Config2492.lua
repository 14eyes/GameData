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
        NpcId = "2492",
        Alias = "Npc2492",
        DailyScheduleData = {
            {
                bornConfigId = 442492000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2356.597, y = 297.3467, z = 1519.882}, rot = {x = 0, y = 22.66347, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2356.451, y = 297.3292, z = 1517.758}, rot = {x = 0, y = 147.6665, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2353.684, y = 297.3467, z = 1517.458}, rot = {x = 0, y = 192.2112, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2353.32, y = 297.3279, z = 1523.718}, rot = {x = 0, y = 65.81445, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
