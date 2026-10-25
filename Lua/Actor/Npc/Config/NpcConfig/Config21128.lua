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
local Config21128 = {}

local data = {
    NpcId = "21128",
    Alias = "Npc21128",
    DailyScheduleData = {
        {
            bornConfigId = 402112800,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{}},
            actionPoints = {
                {
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    platformPoint = {
                        groupId = 133403019,
                        configId = 19001,
                        offsetPos = {x = 0.358, y = 3.414, z = 5.876},
                        offsetRot = {x = 0.0, y = 180.0, z = 0.0}
                    }
                }
            }
        },
        {
            bornConfigId = 402112801,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    platformPoint = {
                        groupId = 133403005,
                        configId = 5010,
                        offsetPos = {x = 0.358, y = 3.414, z = 5.88},
                        offsetRot = {x = 0.0, y = 180.0, z = 0.0}
                    }
                }
            }
        }
    }
}

local reactionData = {}
local reactionDatas = {}
local tbl = {priority = 0}
local reactionEvent = {eventType = reactEventType.Reminder}
local eventUIntParams = {}
local n = 34030106
local v = 34030111
local n2 = 34030117
local n3 = 34030199
local n4 = 34030203
local n5 = 34030207
local n6 = 34030212
eventUIntParams[1] = 34030101
eventUIntParams[2] = n
eventUIntParams[3] = v
eventUIntParams[4] = n2
eventUIntParams[5] = n3
eventUIntParams[6] = n4
eventUIntParams[7] = n5
eventUIntParams[8] = n6
reactionEvent.eventUIntParams = eventUIntParams
tbl.reactionEvent = reactionEvent

tbl.reactionActions = {
    {freestyle = 1200, time = 2},
    {freestyle = 1172, time = 9},
    {freestyle = 1172, time = 9},
    {freestyle = 1172, time = 9}
}

local tbl2 = {priority = 0}
local reactionEvent2 = {eventType = reactEventType.Reminder}
local eventUIntParams2 = {}
local n7 = 34030126
local n8 = 34030130
local n9 = 34030133
local n10 = 34030216
local n11 = 34030222
local n12 = 34030226
local n13 = 34030230
eventUIntParams2[1] = 34030123
eventUIntParams2[2] = n7
eventUIntParams2[3] = n8
eventUIntParams2[4] = n9
eventUIntParams2[5] = n10
eventUIntParams2[6] = n11
eventUIntParams2[7] = n12
eventUIntParams2[8] = n13
reactionEvent2.eventUIntParams = eventUIntParams2
tbl2.reactionEvent = reactionEvent2
tbl2.reactionActions = {{freestyle = 1190, time = 2}, {freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}}
local tbl3 = {priority = 0}
local reactionEvent3 = {eventType = reactEventType.Reminder}
local eventUIntParams3 = {}
local n14 = 34030239
local n15 = 34030243
local n16 = 34030247
local n17 = 34030136
local n18 = 34030140
local n19 = 34030145
local n20 = 34030150
eventUIntParams3[1] = 34030235
eventUIntParams3[2] = n14
eventUIntParams3[3] = n15
eventUIntParams3[4] = n16
eventUIntParams3[5] = n17
eventUIntParams3[6] = n18
eventUIntParams3[7] = n19
eventUIntParams3[8] = n20
reactionEvent3.eventUIntParams = eventUIntParams3
tbl3.reactionEvent = reactionEvent3
tbl3.reactionActions = {{freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}}
local tbl4 = {priority = 0}
local reactionEvent4 = {eventType = reactEventType.Reminder}
local eventUIntParams4 = {}
local n21 = 34030160
local n22 = 34030165
local n23 = 34030169
local n24 = 34030173
local n25 = 34030178
local n26 = 34030251
local n27 = 34030255
local n28 = 34030259
local n29 = 34030263
eventUIntParams4[1] = 34030155
eventUIntParams4[2] = n21
eventUIntParams4[3] = n22
eventUIntParams4[4] = n23
eventUIntParams4[5] = n24
eventUIntParams4[6] = n25
eventUIntParams4[7] = n26
eventUIntParams4[8] = n27
eventUIntParams4[9] = n28
eventUIntParams4[10] = n29
reactionEvent4.eventUIntParams = eventUIntParams4
tbl4.reactionEvent = reactionEvent4

tbl4.reactionActions = {
    {freestyle = 1190, time = 2},
    {freestyle = 1172, time = 8},
    {freestyle = 1172, time = 8},
    {freestyle = 1172, time = 8}
}

local tbl5 = {priority = 0}
local reactionEvent5 = {eventType = reactEventType.Reminder}
local eventUIntParams5 = {}
local n30 = 34030185
local n31 = 34030189
local n32 = 34030194
local n33 = 34030267
local n34 = 34030272
local n35 = 34030277
local n36 = 34030280
eventUIntParams5[1] = 34030182
eventUIntParams5[2] = n30
eventUIntParams5[3] = n31
eventUIntParams5[4] = n32
eventUIntParams5[5] = n33
eventUIntParams5[6] = n34
eventUIntParams5[7] = n35
eventUIntParams5[8] = n36
reactionEvent5.eventUIntParams = eventUIntParams5
tbl5.reactionEvent = reactionEvent5

tbl5.reactionActions = {
    {freestyle = 1200, time = 2},
    {freestyle = 1171, time = 9},
    {freestyle = 1171, time = 9},
    {freestyle = 1171, time = 9}
}

local tbl6 = {priority = 0}
local reactionEvent6 = {eventType = reactEventType.Reminder}
local eventUIntParams6 = {}
local n37 = 34030312
local n38 = 34030315
local n39 = 34030318
local n40 = 34030321
local n41 = 34030324
local n42 = 34030327
local n43 = 34030330
local n44 = 34030332
eventUIntParams6[1] = 34030285
eventUIntParams6[2] = n37
eventUIntParams6[3] = n38
eventUIntParams6[4] = n39
eventUIntParams6[5] = n40
eventUIntParams6[6] = n41
eventUIntParams6[7] = n42
eventUIntParams6[8] = n43
eventUIntParams6[9] = n44
reactionEvent6.eventUIntParams = eventUIntParams6
tbl6.reactionEvent = reactionEvent6
tbl6.reactionActions = {{freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}}
local tbl7 = {priority = 0}
local reactionEvent7 = {eventType = reactEventType.Reminder}
local eventUIntParams7 = {}
local n45 = 34030292
local n46 = 34030297
local n47 = 34030303
local n48 = 34030308
local n49 = 34030335
eventUIntParams7[1] = 34030288
eventUIntParams7[2] = n45
eventUIntParams7[3] = n46
eventUIntParams7[4] = n47
eventUIntParams7[5] = n48
eventUIntParams7[6] = n49
reactionEvent7.eventUIntParams = eventUIntParams7
tbl7.reactionEvent = reactionEvent7
tbl7.reactionActions = {{freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}}

local tbl8 = {
    priority = 0,
    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {34030334}},
    reactionActions = {{freestyle = 1172, time = 9}}
}

reactionDatas[1] = tbl
reactionDatas[2] = tbl2
reactionDatas[3] = tbl3
reactionDatas[4] = tbl4
reactionDatas[5] = tbl5
reactionDatas[6] = tbl6
reactionDatas[7] = tbl7
reactionDatas[8] = tbl8
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config21128.Data = data
return Config21128
