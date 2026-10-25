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
local Config4488 = {}
local data = {NpcId = "4488", Alias = "Npc4488"}
local billboardMarkData = {}
local markDatas = {}

local tbl = {
    icon = "UI_NPCTopIcon_Activity_ColorChangingParkour",
    priority = 0,
    isBanDaily = false,
    validQuestIds = {0}
}

local conditions = {}
local v = {}

local tbl2 = {
    _type_ = LuaVirtualType.NpcActionSubQuestCondition,
    subQuestId = 7370503,
    questState = questState.Finished
}

local tbl3 = {
    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
    activityId = 2043,
    activityCondId = 2043002,
    isActivityValid = true
}

local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList = {}
local n = 3
paramList[1] = 7370601
paramList[2] = n
tbl4.paramList = paramList
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData

data.NahidaNarratorData = {
    {
        validQuestIds = {0},
        priority = 201,
        dialogDataList = {{dialogId = 1018448800, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditions = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                    subQuestId = 7370503,
                    questState = questState.Finished
                },
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2043,
                    activityCondId = 2043002,
                    isActivityValid = true
                }
            }
        }
    },
    {
        validQuestIds = {0},
        priority = 202,
        dialogDataList = {{dialogId = 1018448801, duration = 0, intervalMin = 20, intervalMax = 30}},
        conditions = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                    subQuestId = 7370601,
                    questState = questState.Finished
                },
                {
                    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                    activityId = 2043,
                    activityCondId = 2043004,
                    isActivityValid = true
                }
            }
        }
    }
}

Config4488.Data = data
return Config4488
