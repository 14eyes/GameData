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
        NpcId = "10303",
        Alias = "Npc10303",
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_10303",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                },
                {
                    titleStr = "NPC_TITLE_10303_1",
                    priority = 1,
                    condList = {
                        {
                            condition = {questGlobalVarId = 20002, questGlobalVarValue = 1, questGlobalVarOperate = compareOperation.Equal},
                            priority = 1,
                            isShow = true
                        }
                    }
                }
            }
        }
    }
}
