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
        NpcId = "30260",
        Alias = "Npc30260",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    activityId = 2016,
                    activityCondId = 2016035,
                    isActivityValid = true,
                    daily = dailyCondition.AllDay,
                    sceneId = 3,
                    priority = 2
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2329.118, y = 223.0629, z = -1060.857}, rot = {x = 0, y = 292.8648, z = 0}},
                        freestyle = 1220,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {sceneId = 1004, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016037,
                            isActivityValid = true
                        },
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 10101, questState = 3}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -18.37614, y = 0.001999839, z = 17.52298}, rot = {x = 0, y = 268.9315, z = 0}},
                        freestyle = 1130,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
