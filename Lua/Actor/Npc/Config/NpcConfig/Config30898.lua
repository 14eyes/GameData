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
local Config30898 = {}

local data = {
    NpcId = "30898",
    Alias = "Npc30898",
    TitleData = {
        titleDatas = {{titleStr = "NPC_TITLE_30898", priority = 0, isBanDaily = false, validQuestIds = {0}}}
    }
}

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
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2043004
local n2 = 1
paramList[1] = 2043
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7370601
paramList2[2] = n3
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
local nahidaNarratorData = {}

local tbl4 = {
    validQuestIds = {0},
    priority = 201,
    dialogDataList = {{dialogId = 1018308980, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions2 = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList3 = {}
local n4 = 2043002
local n5 = 1
paramList3[1] = 2043
paramList3[2] = n4
paramList3[3] = n5
tbl6.paramList = paramList3
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n6 = 3
paramList4[1] = 7370503
paramList4[2] = n6
tbl7.paramList = paramList4
tbl5[1] = tbl6
tbl5[2] = tbl7
conditions2[1] = tbl5
tbl4.conditions = conditions2

local tbl8 = {
    validQuestIds = {0},
    priority = 202,
    dialogDataList = {{dialogId = 1018308981, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions3 = {}
local tbl9 = {}
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList5 = {}
local n7 = 2043004
local n8 = 1
paramList5[1] = 2043
paramList5[2] = n7
paramList5[3] = n8
tbl10.paramList = paramList5
local tbl11 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList6 = {}
local n9 = 3
paramList6[1] = 7370601
paramList6[2] = n9
tbl11.paramList = paramList6
tbl9[1] = tbl10
tbl9[2] = tbl11
conditions3[1] = tbl9
tbl8.conditions = conditions3
nahidaNarratorData[1] = tbl4
nahidaNarratorData[2] = tbl8
data.NahidaNarratorData = nahidaNarratorData
Config30898.Data = data
return Config30898
