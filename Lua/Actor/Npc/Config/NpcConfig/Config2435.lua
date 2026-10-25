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
        NpcId = "2435",
        Alias = "Npc2435",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -405.7078, y = 207.5447, z = -1135.42}, rot = {x = 0, y = 233.3094, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {
                            pos = {x = -404.5805, y = 207.5447, z = -1141.618},
                            rot = {x = 357.679, y = 237.3551, z = 359.7409}
                        },
                        freestyle = 1171,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -406.4504, y = 207.545, z = -1137.491}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -403.6501, y = 207.5447, z = -1129.784}, rot = {x = 0, y = 345.8409, z = 0}},
                        freestyle = 5020,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -402.2672, y = 207.5448, z = -1132.672}, rot = {x = 0, y = 178.5383, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -403.1352, y = 207.5768, z = -1135.574}, rot = {x = 0, y = 142.8077, z = 0}},
                        freestyle = 5020,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -404.9191, y = 207.5768, z = -1135.28}, rot = {x = 0, y = 280.948, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                transTeleport = true,
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day},
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2019,
                            activityCondId = 2019001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -404.5805, y = 207.5447, z = -1141.618}, rot = {x = 0, y = 237.3551, z = 0}},
                        freestyle = 1171,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
