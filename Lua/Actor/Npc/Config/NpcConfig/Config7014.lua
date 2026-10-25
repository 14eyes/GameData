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
local Config7014 = {}
local data = {NpcId = "7014", Alias = "Npc7014"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_NodKrai_LunarEdictStatuette", priority = 0, validQuestIds = {0}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 159}
local paramList = {}
local n = 0
local n2 = 0
local n3 = 0
paramList[1] = 10000119
paramList[2] = n
paramList[3] = n2
paramList[4] = n3
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n4 = 1
paramList2[1] = 7665012
paramList2[2] = n4
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditions[1] = v
tbl.conditions = conditions
inteeDatas[1] = tbl
inteeData.inteeDatas = inteeDatas
data.InteeData = inteeData

data.DailyScheduleData = {
    {
        bornConfigId = 607014000,
        condition = {sceneId = 3, priority = 0},
        conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
        actionPoints = {
            {
                dummypoint = {pos = {x = 1676.323, y = 241.2881, z = 9460.481}, rot = {x = 0, y = 268.2411, z = 0}},
                freestyle = 4140,
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
            titleStr = "NPC_TITLE_7014",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config7014.Data = data
return Config7014
