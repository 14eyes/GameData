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
        NpcId = "3228",
        Alias = "Npc3228",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7219815,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Less,
                    sceneId = 5,
                    priority = 0
                },
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 2}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 646.9797, y = 170.6943, z = 749.7987}, rot = {x = 0, y = 321.9106, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
