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
        NpcId = "3002",
        Alias = "Npc3002",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3072.825, y = 246.9638, z = -4402.275}, rot = {x = 0, y = 143.4705, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3002",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        BillboardMarkData = {
            markDatas = {
                {icon = "UI_NPCTopIcon_GeneralCargo", priority = 0},
                {
                    icon = "UI_NPCTopIcon_Activity_GreatFestivalV2_Music",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 2030,
                                activityCondId = 2030303,
                                isActivityValid = true
                            },
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 2030,
                                activityCondId = 2030312,
                                isActivityValid = false
                            }
                        }
                    }
                }
            }
        }
    }
}
