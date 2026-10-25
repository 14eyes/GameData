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
local Config20845 = {}
local data = {NpcId = "20845", Alias = "Npc20845"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73187
local v = 73103
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 304
tbl.dialogDataList = {{dialogId = 1018208453, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318702,
            questState = questState.Finished
        }
    }
}

local tbl2 = {}
local validQuestIds2 = {}
local n2 = 73186
validQuestIds2[1] = 0
validQuestIds2[2] = n2
tbl2.validQuestIds = validQuestIds2
tbl2.priority = 305
tbl2.dialogDataList = {{dialogId = 1018208450, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318601,
            questState = questState.UnFinished
        }
    }
}

local tbl3 = {}
local validQuestIds3 = {}
local n3 = 73186
validQuestIds3[1] = 0
validQuestIds3[2] = n3
tbl3.validQuestIds = validQuestIds3
tbl3.priority = 306
tbl3.dialogDataList = {{dialogId = 1018208451, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl3.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318637,
            questState = questState.UnFinished
        }
    }
}

local tbl4 = {}
local validQuestIds4 = {}
local n4 = 73187
validQuestIds4[1] = 0
validQuestIds4[2] = n4
tbl4.validQuestIds = validQuestIds4
tbl4.priority = 307
tbl4.dialogDataList = {{dialogId = 1018208452, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl4.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318721,
            questState = questState.UnFinished
        }
    }
}

local tbl5 = {}
local validQuestIds5 = {}
local n5 = 73187
validQuestIds5[1] = 0
validQuestIds5[2] = n5
tbl5.validQuestIds = validQuestIds5
tbl5.priority = 308
tbl5.dialogDataList = {{dialogId = 1018208454, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl5.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7318732,
            questState = questState.UnFinished
        }
    }
}

local tbl6 = {}
local validQuestIds6 = {}
local n6 = 73103
validQuestIds6[1] = 0
validQuestIds6[2] = n6
tbl6.validQuestIds = validQuestIds6
tbl6.priority = 309
tbl6.dialogDataList = {{dialogId = 1018208455, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl6.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7310304,
            questState = questState.Finished
        }
    }
}

local tbl7 = {}
local validQuestIds7 = {}
local n7 = 73287
local n8 = 73219
validQuestIds7[1] = 0
validQuestIds7[2] = n7
validQuestIds7[3] = n8
tbl7.validQuestIds = validQuestIds7
tbl7.priority = 301
tbl7.dialogDataList = {{dialogId = 1018208456, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl7.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7328716,
            questState = questState.Finished
        }
    }
}

local tbl8 = {}
local validQuestIds8 = {}
local n9 = 73219
validQuestIds8[1] = 0
validQuestIds8[2] = n9
tbl8.validQuestIds = validQuestIds8
tbl8.priority = 302
tbl8.dialogDataList = {{dialogId = 1018208457, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl8.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321911,
            questState = questState.Finished
        }
    }
}

local tbl9 = {}
local validQuestIds9 = {}
local n10 = 73219
validQuestIds9[1] = 0
validQuestIds9[2] = n10
tbl9.validQuestIds = validQuestIds9
tbl9.priority = 303
tbl9.dialogDataList = {{dialogId = 1018208458, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl9.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7321940,
            questState = questState.Finished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
nahidaNarratorData[3] = tbl3
nahidaNarratorData[4] = tbl4
nahidaNarratorData[5] = tbl5
nahidaNarratorData[6] = tbl6
nahidaNarratorData[7] = tbl7
nahidaNarratorData[8] = tbl8
nahidaNarratorData[9] = tbl9
data.NahidaNarratorData = nahidaNarratorData
Config20845.Data = data
return Config20845
