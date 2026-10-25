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
local Config17015 = {}

local data = {
    NpcId = "17015",
    Alias = "Npc17015",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            bornConfigId = 701701502,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 9592.836, y = 396.5436, z = 6691.865}, rot = {x = 0, y = 207.4493, z = 0}},
                    freestyle = 1120,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local billboardMarkData = {}
local markDatas = {}
local tbl = {icon = "UI_NPCTopIcon_TpsDefense", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5334007
local n2 = 1
paramList[1] = 5334
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7767401
paramList2[2] = n3
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config17015.Data = data
return Config17015
