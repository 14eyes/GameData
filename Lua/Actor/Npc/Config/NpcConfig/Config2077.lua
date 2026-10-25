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
        NpcId = "2077",
        Alias = "Npc2077",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -616.258, y = 205.2077, z = 135.925}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -599.8359, y = 204.8092, z = 123.5993}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -595.6076, y = 204.8322, z = 140.8264}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -587.9035, y = 204.7617, z = 156.77}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -595.1506, y = 204.777, z = 162.5415}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -613.3203, y = 205.209, z = 139.3047}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    mainQuestId = 72802,
                    questState = questState.Finished,
                    questGlobalVarId = 12042,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    daily = dailyCondition.Day,
                    sceneId = 3,
                    priority = 1
                },
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 70822, questState = 3}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3107.961, y = 215.2954, z = -4289.898}, rot = {x = 0, y = 107.8399, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    mainQuestId = 72802,
                    questState = questState.Finished,
                    questGlobalVarId = 12042,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    daily = dailyCondition.Night,
                    sceneId = 3,
                    priority = 1
                },
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 70822, questState = 3}}},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
