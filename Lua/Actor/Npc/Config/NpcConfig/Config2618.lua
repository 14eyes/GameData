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
        NpcId = "2618",
        Alias = "Npc2618",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {
                    mainQuestId = 1025,
                    questState = questState.Finished,
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Less,
                    activityId = 2036,
                    activityCondId = 2036006,
                    isActivityValid = false,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -742.3741, y = 204.6999, z = 1500.664}, rot = {x = 0, y = 12.6311, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 6,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1082.2, y = 961.2805, z = 685.8095}, rot = {x = 0, y = 191.0404, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Greater,
                    sceneId = 6,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 193.4909, y = 460.563, z = 623.9431}, rot = {x = 0, y = 184.0966, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    mainQuestId = 1025,
                    questState = questState.Finished,
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Less,
                    activityId = 2036,
                    activityCondId = 2036006,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -775.0696, y = 204.6768, z = 1504.703}, rot = {x = 0, y = 201.6109, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2618",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
