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
        NpcId = "2440",
        Alias = "Npc2440",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -393.0652, y = 214.4641, z = -1143.909}, rot = {x = 0, y = 304.3646, z = 0}},
                        freestyle = 1120,
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -394.4845, y = 214.4641, z = -1146.774}, rot = {x = 0, y = 218.6183, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -390.3851, y = 214.4641, z = -1141.654}, rot = {x = 0, y = 20.25865, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -393.0254, y = 214.4641, z = -1142.397}, rot = {x = 0, y = 288.2292, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2440",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
