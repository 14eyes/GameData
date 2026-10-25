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
        NpcId = "30706",
        Alias = "Npc30706",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 533070601,
                condition = {daily = dailyCondition.AllDay, sceneId = 48014, priority = 5},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2702.98, y = 69.05927, z = 8335.284}, rot = {x = 0, y = 266.6978, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 533070602,
                condition = {daily = dailyCondition.AllDay, sceneId = 48015, priority = 5},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1135.661, y = 37.44144, z = 3812.884}, rot = {x = 0, y = 181.0311, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 533070603,
                condition = {daily = dailyCondition.AllDay, sceneId = 48016, priority = 5},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3388.026, y = 308.7881, z = 5214.73}, rot = {x = 0, y = 19.68094, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 533070604,
                condition = {daily = dailyCondition.AllDay, sceneId = 48017, priority = 5},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2195.007, y = 357.3, z = 4401.278}, rot = {x = 0, y = 258.7226, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "UI_NPCTopIcon_Activity_EffigyChallengeV6",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 5245,
                                activityCondId = 5245001,
                                isActivityValid = true
                            }
                        }
                    }
                }
            }
        }
    }
}
