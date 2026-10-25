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
local Config7207 = {}
local data = {NpcId = "7207", Alias = "Npc7207"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_NodKrai_Agency", priority = 0, validQuestIds = {0}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 156}
local paramList = {}
local n = 2204
local n2 = 0
paramList[1] = 0
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
inteeDatas[1] = tbl
inteeData.inteeDatas = inteeDatas
data.InteeData = inteeData

data.DailyScheduleData = {
    {
        bornConfigId = 617207000,
        condition = {sceneId = 0, priority = 0},
        actionPoints = {
            {
                dummypoint = {
                    pos = {x = 11.32856, y = 1.213323, z = -41.56828},
                    rot = {x = 358.4108, y = 179.4744, z = 1.745444}
                },
                lookAtType = focusToPlayerType.Default,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    }
}

Config7207.Data = data
return Config7207
