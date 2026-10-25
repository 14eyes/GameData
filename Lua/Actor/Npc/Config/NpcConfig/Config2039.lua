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
        NpcId = "2039",
        Alias = "Npc2039",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -637.9926, y = 225.1649, z = 195.7362}, rot = {x = 0, y = 110.8849, z = 0}},
                        freestyle = 1230,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -642.8803, y = 224.1323, z = 211.6834}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -651.5727, y = 223.6952, z = 211.7749}, rot = {x = 0, y = 242.6106, z = 0}},
                        freestyle = 1130,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -640.4509, y = 223.4369, z = 212.0802}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -638.9135, y = 223.0889, z = 220.1687}, rot = {x = 0, y = 357.0765, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -637.3046, y = 221.2067, z = 232.1208}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -637.558, y = 220.5346, z = 243.9035}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -637.5867, y = 221.3731, z = 230.9741}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -637.9546, y = 223.0443, z = 220.8042}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -639.7704, y = 224.418, z = 206.0143}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {activityId = 2002, activityCondId = 2002101, isActivityValid = true, sceneId = 3, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -473.8145, y = 209.7936, z = 329.8276}, rot = {x = 0, y = 173.6962, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2039",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
