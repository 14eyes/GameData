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
        NpcId = "9099",
        Alias = "Npc9099",
        HomeScheduleData = {
            bubbleGroup = {
                [909901] = {
                    {weight = 20, initDialog = 1016909900},
                    {weight = 20, initDialog = 1016909901},
                    {weight = 20, initDialog = 1016909902},
                    {weight = 20, initDialog = 1016909903},
                    {weight = 20, initDialog = 1016909904}
                },
                [909902] = {{weight = 20, initDialog = 1016909905}, {weight = 20, initDialog = 1016909906}}
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 10000099},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {909901}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1130,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Default_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {909901}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Gentle_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {909901}
                        }
                    }
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9301,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9301},
                    priority = 5,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9311,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9311},
                    priority = 6,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9302,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9302},
                    priority = 7,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9312,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9312},
                    priority = 8,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1171,
                        isLoop = true,
                        emotion = {phoneme = "P_Default_01", emotion = "Gentle_01"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {909902}
                    }
                }
            }
        }
    }
}
