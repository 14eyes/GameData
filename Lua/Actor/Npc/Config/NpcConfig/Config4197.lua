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
        NpcId = "4197",
        Alias = "Npc4197",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 38},
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7302515,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -177.8228, y = 252.121, z = 3346.482}, rot = {x = 0, y = 161.4411, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -176.1385, y = 255.0525, z = 3336.443}, rot = {x = 0, y = 348.347, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -177.6919, y = 251.8687, z = 3346.509}, rot = {x = 0, y = 337.1053, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -183.6085, y = 247.2399, z = 3363.17}, rot = {x = 0, y = 351.5372, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -185.3849, y = 245.2761, z = 3376.13}, rot = {x = 0, y = 170.0788, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -183.6227, y = 247.3001, z = 3363.169}, rot = {x = 0, y = 156.3701, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7321301,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
