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
local Config30924 = {}

local data = {
    NpcId = "30924",
    Alias = "Npc30924",
    DailyScheduleData = {
        {
            bornConfigId = 633092400,
            condition = {sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -477.7053, y = 210.2689, z = 325.4654}, rot = {x = 0, y = 50, z = 0}},
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local titleDataNew = {}
local titleDatas = {}
local tbl = {titleStr = "NPC_TITLE_30924", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7114901
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
titleDatas[1] = tbl
titleDataNew.titleDatas = titleDatas
data.TitleDataNew = titleDataNew
local billboardMarkData = {}
local markDatas = {}
local tbl3 = {icon = "UI_NPCTopIcon_Activity_LanV6_Shop", priority = 0}
local conditions2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 3
paramList2[1] = 7114901
paramList2[2] = n2
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditions2[1] = tbl4
tbl3.conditions = conditions2
markDatas[1] = tbl3
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config30924.Data = data
return Config30924
