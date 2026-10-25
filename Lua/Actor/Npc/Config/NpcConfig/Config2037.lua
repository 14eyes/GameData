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
        NpcId = "2037",
        Alias = "Npc2037",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -601.0802, y = 210.0999, z = 277.6711}, rot = {x = 0, y = 115.3184, z = 0}},
                        freestyle = 1050,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2019,
                            activityCondId = 2019001,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 4009201,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2037",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
