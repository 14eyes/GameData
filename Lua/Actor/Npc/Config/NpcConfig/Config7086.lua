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
local Config7086 = {}

local data = {
    NpcId = "7086",
    Alias = "Npc7086",
    DailyScheduleData = {
        {
            bornConfigId = 607086000,
            condition = {sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1621.496, y = 200.0907, z = 9276.903}, rot = {x = 0, y = 193.8009, z = 0}},
                    freestyle = 4220,
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
                titleStr = "NPC_TITLE_7086",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local scanClueData = {}

local tbl = {
    validQuestIds = {0},
    clueId = 670009,
    reminderDataList = {{avatarId = 10000124, reminderId = 1003640000}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n = 1016708602
local v = 1016708603
local n2 = 1016708604
dialogDataList[1] = 1016708601
dialogDataList[2] = n
dialogDataList[3] = v
dialogDataList[4] = n2
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7086.Data = data
return Config7086
