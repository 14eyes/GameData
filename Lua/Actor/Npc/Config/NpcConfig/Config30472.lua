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
        NpcId = "30472",
        Alias = "Npc30472",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 433047200,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -342.9113, y = 200.4668, z = -710.9326}, rot = {x = 0, y = 18.65187, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30472",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        },
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "UI_NPCTopIcon_R2",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 5173,
                                activityCondId = 5173004,
                                isActivityValid = true
                            }
                        }
                    }
                },
                {
                    icon = "UI_NPCTopIcon_R2_Complete02",
                    priority = 2,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 5173,
                                activityCondId = 5173016,
                                isActivityValid = true
                            }
                        }
                    }
                }
            }
        }
    }
}
