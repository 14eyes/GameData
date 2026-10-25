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
        NpcId = "2353",
        Alias = "Npc2353",
        DailyScheduleData = {
            {
                bornConfigId = 632353000,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -589.3874, y = 226.3904, z = 336.0517}, rot = {x = 0, y = 315.3332, z = 0}},
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        ReactionData = {
            reactionDatas = {
                {
                    _type_ = NpcConfigCommon.ReactDataType.SimpleParallel,
                    reactionId = 1,
                    bornPosId = 632353000,
                    priority = 99,
                    triggerCD = 60,
                    reactionEvent = {eventType = reactEventType.ReactionNotify, eventUIntParams = {2045}},
                    preConditions = {{}},
                    runningConditions = {{}},
                    beforeActions = {
                        {_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false},
                        {_type_ = LuaVirtualType.NpcWaitSecondsReactionAction, duration = 1}
                    },
                    afterActions = {{_type_ = LuaVirtualType.NpcWaitSecondsReactionAction, duration = 55}},
                    reactionActions = {
                        group0 = {{_type_ = LuaVirtualType.NpcPlaySpeechBubbleReactionAction, dialogId = 1016235300, duration = 5}},
                        group1 = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1260, time = 5}}
                    }
                }
            }
        }
    }
}
