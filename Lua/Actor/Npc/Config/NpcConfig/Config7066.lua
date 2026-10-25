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
local Config7066 = {}
local data = {NpcId = "7066", Alias = "Npc7066"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_NodKrai_Agency", priority = 0, validQuestIds = {0}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7611701
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 169}
local paramList2 = {}
local n2 = 0
paramList2[1] = 670014
paramList2[2] = n2
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 159}
local paramList3 = {}
local n3 = 0
local n4 = 0
local n5 = 0
paramList3[1] = 10000124
paramList3[2] = n3
paramList3[3] = n4
paramList3[4] = n5
tbl4.paramList = paramList3
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditions[1] = v
tbl.conditions = conditions
inteeDatas[1] = tbl
inteeData.inteeDatas = inteeDatas
data.InteeData = inteeData

data.DailyScheduleData = {
    {
        bornConfigId = 607066000,
        condition = {sceneId = 3, priority = 0},
        conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
        actionPoints = {
            {
                dummypoint = {pos = {x = 1610.609, y = 238.2255, z = 9517.902}, rot = {x = 0, y = 237.186, z = 0}},
                freestyle = 1240,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Ignore,
                reactOnBodyLang = reactEnableType.Ignore,
                action = generalPattern.Stand
            }
        }
    }
}

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_7066",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

local scanClueData = {}

local tbl5 = {
    validQuestIds = {0},
    clueId = 670014,
    reminderDataList = {{avatarId = 10000124, reminderId = 1003640005}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n6 = 1016706602
local n7 = 1016706603
local n8 = 1016706604
dialogDataList[1] = 1016706601
dialogDataList[2] = n6
dialogDataList[3] = n7
dialogDataList[4] = n8
tbl5.dialogDataList = dialogDataList
scanClueData[1] = tbl5
data.ScanClueData = scanClueData
Config7066.Data = data
return Config7066
