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
        NpcId = "9900",
        Alias = "Npc9900",
        HomeScheduleData = {
            bubbleGroup = {
                [990001] = {
                    {weight = 20, initDialog = 1016990000},
                    {weight = 20, initDialog = 1016990001},
                    {weight = 20, initDialog = 1016990002},
                    {weight = 20, initDialog = 1016990003},
                    {weight = 20, initDialog = 1016990004}
                },
                [990002] = {{weight = 20, initDialog = 1016990005}, {weight = 20, initDialog = 1016990006}}
            },
            actionList = {
                {
                    point = {_type_ = LuaVirtualType.HomeBornPos, configId = 9900},
                    canGreet = true,
                    freeStyleList = {
                        {weight = 20, time = 6, isLoop = true, bubbleRate = 0.3, bubbleDelay = 0.2},
                        {weight = 20, time = 6, freestyle = 1030, isLoop = true, bubbleRate = 0.3, bubbleDelay = 0.2},
                        {weight = 20, time = 6, freestyle = 1130, isLoop = true, bubbleRate = 0.3, bubbleDelay = 0.2},
                        {
                            weight = 20,
                            time = 6,
                            isLoop = true,
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {990001}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1230,
                            isLoop = true,
                            emotion = {emotion = "Normal01"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {990001}
                        },
                        {
                            weight = 20,
                            time = 6,
                            freestyle = 1050,
                            isLoop = true,
                            disableHeadCtrl = true,
                            disableBlink = true,
                            emotion = {phoneme = "P_Angry01", emotion = "Closed02"},
                            bubbleRate = 0.3,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {990001}
                        }
                    }
                }
            },
            Greet = {
                freeStyleList = {
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1230,
                        isLoop = true,
                        emotion = {phoneme = "P_None", emotion = "Normal01"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {904702}
                    },
                    {
                        weight = 20,
                        time = 6,
                        freestyle = 1090,
                        isLoop = true,
                        emotion = {phoneme = "P_Smile01", emotion = "Normal03"},
                        bubbleRate = 0.3,
                        bubbleDelay = 0.2,
                        bubbleGroupIds = {990002}
                    }
                }
            }
        }
    }
}
