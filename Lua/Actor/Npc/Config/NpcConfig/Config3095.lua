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
        NpcId = "3095",
        Alias = "Npc3095",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2579.301, y = 214.2126, z = -3841.43}, rot = {x = 0, y = 300, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2574.394, y = 214.2126, z = -3841.98}, rot = {x = 0, y = 280.286, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2022,
                            activityCondId = 2022010,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2581.523, y = 214.2126, z = -3843.762}, rot = {x = 0, y = 85.97852, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_3095",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
