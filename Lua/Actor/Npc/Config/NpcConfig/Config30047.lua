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
        NpcId = "30047",
        Alias = "Npc30047",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 353004700,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2334.568, y = 209.984, z = -931.8954}, rot = {x = 0, y = 60, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30047",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "UI_NPCTopIcon_Activity_Pacman",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 2020,
                                activityCondId = 2020004,
                                isActivityValid = true
                            }
                        }
                    }
                }
            }
        }
    }
}
