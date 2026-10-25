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
        NpcId = "2199",
        Alias = "Npc2199",
        DailyScheduleData = {
            {
                condition = {
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 3,
                    questGlobalVarOperate = compareOperation.Greater,
                    daily = dailyCondition.Day,
                    sceneId = 6,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1062.871, y = 960.6254, z = 664.3907}, rot = {x = 0, y = 153.5535, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 71037,
                    questGlobalVarValue = 3,
                    questGlobalVarOperate = compareOperation.Greater,
                    daily = dailyCondition.Night,
                    sceneId = 6,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1078.348, y = 961.3522, z = 679.4745}, rot = {x = 0, y = 89.94814, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2199",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
