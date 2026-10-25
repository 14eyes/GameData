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
        NpcId = "2140",
        Alias = "Npc2140",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1057, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2.72403, y = -7.902704, z = -20.18306}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2.607823, y = -7.902704, z = -20.20533}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -0.9538879, y = -7.885921, z = -22.75503}, rot = {x = 0, y = 1.394467, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2.090171, y = -7.902703, z = -27.53676}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2.908098, y = -7.902704, z = -22.76761}, rot = {x = 0, y = 357.3882, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 10008,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 1057,
                    priority = 1
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2140",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
