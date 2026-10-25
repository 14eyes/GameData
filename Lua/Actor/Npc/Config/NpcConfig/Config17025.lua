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
local Config17025 = {}

local data = {
    NpcId = "17025",
    Alias = "Npc17025",
    DailyScheduleData = {
        {
            bornConfigId = 701702500,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 8437.51, y = 218.1914, z = 7814.632}, rot = {x = 0, y = 86.742, z = 0}},
                    freestyle = 100,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_17025", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 7765601
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
local tbl3 = {}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 2
paramList2[1] = 7765602
paramList2[2] = n2
tbl4.paramList = paramList2
tbl3[1] = tbl4
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n3 = 2
paramList3[1] = 7765603
paramList3[2] = n3
tbl6.paramList = paramList3
tbl5[1] = tbl6
conditions[1] = v
conditions[2] = tbl3
conditions[3] = tbl5
tbl.conditions = conditions
nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config17025.Data = data
return Config17025
