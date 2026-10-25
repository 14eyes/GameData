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
        NpcId = "9136",
        Alias = "Npc9136",
        HomeScheduleData = {
            bubbleGroup = {
                [913601] = {
                    {weight = 20, initDialog = 1016913600},
                    {weight = 20, initDialog = 1016913601},
                    {weight = 20, initDialog = 1016913602},
                    {weight = 20, initDialog = 1016913603},
                    {weight = 20, initDialog = 1016913604}
                },
                [913602] = {{weight = 20, initDialog = 1016913605}, {weight = 20, initDialog = 1016913606}}
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 10000143},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {913601}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            disableHeadCtrl = true,
                            emotion = {phoneme = "P_Smile_01", emotion = "Doubt_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {913601}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1230,
                            isLoop = true,
                            emotion = {phoneme = "P_Smile_01", emotion = "Default_01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {913601}
                        }
                    }
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 12801,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 12801},
                    priority = 5,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 12811,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 12811},
                    priority = 6,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 12802,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 12802},
                    priority = 7,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                },
                {
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionHomeEventCondition,
                                eventId = 12812,
                                notTrigger = false,
                                enableMultiPlayer = true
                            }
                        }
                    },
                    point = {_type_ = LuaVirtualType.NpcHomeEventPos, eventId = 12812},
                    priority = 8,
                    freeStyleList = {{weight = 20, time = 6, freestyle = 1190, isLoop = true}}
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1200,
                        isLoop = true,
                        disableBlink = true,
                        emotion = {phoneme = "P_Smile_01", emotion = "HiClosed_01"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {913602}
                    }
                }
            }
        }
    }
}
