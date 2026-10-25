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
        NpcId = "4395",
        Alias = "Npc4395",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 344395000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1544.482, y = 49.43567, z = 5011.522}, rot = {x = 0, y = 39, z = 0}},
                        freestyle = 2,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 344395001,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7321913,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1533.289, y = 25.13408, z = 5151.041}, rot = {x = 0, y = 295.3, z = 0}},
                        freestyle = 2,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 344395001,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7321913,
                            questGlobalVarValue = 2,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1533.289, y = 25.13408, z = 5151.041}, rot = {x = 0, y = 295.3, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
