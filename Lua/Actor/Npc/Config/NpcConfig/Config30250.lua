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
        NpcId = "30250",
        Alias = "Npc30250",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 2016, activityCondId = 2016001, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2010.464, y = 203.8446, z = -854.9701}, rot = {x = 0, y = 245.6768, z = 0}},
                        freestyle = 1230,
                        time = 40,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2007.615, y = 203.3806, z = -858.7335}, rot = {x = 0, y = 221.0206, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2010.754, y = 203.841, z = -866.5216}, rot = {x = 0, y = 167.9693, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2011.658, y = 203.9148, z = -870.1563}, rot = {x = 0, y = 225.7852, z = 0}},
                        freestyle = 1190,
                        time = 40,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2007.882, y = 203.4529, z = -863.4977}, rot = {x = 0, y = 156.6481, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2005.65, y = 203.4507, z = -855.8299}, rot = {x = 0, y = 328.034, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2008.366, y = 204.3241, z = -851.1542}, rot = {x = 0, y = 170.142, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016002,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016001,
                            isActivityValid = false
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2006.955, y = 203.7509, z = -853.7538}, rot = {x = 0, y = 208.2767, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30250",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
