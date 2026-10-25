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
        NpcId = "9102",
        Alias = "Npc9102",
        HomeScheduleData = {
            bubbleGroup = {
                [910201] = {
                    {weight = 20, initDialog = 1016910200},
                    {weight = 20, initDialog = 1016910201},
                    {weight = 20, initDialog = 1016910202},
                    {weight = 20, initDialog = 1016910203},
                    {weight = 20, initDialog = 1016910204}
                },
                [910202] = {{weight = 20, initDialog = 1016910205}, {weight = 20, initDialog = 1016910206}}
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 10000102},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {910201}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1230,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Default_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {910201}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1220,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Gentle_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {910201}
                        }
                    }
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9601,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9601},
                    priority = 5,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9611,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9611},
                    priority = 6,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9602,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9602},
                    priority = 7,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 9612,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 9612},
                    priority = 8,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1060,
                        isLoop = true,
                        disableBlink = true,
                        emotion = {phoneme = "P_Smile_04", emotion = "HiClosed_01"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {910202}
                    }
                }
            }
        }
    }
}
