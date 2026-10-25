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
        NpcId = "1469",
        Alias = "Npc1469",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2224.901, y = 220.0981, z = -848.9036}, rot = {x = 5.643469, y = 192.785, z = 8.119964}},
                        freestyle = 1130,
                        time = 60,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {
                            pos = {x = 2226.504, y = 220.0981, z = -846.2184},
                            rot = {x = 358.1783, y = 34.36079, z = 355.4561}
                        },
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2221.673, y = 220.0981, z = -843.3127}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 8010,
                        time = 30,
                        action = generalPattern.Sit
                    },
                    {
                        dummypoint = {
                            pos = {x = 2225.081, y = 220.0981, z = -846.7051},
                            rot = {x = 12.22371, y = 185.9372, z = 1.429503}
                        },
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1469",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
