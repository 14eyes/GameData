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
local Config7145 = {}
local data = {NpcId = "7145", Alias = "Npc7145"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_NodKrai_LunarEdictStatuette", priority = 0, validQuestIds = {0}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList = {}
local n = 2201
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
        bornConfigId = 607145000,
        condition = {sceneId = 3, priority = 0},
        actionPoints = {
            {
                dummypoint = {pos = {x = 1609.736, y = 243.7938, z = 9447.428}, rot = {x = 0, y = 226.3078, z = 0}},
                lookAtType = focusToPlayerType.Default,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    }
}

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_7145",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config7145.Data = data
return Config7145
