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
        NpcId = "2418",
        Alias = "Npc2418",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 2103501,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 987.2955, y = 315.9207, z = 1583.881}, rot = {x = 0, y = 226.8863, z = 0}},
                        freestyle = 4110,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 2103801,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 987.2955, y = 315.9207, z = 1583.881}, rot = {x = 0, y = 226.8863, z = 0}},
                        freestyle = 4110,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 2103501,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2418",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
