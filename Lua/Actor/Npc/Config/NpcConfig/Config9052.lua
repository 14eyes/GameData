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
        NpcId = "9052",
        Alias = "Npc9052",
        HomeScheduleData = {
            bubbleGroup = {
                [905201] = {
                    {
                        conditions = {
                            {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 0}},
                            {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 2}}
                        },
                        weight = 20,
                        initDialog = 1016905200
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905202
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905203
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905204
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905205
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905206
                    }
                },
                [905202] = {
                    {
                        conditions = {
                            {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 0}},
                            {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 2}}
                        },
                        weight = 20,
                        initDialog = 1016905201
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905207
                    },
                    {
                        conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 2021, questState = 3}}},
                        weight = 20,
                        initDialog = 1016905208
                    }
                }
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 10000052},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {905201}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1220,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Default_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {905201}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1230,
                            isLoop = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Default_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {905201}
                        }
                    }
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 4701,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 4701},
                    priority = 5,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 4711,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 4711},
                    priority = 6,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 4702,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 4702},
                    priority = 7,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 4712,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 4712},
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
                        emotion = {phoneme = "P_Default_01", emotion = "Default_01"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {905202}
                    }
                }
            }
        }
    }
}
