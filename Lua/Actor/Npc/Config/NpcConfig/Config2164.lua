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
        NpcId = "2164",
        Alias = "Npc2164",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    questGlobalVarId = 71831,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    daily = dailyCondition.AllDay,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -780.6588, y = 205.3442, z = 737.1455}, rot = {x = 0, y = 57.53131, z = 0}},
                        freestyle = 4260,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -782.1318, y = 205.3442, z = 735.1355}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -788.153, y = 205.3353, z = 735.6993}, rot = {x = 0, y = 73.85889, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -782.3147, y = 205.3353, z = 738.8156}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
