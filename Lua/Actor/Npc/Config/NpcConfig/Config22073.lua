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
        NpcId = "22073",
        Alias = "Npc22073",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 582207300,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 422.025, y = 206.8149, z = 13911.93}, rot = {x = 0, y = -27.791, z = 0}},
                        freestyle = 8,
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
                    reactionId = 2,
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
                    reactionId = 3,
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
