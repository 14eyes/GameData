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
local Config7417 = {}

local data = {
    NpcId = "7417",
    Alias = "Npc7417",
    DailyScheduleData = {
        {
            bornConfigId = 707417000,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 9623.708, y = 385.6917, z = 6443.595}, rot = {x = 0, y = 35.53657, z = 0}},
                    freestyle = 1230,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7417", priority = 0}}}
}

local billboardMarkData = {}
local markDatas = {}
local tbl = {icon = "UI_NPCTopIcon_ReputationSnez", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7765701
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config7417.Data = data
return Config7417
