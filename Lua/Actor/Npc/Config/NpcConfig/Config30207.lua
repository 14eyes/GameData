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
        NpcId = "30207",
        Alias = "Npc30207",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014022, isActivityValid = true, sceneId = 9, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -246.6473, y = 121.7973, z = 418.1639}, rot = {x = 0, y = 219.9655, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014023, isActivityValid = true, sceneId = 9, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -211.0192, y = 135.0917, z = 442.7073}, rot = {x = 0, y = 90, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014024, isActivityValid = true, sceneId = 9, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 535.8102, y = 128.3778, z = -573.7737}, rot = {x = 0, y = 265.308, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014025, isActivityValid = true, sceneId = 9, priority = 3},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 639.1224, y = 213.7281, z = -425.4684}, rot = {x = 0, y = 270, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {sceneId = 9, priority = 4},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 22},
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2014,
                            activityCondId = 2014026,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -703.0627, y = 252.0446, z = -20.11461}, rot = {x = 0, y = 47.27913, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
