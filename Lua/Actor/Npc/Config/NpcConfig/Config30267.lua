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
        NpcId = "30267",
        Alias = "Npc30267",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016001,
                            isActivityValid = true
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2022.671, y = 204.0178, z = -868.6064}, rot = {x = 0, y = 294.0572, z = 0}},
                        freestyle = 1230,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016027,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016030,
                            isActivityValid = false
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30267",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
