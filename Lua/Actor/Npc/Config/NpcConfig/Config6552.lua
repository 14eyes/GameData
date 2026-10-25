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
        NpcId = "6552",
        Alias = "Npc6552",
        DailyScheduleData = {
            {
                bornConfigId = 586552000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1173.106, y = 199.4368, z = 14019.84}, rot = {x = 0, y = 324.7734, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_6552",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_6552",
                    priority = 0,
                    isBanDaily = true,
                    validQuestIds = {15041},
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 15041, questState = 2}}}
                }
            }
        }
    }
}
