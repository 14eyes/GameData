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
        NpcId = "4385",
        Alias = "Npc4385",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1073, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 91.87062, y = 5.556454, z = 2.933257}, rot = {x = 0, y = 115.9302, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4385",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018438500, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {19152},
                dialogDataList = {{dialogId = 191529901, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1915201,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19152},
                dialogDataList = {{dialogId = 191529902, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1915201,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1915204,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
