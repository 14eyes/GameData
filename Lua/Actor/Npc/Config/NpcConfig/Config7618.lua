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
local Config7618 = {}

local data = {
    NpcId = "7618",
    Alias = "Npc7618",
    DailyScheduleData = {
        {
            bornConfigId = 637618000,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 5269.37, y = 242.2163, z = 9575.07}, rot = {x = 0, y = 152.6116, z = 0}},
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7618", priority = 0}}}
}

local billboardMarkData = {}
local markDatas = {}
local tbl = {icon = "UI_NPCTopIcon_TalkSpecial", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList = {}
local n = 3
paramList[1] = 7616803
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config7618.Data = data
return Config7618
