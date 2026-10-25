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
local Config7107 = {}
local data = {NpcId = "7107", Alias = "Npc7107"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_NodKrai_LunarEdictStatuette", priority = 0, validQuestIds = {0}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 156}
local paramList = {}
local n = 0
local n2 = 0
paramList[1] = 10000119
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n3 = 1
paramList2[1] = 7665009
paramList2[2] = n3
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 46}
local paramList3 = {}
local n4 = 2
paramList3[1] = 7665007
paramList3[2] = n4
tbl4.paramList = paramList3
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n5 = 3
paramList4[1] = 7601120
paramList4[2] = n5
tbl5.paramList = paramList4
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
v[4] = tbl5
conditions[1] = v
tbl.conditions = conditions
inteeDatas[1] = tbl
inteeData.inteeDatas = inteeDatas
data.InteeData = inteeData

data.DailyScheduleData = {
    refreshDailyActionImmediately = true,
    {
        bornConfigId = 607107000,
        condition = {sceneId = 3, priority = 0},
        conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
        actionPoints = {
            {
                dummypoint = {pos = {x = 1792.163, y = 222.6756, z = 10383.05}, rot = {x = 0, y = 159.5397, z = 0}},
                freestyle = 1050,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    },
    {
        bornConfigId = 607107000,
        condition = {sceneId = 3, priority = 1},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                    questGlobalVarId = 7665007,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal
                }
            }
        },
        actionPoints = {
            {
                dummypoint = {pos = {x = 1792.163, y = 222.6756, z = 10383.05}, rot = {x = 0, y = 159.5397, z = 0}},
                freestyle = 1190,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    }
}

Config7107.Data = data
return Config7107
