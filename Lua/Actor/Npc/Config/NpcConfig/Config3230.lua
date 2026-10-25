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
        NpcId = "3230",
        Alias = "Npc3230",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7219816,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 5,
                    priority = 0
                },
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 2}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -118.0702, y = 245.3678, z = 392.174}, rot = {x = 0, y = 95.33959, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
