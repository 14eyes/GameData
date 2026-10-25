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
        NpcId = "2347",
        Alias = "Npc2347",
        DailyScheduleData = {
            {
                bornConfigId = 632347000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -616.0608, y = 250.6663, z = 374.5655}, rot = {x = 0, y = -25, z = 0}},
                        lookAtType = focusToPlayerType.Default,
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
                        {_type_ = LuaVirtualType.NpcWaitSecondsReactionAction, duration = 2},
                        {_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}
                    },
                    afterActions = {{_type_ = LuaVirtualType.NpcWaitSecondsReactionAction, duration = 55}},
                    reactionActions = {
                        group0 = {{_type_ = LuaVirtualType.NpcPlaySpeechBubbleReactionAction, dialogId = 1016234700, duration = 5}},
                        group1 = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1060, time = 5}},
                        group2 = {}
                    }
                }
            }
        }
    }
}
