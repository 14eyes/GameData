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
local Config30968 = {}

local data = {
    NpcId = "30968",
    Alias = "Npc30968",
    InteeData = {inteeDatas = {{icon = "UI_Icon_Intee_MonsterChess2", priority = 0, validQuestIds = {0}}}}
}

local dailyScheduleData = {}
local tbl = {bornConfigId = 633096800, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5305001
local n2 = 1
paramList[1] = 5305
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 3382.717, y = 235.7939, z = 9607.852}, rot = {x = 0, y = 0, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
data.BillboardMarkData = {markDatas = {{icon = "UI_NPCTopIcon_Activity_MonsterChess2", priority = 0}}}
Config30968.Data = data
return Config30968
