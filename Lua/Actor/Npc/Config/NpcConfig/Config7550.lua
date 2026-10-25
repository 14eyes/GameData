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
local Config7550 = {}

local data = {
    NpcId = "7550",
    Alias = "Npc7550",
    DailyScheduleData = {
        {
            bornConfigId = 707550000,
            condition = {sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 9738.161, y = 402.5072, z = 6632.096}, rot = {x = 0, y = 316.8113, z = 0}},
                    freestyle = 1122,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7550", priority = 0}}}
}

local billboardMarkData = {}
local markDatas = {}
local tbl = {icon = "UI_NPCTopIcon_TalkSpecial", priority = 0, isBanDaily = false, validQuestIds = {77185}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7718502
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
markDatas[1] = tbl
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config7550.Data = data
return Config7550
