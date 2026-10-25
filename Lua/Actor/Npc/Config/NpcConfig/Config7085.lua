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
local Config7085 = {}

local data = {
    NpcId = "7085",
    Alias = "Npc7085",
    DailyScheduleData = {
        {
            bornConfigId = 607085000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1616.81, y = 225.0416, z = 9450.865}, rot = {x = 0, y = 118.8046, z = 0}},
                    freestyle = 4300,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Ignore,
                    reactOnBodyLang = reactEnableType.Ignore,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_7085",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local scanClueData = {}

local tbl = {
    validQuestIds = {0},
    clueId = 670010,
    reminderDataList = {{avatarId = 10000124, reminderId = 1003640001}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n = 1016708502
local v = 1016708503
dialogDataList[1] = 1016708501
dialogDataList[2] = n
dialogDataList[3] = v
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7085.Data = data
return Config7085
