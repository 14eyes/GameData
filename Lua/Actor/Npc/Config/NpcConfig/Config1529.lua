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
        NpcId = "1529",
        Alias = "Npc1529",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1751.104, y = 221.863, z = -396.6337}, rot = {x = 0, y = 323.4368, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1760.008, y = 221.863, z = -381.9641}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1776.278, y = 221.863, z = -387.4008}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1784.532, y = 218.3307, z = -374.9626}, rot = {x = 0, y = 166.0918, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1789.828, y = 218.096, z = -374.9561}, rot = {x = 0, y = 165.8013, z = 0}},
                        freestyle = 1170,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1784.532, y = 218.3307, z = -374.9626}, rot = {x = 0, y = 166.0918, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1786.233, y = 221.863, z = -392.8589}, rot = {x = 0, y = 61.8944, z = 0}},
                        freestyle = 1280,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1760.008, y = 221.863, z = -381.9641}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1768.939, y = 221.863, z = -381.4636}, rot = {x = 0, y = 206.6431, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1768.939, y = 221.863, z = -381.4636}, rot = {x = 0, y = 206.6431, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 1018, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1768.939, y = 221.863, z = -381.4636}, rot = {x = 0, y = 206.6431, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1529",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
