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
        NpcId = "2154",
        Alias = "Npc2154",
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
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -736.6612, y = 204.3834, z = 1482.359}, rot = {x = 0, y = 287.5242, z = 0}},
                        freestyle = 1240,
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
                        dummypoint = {pos = {x = 1090.305, y = 962.2775, z = 673.0348}, rot = {x = 0, y = 322.5427, z = 0}},
                        freestyle = 1240,
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
                        dummypoint = {pos = {x = 174.1391, y = 457.9714, z = 618.0059}, rot = {x = 0, y = 176.5934, z = 0}},
                        freestyle = 1240,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2154",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
