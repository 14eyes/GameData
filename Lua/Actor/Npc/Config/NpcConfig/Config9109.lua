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
        NpcId = "9109",
        Alias = "Npc9109",
        HomeScheduleData = {
            bubbleGroup = {
                [910901] = {
                    {weight = 20, initDialog = 1016910900},
                    {weight = 20, initDialog = 1016910901},
                    {weight = 20, initDialog = 1016910902},
                    {weight = 20, initDialog = 1016910903},
                    {weight = 20, initDialog = 1016910904}
                },
                [910902] = {{weight = 20, initDialog = 1016910905}, {weight = 20, initDialog = 1016910906}}
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 10000109},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {910901}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            disableHeadCtrl = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Doubt_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {910901}
                        },
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Default_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {910901}
                        }
                    }
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 10301,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 10301},
                    priority = 5,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 10311,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 10311},
                    priority = 6,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 10302,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 10302},
                    priority = 7,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 10312,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 10312},
                    priority = 8,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1130,
                        isLoop = true,
                        emotion = {phoneme = "P_Default_01", emotion = "Gentle_01"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {910902}
                    }
                }
            }
        }
    }
}
