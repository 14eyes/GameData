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
        NpcId = "2047",
        Alias = "Npc2047",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -622.785, y = 219.543, z = 251.6387}, rot = {x = 0, y = 301.9044, z = 0}},
                        freestyle = 1050,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -631.5815, y = 219.543, z = 254.4247}, rot = {x = 0, y = 295.9923, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -648.0641, y = 219.543, z = 266.7463}, rot = {x = 325.8374, y = 260.3016, z = 334.0275}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -660.3669, y = 219.543, z = 263.631}, rot = {x = 0, y = 256.6047, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -674.0908, y = 219.543, z = 257.063}, rot = {x = 0, y = 239.7454, z = 0}},
                        freestyle = 1190,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -654.0305, y = 219.543, z = 253.9469}, rot = {x = 0, y = 93.76841, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -645.1132, y = 219.543, z = 255.611}, rot = {x = 0, y = 85.82041, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -636.6535, y = 219.543, z = 254.6677}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -621.6628, y = 219.5982, z = 248.5982}, rot = {x = 0, y = 95.08208, z = 0}},
                        freestyle = 1050,
                        time = 20,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2047",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
