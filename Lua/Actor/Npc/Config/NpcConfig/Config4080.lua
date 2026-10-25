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
        NpcId = "4080",
        Alias = "Npc4080",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -301.1773, y = 246.8544, z = 2790.218}, rot = {x = 0, y = 333.7978, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 4010021, questState = questState.UnFinished, sceneId = 3, priority = 5},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4080",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018408000, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23023},
                priority = 320,
                dialogDataList = {{dialogId = 1018408001, duration = 3, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23024},
                priority = 320,
                dialogDataList = {{dialogId = 1018408002, duration = 3, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {13031},
                priority = 315,
                dialogDataList = {{dialogId = 130319914, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 13031, questState = 2}}}
            }
        }
    }
}
