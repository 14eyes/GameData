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
        NpcId = "4210",
        Alias = "Npc4210",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 38},
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7302515,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -69.52573, y = 223.3442, z = 3287.48}, rot = {x = 0, y = 155.9761, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
