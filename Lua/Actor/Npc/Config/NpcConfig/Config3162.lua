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
        NpcId = "3162",
        Alias = "Npc3162",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3659.747, y = 221.0925, z = -2991.643}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 72122,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3156.505, y = 200.7781, z = -4657.082}, rot = {x = 0, y = 75.57692, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 72154, questState = questState.Finished, sceneId = 3, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3353.872, y = 238.4675, z = -3463.613}, rot = {x = 0, y = 304.4489, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3162",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
