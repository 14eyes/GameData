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
local Config7547 = {}

local data = {
    NpcId = "7547",
    Alias = "Npc7547",
    DailyScheduleData = {
        {
            bornConfigId = 707547000,
            condition = {sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 9648.279, y = 307.2985, z = 6858.183}, rot = {x = 0, y = 338.7842, z = 0}},
                    freestyle = 1230,
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
local tbl = {icon = "UI_NPCTopIcon_TalkSpecial", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList = {}
local n = 3
paramList[1] = 7722103
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config7547.Data = data
return Config7547
