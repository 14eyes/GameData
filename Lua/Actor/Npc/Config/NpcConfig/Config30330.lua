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
        NpcId = "30330",
        Alias = "Npc30330",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 353033000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2020,
                            activityCondId = 2020012,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 4009802,
                            questGlobalVarValue = 0,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2509.769, y = 225.425, z = 82.004}, rot = {x = 0.0, y = 78.118, z = 0.0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 353033001,
                condition = {daily = dailyCondition.AllDay, sceneId = 1004, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2020,
                            activityCondId = 2020013,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 4009902,
                            questGlobalVarValue = 0,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(1004, "N30330_T4009821"),
                        freestyle = 1240,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 353033002,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2020,
                            activityCondId = 2020014,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "N30330_T4009927"),
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
