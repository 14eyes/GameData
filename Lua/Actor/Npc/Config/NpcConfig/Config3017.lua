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
        NpcId = "3017",
        Alias = "Npc3017",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3115.079, y = 250.9338, z = -4414.984}, rot = {x = 0, y = 217.569, z = 0}},
                        freestyle = 4010,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3017",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "UI_NPCTopIcon_Activity_GreatFestivalV2_Music",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 2030,
                                activityCondId = 2030301,
                                isActivityValid = true
                            },
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 2030,
                                activityCondId = 2030310,
                                isActivityValid = false
                            }
                        }
                    }
                }
            }
        }
    }
}
