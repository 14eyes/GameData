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
        NpcId = "6208",
        Alias = "Npc6208",
        DailyScheduleData = {
            {
                bornConfigId = 526208000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand,
                        platformPoint = {
                            groupId = 133509274,
                            configId = 274001,
                            offsetPos = {x = 2.022, y = -0.558, z = -0.563},
                            offsetRot = {x = 0.0, y = 86.689, z = 0.0}
                        }
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_6208",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        },
        ReactionData = {
            reactionDatas = {
                {
                    priority = 0,
                    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {1002290001}},
                    reactionActions = {{freestyle = 1230, time = 1}}
                },
                {
                    priority = 0,
                    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {1002290002}},
                    reactionActions = {{freestyle = 1260, time = 2}}
                },
                {
                    priority = 0,
                    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {1002290006}},
                    reactionActions = {{freestyle = 4453, time = 5}}
                },
                {
                    priority = 0,
                    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {1002290008}},
                    reactionActions = {{freestyle = 1190, time = 4}}
                },
                {
                    priority = 0,
                    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {1002290010}},
                    reactionActions = {{freestyle = 1300, time = 2}}
                }
            }
        }
    }
}
