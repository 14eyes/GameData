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
local Config21129 = {}

local data = {
    NpcId = "21129",
    Alias = "Npc21129",
    DailyScheduleData = {
        {
            bornConfigId = 402112900,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    platformPoint = {
                        groupId = 133403025,
                        configId = 25001,
                        offsetPos = {x = 0.358, y = 3.414, z = 5.876},
                        offsetRot = {x = 0.0, y = 180.0, z = 0.0}
                    }
                }
            }
        },
        {
            bornConfigId = 402112901,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    platformPoint = {
                        groupId = 133403026,
                        configId = 26001,
                        offsetPos = {x = 0.358, y = 3.414, z = 5.876},
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
local n = 34030342
local v = 34030345
local n2 = 34030348
local n3 = 34030351
local n4 = 34030353
local n5 = 34030389
local n6 = 34030391
local n7 = 34030393
local n8 = 34030396
local n9 = 34030399
local n10 = 34030402
eventUIntParams[1] = 34030339
eventUIntParams[2] = n
eventUIntParams[3] = v
eventUIntParams[4] = n2
eventUIntParams[5] = n3
eventUIntParams[6] = n4
eventUIntParams[7] = n5
eventUIntParams[8] = n6
eventUIntParams[9] = n7
eventUIntParams[10] = n8
eventUIntParams[11] = n9
eventUIntParams[12] = n10
reactionEvent.eventUIntParams = eventUIntParams
tbl.reactionEvent = reactionEvent
tbl.reactionActions = {{freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}}
local tbl2 = {priority = 0}
local reactionEvent2 = {eventType = reactEventType.Reminder}
local eventUIntParams2 = {}
local n11 = 34030373
local n12 = 34030377
local n13 = 34030380
local n14 = 34030383
local n15 = 34030386
local n16 = 34030413
local n17 = 34030416
local n18 = 34030420
local n19 = 34030422
local n20 = 34030425
local n21 = 34030428
eventUIntParams2[1] = 34030370
eventUIntParams2[2] = n11
eventUIntParams2[3] = n12
eventUIntParams2[4] = n13
eventUIntParams2[5] = n14
eventUIntParams2[6] = n15
eventUIntParams2[7] = n16
eventUIntParams2[8] = n17
eventUIntParams2[9] = n18
eventUIntParams2[10] = n19
eventUIntParams2[11] = n20
eventUIntParams2[12] = n21
reactionEvent2.eventUIntParams = eventUIntParams2
tbl2.reactionEvent = reactionEvent2

tbl2.reactionActions = {
    {freestyle = 1200, time = 2},
    {freestyle = 1171, time = 9},
    {freestyle = 1200, time = 2},
    {freestyle = 1171, time = 9}
}

local tbl3 = {priority = 0}
local reactionEvent3 = {eventType = reactEventType.Reminder}
local eventUIntParams3 = {}
local n22 = 34030407
local n23 = 34030408
local n24 = 34030411
local n25 = 34030412
local n26 = 34030466
local n27 = 34030467
local n28 = 34030468
local n29 = 34030471
local n30 = 34030472
local n31 = 34030473
local n32 = 34030474
local n33 = 34030475
local n34 = 34030476
local n35 = 34030477
local n36 = 34030478
local n37 = 34030479
local n38 = 34030480
local n39 = 34030481
local n40 = 34030482
local n41 = 34030483
local n42 = 34030484
local n43 = 34030485
eventUIntParams3[1] = 34030461
eventUIntParams3[2] = n22
eventUIntParams3[3] = n23
eventUIntParams3[4] = n24
eventUIntParams3[5] = n25
eventUIntParams3[6] = n26
eventUIntParams3[7] = n27
eventUIntParams3[8] = n28
eventUIntParams3[9] = n29
eventUIntParams3[10] = n30
eventUIntParams3[11] = n31
eventUIntParams3[12] = n32
eventUIntParams3[13] = n33
eventUIntParams3[14] = n34
eventUIntParams3[15] = n35
eventUIntParams3[16] = n36
eventUIntParams3[17] = n37
eventUIntParams3[18] = n38
eventUIntParams3[19] = n39
eventUIntParams3[20] = n40
eventUIntParams3[21] = n41
eventUIntParams3[22] = n42
eventUIntParams3[23] = n43
reactionEvent3.eventUIntParams = eventUIntParams3
tbl3.reactionEvent = reactionEvent3
tbl3.reactionActions = {{freestyle = 1171, time = 9}}
local tbl4 = {priority = 0}
local reactionEvent4 = {eventType = reactEventType.Reminder}
local eventUIntParams4 = {}
local n44 = 34030366
local n45 = 34030368
local n46 = 34030432
local n47 = 34030440
local n48 = 34030442
local n49 = 34030444
local n50 = 34030446
local n51 = 34030448
local n52 = 34030450
local n53 = 34030452
local n54 = 34030462
local n55 = 34030464
local n56 = 34030405
local n57 = 34030409
local n58 = 34030469
eventUIntParams4[1] = 34030355
eventUIntParams4[2] = n44
eventUIntParams4[3] = n45
eventUIntParams4[4] = n46
eventUIntParams4[5] = n47
eventUIntParams4[6] = n48
eventUIntParams4[7] = n49
eventUIntParams4[8] = n50
eventUIntParams4[9] = n51
eventUIntParams4[10] = n52
eventUIntParams4[11] = n53
eventUIntParams4[12] = n54
eventUIntParams4[13] = n55
eventUIntParams4[14] = n56
eventUIntParams4[15] = n57
eventUIntParams4[16] = n58
reactionEvent4.eventUIntParams = eventUIntParams4
tbl4.reactionEvent = reactionEvent4
tbl4.reactionActions = {{freestyle = 1190, time = 2}, {freestyle = 1171, time = 9}, {freestyle = 1171, time = 9}}
local tbl5 = {priority = 0}
local reactionEvent5 = {eventType = reactEventType.Reminder}
local eventUIntParams5 = {}
local n59 = 34030360
local n60 = 34030363
local n61 = 34030434
local n62 = 34030437
local n63 = 34030454
local n64 = 34030457
eventUIntParams5[1] = 34030357
eventUIntParams5[2] = n59
eventUIntParams5[3] = n60
eventUIntParams5[4] = n61
eventUIntParams5[5] = n62
eventUIntParams5[6] = n63
eventUIntParams5[7] = n64
reactionEvent5.eventUIntParams = eventUIntParams5
tbl5.reactionEvent = reactionEvent5

tbl5.reactionActions = {
    {freestyle = 1190, time = 2},
    {freestyle = 1171, time = 9},
    {freestyle = 1200, time = 2},
    {freestyle = 1171, time = 9}
}

reactionDatas[1] = tbl
reactionDatas[2] = tbl2
reactionDatas[3] = tbl3
reactionDatas[4] = tbl4
reactionDatas[5] = tbl5
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config21129.Data = data
return Config21129
