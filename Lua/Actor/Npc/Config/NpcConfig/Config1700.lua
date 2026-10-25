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
        NpcId = "1700",
        Alias = "Npc1700",
        DailyScheduleData = {
            {
                transTeleport = true,
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q2002101_N1405"),
                        freestyle = 1130,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q2002101_N1405"), action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1700",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
