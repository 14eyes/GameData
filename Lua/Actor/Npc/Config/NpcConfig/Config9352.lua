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
        NpcId = "9352",
        Alias = "Npc9352",
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
                        {weight = 20, time = 6, isLoop = true},
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1031,
                            isLoop = true,
                            emotion = {phoneme = "P_Smile_01", emotion = "Default_01"}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1110,
                            isLoop = true,
                            emotion = {phoneme = "P_Smile_01", emotion = "Default_01"}
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
                        {weight = 20, time = 6, isLoop = true},
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1031,
                            isLoop = true,
                            emotion = {phoneme = "P_Smile_01", emotion = "Default_01"}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1110,
                            isLoop = true,
                            emotion = {phoneme = "P_Smile_01", emotion = "Default_01"}
                        }
                    }
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1031,
                        isLoop = true,
                        disableBlink = true,
                        emotion = {phoneme = "P_Smile_02", emotion = "LowClosed_07"}
                    }
                }
            }
        }
    }
}
