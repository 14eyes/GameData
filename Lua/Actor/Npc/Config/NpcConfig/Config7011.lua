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
local Config7011 = {}

local data = {
    NpcId = "7011",
    Alias = "Npc7011",
    DailyScheduleData = {
        {
            bornConfigId = 607011000,
            condition = {sceneId = 1204, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -8.815461, y = 1.922737, z = -4.240903}, rot = {x = 0, y = 4.618466, z = 0}},
                    freestyle = 1120,
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
                titleStr = "NPC_TITLE_7011",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local scanClueData = {}
local tbl = {validQuestIds = {0}, clueId = 670020, duration = 8, priority = 100}
local dialogDataList = {}
local n = 1016701102
local v = 1016701103
dialogDataList[1] = 1016701101
dialogDataList[2] = n
dialogDataList[3] = v
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7011.Data = data
return Config7011
