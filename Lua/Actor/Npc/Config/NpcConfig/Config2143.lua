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
        NpcId = "2143",
        Alias = "Npc2143",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1057, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3.701617, y = 0.3185302, z = 11.6824}, rot = {x = 0, y = 147.4847, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3.434702, y = 0.3185304, z = 11.02608}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 6.359379, y = 0.318531, z = 6.875879}, rot = {x = 0, y = 224.8462, z = 0}},
                        freestyle = 1120,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3.812021, y = 0.3185307, z = 10.46403}, rot = {x = 0, y = 278.6327, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -3.166127, y = 0.3185304, z = 10.52275}, rot = {x = 0, y = 269.6462, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -4.781421, y = 0.3185307, z = 8.444241}, rot = {x = 0, y = 212.6723, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -6.512775, y = 0.3185312, z = 6.162535}, rot = {x = 0, y = 121.3387, z = 0}},
                        freestyle = 1190,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -5.457398, y = 0.3185306, z = 9.382236}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2143",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
