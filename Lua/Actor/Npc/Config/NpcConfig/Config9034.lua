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
        NpcId = "9034",
        Alias = "Npc9034",
        HomeScheduleData = {
            bubbleGroup = {
                [903401] = {
                    {weight = 20, initDialog = 1016903401},
                    {weight = 20, initDialog = 1016903402},
                    {weight = 20, initDialog = 1016903403},
                    {weight = 20, initDialog = 1016903404},
                    {weight = 20, initDialog = 1016903405}
                },
                [903402] = {{weight = 20, initDialog = 1016903406}, {weight = 20, initDialog = 1016903407}}
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 10000034},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {903401}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1130,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Normal_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {903401}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Sweat_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {903401}
                        }
                    }
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 2801,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 2801},
                    priority = 5,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 2811,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 2811},
                    priority = 6,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 2802,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 2802},
                    priority = 7,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 2812,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 2812},
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
                        bubbleGroupIds = {903402}
                    }
                }
            }
        }
    }
}
