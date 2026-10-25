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
local Config7180 = {}

local data = {
    NpcId = "7180",
    Alias = "Npc7180",
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_7180",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7610102,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}

local explicitNameData = {}
local nameDatas = {}

local tbl = {
    nameStr = "NPC_EXPNAME_7180",
    priority = 0,
    hideInBillboard = true,
    isBanDaily = false,
    validQuestIds = {76100}
}

local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 7610016
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config7180.Data = data
return Config7180
