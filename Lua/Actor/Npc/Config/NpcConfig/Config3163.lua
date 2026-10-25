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
        NpcId = "3163",
        Alias = "Npc3163",
        DailyScheduleData = {
            {
                condition = {
                    questGlobalVarId = 72123,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3307.883, y = 231.287, z = -3439.782}, rot = {x = 0, y = 157.3141, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 72123,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 2
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2479.423, y = 445.9943, z = -4400.921}, rot = {x = 0, y = 147.9381, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 72123,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3483.814, y = 209.6572, z = -3367.087}, rot = {x = 0, y = 136.2743, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 72123,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    mainQuestId = 72122,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 3
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2454.681, y = 411.4448, z = -4410.128}, rot = {x = 0, y = 221.9382, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3163",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
