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
        NpcId = "6661",
        Alias = "Npc6661",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 586661000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 884.8723, y = 315.62, z = 13734.59}, rot = {x = 0, y = 262.8246, z = 0}},
                        freestyle = 17,
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
                    bornPosId = 0,
                    priority = 3,
                    triggerCD = 5,
                    reactionEvent = {eventType = reactEventType.None},
                    preConditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                            {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "StandbyShow_01"},
                            {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 5, compare = 0}
                        }
                    },
                    runningConditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                            {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "StandbyShow_01"},
                            {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 5, compare = 0}
                        }
                    },
                    reactionActions = {group0 = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1, time = 3}}}
                },
                {
                    _type_ = NpcConfigCommon.ReactDataType.StoryAction,
                    reactionId = 2,
                    bornPosId = 0,
                    priority = 4,
                    triggerCD = 4,
                    reactionEvent = {eventType = reactEventType.None},
                    preConditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                            {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "GroundAimLoop"},
                            {
                                _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                                angle = 45,
                                range = 10,
                                minHeight = 10,
                                maxHeight = 10
                            }
                        },
                        {
                            {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                            {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "AirAimLoop"},
                            {
                                _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                                angle = 45,
                                range = 10,
                                minHeight = 10,
                                maxHeight = 10
                            }
                        }
                    },
                    runningConditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                            {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "GroundAimLoop"},
                            {
                                _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                                angle = 45,
                                range = 10,
                                minHeight = 10,
                                maxHeight = 10
                            }
                        },
                        {
                            {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                            {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "AirAimLoop"},
                            {
                                _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                                angle = 45,
                                range = 10,
                                minHeight = 10,
                                maxHeight = 10
                            }
                        }
                    },
                    beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}},
                    storyId = 600580001
                }
            }
        }
    }
}
