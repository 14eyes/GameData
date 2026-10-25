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
        NpcId = "9389",
        Alias = "Npc9389",
        LoungeScheduleData = {
            actionList = {
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionLoungeEventCondition, posId = 1}}},
                    priority = 1,
                    canGreet = true,
                    freeStyleList = {{}}
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionLoungeEventCondition, posId = 2}}},
                    priority = 2,
                    canGreet = true,
                    freeStyleList = {
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                            weight = 20,
                            time = 6,
                            isLoop = true
                        },
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            disableHeadCtrl = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Doubt_01"}
                        },
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
                            weight = 40,
                            time = 6,
                            freestyle = 1220,
                            isLoop = true,
                            disableHeadCtrl = true,
                            disableBlink = true,
                            emotion = {phoneme = "P_Default_01", emotion = "LowClosed_01"}
                        },
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            disableHeadCtrl = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Doubt_01"}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionLoungeEventCondition, posId = 3}}},
                    priority = 3,
                    canGreet = true,
                    freeStyleList = {{}}
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionLoungeEventCondition, posId = 4}}},
                    priority = 4,
                    canGreet = true,
                    freeStyleList = {
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                            weight = 20,
                            time = 6,
                            isLoop = true
                        },
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            disableHeadCtrl = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Doubt_01"}
                        },
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
                            weight = 40,
                            time = 6,
                            freestyle = 1220,
                            isLoop = true,
                            disableHeadCtrl = true,
                            disableBlink = true,
                            emotion = {phoneme = "P_Default_01", emotion = "LowClosed_01"}
                        },
                        {
                            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
                            weight = 20,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            disableHeadCtrl = true,
                            emotion = {phoneme = "P_Default_01", emotion = "Doubt_01"}
                        }
                    }
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 4030,
                        isLoop = true,
                        emotion = {phoneme = "P_Default_01", emotion = "Default_01"}
                    }
                }
            }
        }
    }
}
