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
        NpcId = "2348",
        Alias = "Npc2348",
        DailyScheduleData = {
            {
                bornConfigId = 632348000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -608.7396, y = 225.5548, z = 303.8412}, rot = {x = 0, y = 130, z = 0}},
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        BillboardMarkData = {markDatas = {{icon = "UI_NPCTopIcon_Activity_LanV6_Photo", priority = 0}}},
        ReactionData = {
            reactionDatas = {
                {
                    _type_ = NpcConfigCommon.ReactDataType.SimpleParallel,
                    reactionId = 1,
                    bornPosId = 0,
                    priority = 99,
                    triggerCD = 60,
                    reactionEvent = {eventType = reactEventType.ReactionNotify, eventUIntParams = {2045}},
                    preConditions = {{}},
                    runningConditions = {{}},
                    beforeActions = {
                        {_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false},
                        {_type_ = LuaVirtualType.NpcWaitSecondsReactionAction, duration = 2}
                    },
                    afterActions = {{_type_ = LuaVirtualType.NpcWaitSecondsReactionAction, duration = 55}},
                    reactionActions = {
                        group0 = {{_type_ = LuaVirtualType.NpcPlaySpeechBubbleReactionAction, dialogId = 1016234800, duration = 5}},
                        group1 = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1260, time = 5}},
                        group2 = {}
                    }
                }
            }
        }
    }
}
