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
        NpcId = "2616",
        Alias = "Npc2616",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 6,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1074.685, y = 961.4077, z = 684.5313}, rot = {x = 0, y = 265.3472, z = 0}},
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
                        dummypoint = {pos = {x = 206.2355, y = 461.0935, z = 615.0048}, rot = {x = 0, y = 110.0306, z = 0}},
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
                        dummypoint = {pos = {x = 1074.685, y = 961.4077, z = 684.5313}, rot = {x = 0, y = 265.3472, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2616",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
