require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16019 = class("Quest16019", QuestActorProxy)
Quest16019.defaultAlias = "Quest16019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601901"] = self.OnSubStart1601901,
        ["1601902"] = self.OnSubStart1601902,
        ["1601938"] = self.OnSubStart1601938,
        ["1601903"] = self.OnSubStart1601903,
        ["1601904"] = self.OnSubStart1601904,
        ["1601935"] = self.OnSubStart1601935,
        ["1601905"] = self.OnSubStart1601905,
        ["1601913"] = self.OnSubStart1601913,
        ["1601906"] = self.OnSubStart1601906,
        ["1601939"] = self.OnSubStart1601939,
        ["1601940"] = self.OnSubStart1601940,
        ["1601941"] = self.OnSubStart1601941,
        ["1601942"] = self.OnSubStart1601942,
        ["1601936"] = self.OnSubStart1601936,
        ["1601907"] = self.OnSubStart1601907,
        ["1601908"] = self.OnSubStart1601908,
        ["1601937"] = self.OnSubStart1601937,
        ["1601909"] = self.OnSubStart1601909,
        ["1601931"] = self.OnSubStart1601931,
        ["1601910"] = self.OnSubStart1601910,
        ["1601932"] = self.OnSubStart1601932,
        ["1601911"] = self.OnSubStart1601911,
        ["1601933"] = self.OnSubStart1601933,
        ["1601914"] = self.OnSubStart1601914,
        ["1601912"] = self.OnSubStart1601912,
        ["1601915"] = self.OnSubStart1601915,
        ["1601928"] = self.OnSubStart1601928,
        ["1601929"] = self.OnSubStart1601929,
        ["1601918"] = self.OnSubStart1601918,
        ["1601934"] = self.OnSubStart1601934,
        ["1601919"] = self.OnSubStart1601919,
        ["1601920"] = self.OnSubStart1601920,
        ["1601922"] = self.OnSubStart1601922,
        ["1601923"] = self.OnSubStart1601923,
        ["1601924"] = self.OnSubStart1601924,
        ["1601917"] = self.OnSubStart1601917,
        ["1601916"] = self.OnSubStart1601916,
        ["1601921"] = self.OnSubStart1601921,
        ["1601925"] = self.OnSubStart1601925,
        ["1601926"] = self.OnSubStart1601926,
        ["1601927"] = self.OnSubStart1601927,
        ["1601930"] = self.OnSubStart1601930
    }
end

function Quest16019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601901"] = self.OnSubFinish1601901,
        ["1601902"] = self.OnSubFinish1601902,
        ["1601938"] = self.OnSubFinish1601938,
        ["1601903"] = self.OnSubFinish1601903,
        ["1601904"] = self.OnSubFinish1601904,
        ["1601935"] = self.OnSubFinish1601935,
        ["1601905"] = self.OnSubFinish1601905,
        ["1601913"] = self.OnSubFinish1601913,
        ["1601906"] = self.OnSubFinish1601906,
        ["1601939"] = self.OnSubFinish1601939,
        ["1601940"] = self.OnSubFinish1601940,
        ["1601941"] = self.OnSubFinish1601941,
        ["1601942"] = self.OnSubFinish1601942,
        ["1601936"] = self.OnSubFinish1601936,
        ["1601907"] = self.OnSubFinish1601907,
        ["1601908"] = self.OnSubFinish1601908,
        ["1601937"] = self.OnSubFinish1601937,
        ["1601909"] = self.OnSubFinish1601909,
        ["1601931"] = self.OnSubFinish1601931,
        ["1601910"] = self.OnSubFinish1601910,
        ["1601932"] = self.OnSubFinish1601932,
        ["1601911"] = self.OnSubFinish1601911,
        ["1601933"] = self.OnSubFinish1601933,
        ["1601914"] = self.OnSubFinish1601914,
        ["1601912"] = self.OnSubFinish1601912,
        ["1601915"] = self.OnSubFinish1601915,
        ["1601928"] = self.OnSubFinish1601928,
        ["1601929"] = self.OnSubFinish1601929,
        ["1601918"] = self.OnSubFinish1601918,
        ["1601934"] = self.OnSubFinish1601934,
        ["1601919"] = self.OnSubFinish1601919,
        ["1601920"] = self.OnSubFinish1601920,
        ["1601922"] = self.OnSubFinish1601922,
        ["1601923"] = self.OnSubFinish1601923,
        ["1601924"] = self.OnSubFinish1601924,
        ["1601917"] = self.OnSubFinish1601917,
        ["1601916"] = self.OnSubFinish1601916,
        ["1601921"] = self.OnSubFinish1601921,
        ["1601925"] = self.OnSubFinish1601925,
        ["1601926"] = self.OnSubFinish1601926,
        ["1601927"] = self.OnSubFinish1601927,
        ["1601930"] = self.OnSubFinish1601930
    }
end

function Quest16019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1601905"] = self.OnSubFailed1601905,
        ["1601907"] = self.OnSubFailed1601907,
        ["1601909"] = self.OnSubFailed1601909,
        ["1601910"] = self.OnSubFailed1601910,
        ["1601911"] = self.OnSubFailed1601911,
        ["1601914"] = self.OnSubFailed1601914,
        ["1601912"] = self.OnSubFailed1601912,
        ["1601915"] = self.OnSubFailed1601915,
        ["1601928"] = self.OnSubFailed1601928,
        ["1601929"] = self.OnSubFailed1601929,
        ["1601918"] = self.OnSubFailed1601918,
        ["1601919"] = self.OnSubFailed1601919,
        ["1601920"] = self.OnSubFailed1601920,
        ["1601922"] = self.OnSubFailed1601922,
        ["1601923"] = self.OnSubFailed1601923,
        ["1601917"] = self.OnSubFailed1601917,
        ["1601921"] = self.OnSubFailed1601921
    }
end

function Quest16019:Start()
    print("Start")
end

function Quest16019:OnDestroy()
    print("OnDestroy")
end

function Quest16019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16019:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1601931Trigger", 16019)
    this:ActorDestroy("Q1601922Trigger", nil)
    this:ActorDestroy("Q1601922Trigger_1", 16019)
    this:ActorDestroy("Q1601921Trigger", nil)
    this:ActorDestroy("Q1601917Trigger", nil)
    this:ActorDestroy("Q1601909Trigger", nil)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    local n4 = 20003
    local n5 = 20004
    local n6 = 20005
    local n7 = 20007
    local n8 = 20008
    local n9 = 20009
    local n10 = 20010
    local n11 = 20011
    local n12 = 20012
    local n13 = 20013
    local n14 = 20014
    local n15 = 20015
    local n16 = 20016
    local n17 = 20017
    local n18 = 20018
    local n19 = 20019
    local n20 = 20020
    local n21 = 20021
    local n22 = 20022
    local n23 = 20023
    local n24 = 20024
    local n25 = 20025
    local n26 = 20026
    local n27 = 20027
    local n28 = 20028
    local n29 = 20029
    local n30 = 20030
    local n31 = 20031
    local n32 = 20032
    local n33 = 20033
    local n34 = 20034
    local n35 = 20035
    local n36 = 20036
    local n37 = 20037
    local n38 = 20044
    local n39 = 20045
    local n40 = 20046
    local n41 = 20047
    local n42 = 20048
    local n43 = 20049
    local n44 = 20050
    local n45 = 20051
    local n46 = 20052
    local n47 = 20053
    local n48 = 20054
    local n49 = 20055
    local n50 = 20056
    local n51 = 20057
    tbl[1] = 20001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    tbl[11] = n12
    tbl[12] = n13
    tbl[13] = n14
    tbl[14] = n15
    tbl[15] = n16
    tbl[16] = n17
    tbl[17] = n18
    tbl[18] = n19
    tbl[19] = n20
    tbl[20] = n21
    tbl[21] = n22
    tbl[22] = n23
    tbl[23] = n24
    tbl[24] = n25
    tbl[25] = n26
    tbl[26] = n27
    tbl[27] = n28
    tbl[28] = n29
    tbl[29] = n30
    tbl[30] = n31
    tbl[31] = n32
    tbl[32] = n33
    tbl[33] = n34
    tbl[34] = n35
    tbl[35] = n36
    tbl[36] = n37
    tbl[37] = n38
    tbl[38] = n39
    tbl[39] = n40
    tbl[40] = n41
    tbl[41] = n42
    tbl[42] = n43
    tbl[43] = n44
    tbl[44] = n45
    tbl[45] = n46
    tbl[46] = n47
    tbl[47] = n48
    tbl[48] = n49
    tbl[49] = n50
    tbl[50] = n51
    local n52 = 20059
    local n53 = 20060
    local n54 = 20061
    tbl[51] = 20058
    tbl[52] = n52
    tbl[53] = n53
    tbl[54] = n54
    banCrowdNpc(v2, n, n2, tbl, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n55 = 3606
    local n56 = 4
    local tbl2 = {}
    local n57 = 40002
    local n58 = 40003
    local n59 = 40004
    local n60 = 40005
    local n61 = 40006
    local n62 = 40007
    local n63 = 40008
    local n64 = 40009
    local n65 = 40010
    tbl2[1] = 40001
    tbl2[2] = n57
    tbl2[3] = n58
    tbl2[4] = n59
    tbl2[5] = n60
    tbl2[6] = n61
    tbl2[7] = n62
    tbl2[8] = n63
    tbl2[9] = n64
    tbl2[10] = n65
    func(v4, n55, n56, tbl2, false, true)
    local v5 = this
    local v6 = v5
    local banCrowdNpc2 = v5.BanCrowdNpc
    local n66 = 3607
    local n67 = 9
    local tbl3 = {}
    local n68 = 90041
    tbl3[1] = 90036
    tbl3[2] = n68
    banCrowdNpc2(v6, n66, n67, tbl3, false, true)
end

function Quest16019:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    end
end

function Quest16019:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest16019:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16019:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest16019:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16019:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest16019:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest16019:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16019:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest16019:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest16019:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest16019:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest16019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16019:OnSubStart1601901(arg1)
    print("OnSubStart1601901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1601901, 0, 10, 0, npcs.Npc1327.id)
    this:CreateQuestNpc(arg1, npcs.Npc16510.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16535.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90041
    tbl[1] = 90036
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 16019):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc12544.id, 0, false, 0)
end

function Quest16019:OnSubFinish1601901(arg1)
    print("OnSubFinish1601901")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16510.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16535.alias)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90041
    tbl[1] = 90036
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:NpcDestroyImmediately(3, npcs.Npc1044.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12544.alias)
    this:TransmitPlayerByQuestId(1601901, 2, nil, nil, nil)
end

function Quest16019:OnSubStart1601902(arg1)
    print("OnSubStart1601902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16384.id, 0, 1601902, 20, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    local n4 = 20003
    local n5 = 20004
    local n6 = 20005
    local n7 = 20007
    local n8 = 20008
    local n9 = 20009
    local n10 = 20010
    local n11 = 20011
    local n12 = 20012
    local n13 = 20013
    local n14 = 20014
    local n15 = 20015
    local n16 = 20016
    local n17 = 20017
    local n18 = 20018
    local n19 = 20019
    local n20 = 20020
    local n21 = 20021
    local n22 = 20022
    local n23 = 20023
    local n24 = 20024
    local n25 = 20025
    local n26 = 20026
    local n27 = 20027
    local n28 = 20028
    local n29 = 20029
    local n30 = 20030
    local n31 = 20031
    local n32 = 20032
    local n33 = 20033
    local n34 = 20034
    local n35 = 20035
    local n36 = 20036
    local n37 = 20037
    local n38 = 20044
    local n39 = 20045
    local n40 = 20046
    local n41 = 20047
    local n42 = 20048
    local n43 = 20049
    local n44 = 20050
    local n45 = 20051
    local n46 = 20052
    local n47 = 20053
    local n48 = 20054
    local n49 = 20055
    local n50 = 20056
    local n51 = 20057
    tbl[1] = 20001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    tbl[11] = n12
    tbl[12] = n13
    tbl[13] = n14
    tbl[14] = n15
    tbl[15] = n16
    tbl[16] = n17
    tbl[17] = n18
    tbl[18] = n19
    tbl[19] = n20
    tbl[20] = n21
    tbl[21] = n22
    tbl[22] = n23
    tbl[23] = n24
    tbl[24] = n25
    tbl[25] = n26
    tbl[26] = n27
    tbl[27] = n28
    tbl[28] = n29
    tbl[29] = n30
    tbl[30] = n31
    tbl[31] = n32
    tbl[32] = n33
    tbl[33] = n34
    tbl[34] = n35
    tbl[35] = n36
    tbl[36] = n37
    tbl[37] = n38
    tbl[38] = n39
    tbl[39] = n40
    tbl[40] = n41
    tbl[41] = n42
    tbl[42] = n43
    tbl[43] = n44
    tbl[44] = n45
    tbl[45] = n46
    tbl[46] = n47
    tbl[47] = n48
    tbl[48] = n49
    tbl[49] = n50
    tbl[50] = n51
    local n52 = 20059
    local n53 = 20060
    local n54 = 20061
    tbl[51] = 20058
    tbl[52] = n52
    tbl[53] = n53
    tbl[54] = n54
    banCrowdNpc(v2, n, n2, tbl, true, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n55 = 3606
    local n56 = 4
    local tbl2 = {}
    local n57 = 40002
    local n58 = 40003
    local n59 = 40004
    local n60 = 40005
    local n61 = 40006
    local n62 = 40007
    local n63 = 40008
    local n64 = 40009
    local n65 = 40010
    tbl2[1] = 40001
    tbl2[2] = n57
    tbl2[3] = n58
    tbl2[4] = n59
    tbl2[5] = n60
    tbl2[6] = n61
    tbl2[7] = n62
    tbl2[8] = n63
    tbl2[9] = n64
    tbl2[10] = n65
    func(v4, n55, n56, tbl2, true, true)
end

function Quest16019:OnSubFinish1601902(arg1)
    print("OnSubFinish1601902")
    this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    this:QuestNarratorTask(datas.NarratorWithId_1601901, nil)
end

function Quest16019:OnSubStart1601938(arg1)
    print("OnSubStart1601938")
    this:CreateQuestNpc(arg1, npcs.Npc16540.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16540.alias, 16019):SitOnChair(8010, true)
    this:CreateQuestNpc(arg1, npcs.Npc7063.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7063.alias, 16019):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc7060.alias, 1, true)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601938(arg1)
    print("OnSubFinish1601938")
    this:NpcDestroyImmediately(1204, npcs.Npc16540.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc7063.alias)
    this:LightNotifyTo(npcs.Npc7060.alias, 0, true)
end

function Quest16019:OnSubStart1601903(arg1)
    print("OnSubStart1601903")
    this:CreateQuestNpc(arg1, npcs.Npc16525.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    local n4 = 20003
    local n5 = 20004
    local n6 = 20005
    local n7 = 20007
    local n8 = 20008
    local n9 = 20009
    local n10 = 20010
    local n11 = 20011
    local n12 = 20012
    local n13 = 20013
    local n14 = 20014
    local n15 = 20015
    local n16 = 20016
    local n17 = 20017
    local n18 = 20018
    local n19 = 20019
    local n20 = 20020
    local n21 = 20021
    local n22 = 20022
    local n23 = 20023
    local n24 = 20024
    local n25 = 20025
    local n26 = 20026
    local n27 = 20027
    local n28 = 20028
    local n29 = 20029
    local n30 = 20030
    local n31 = 20031
    local n32 = 20032
    local n33 = 20033
    local n34 = 20034
    local n35 = 20035
    local n36 = 20036
    local n37 = 20037
    local n38 = 20044
    local n39 = 20045
    local n40 = 20046
    local n41 = 20047
    local n42 = 20048
    local n43 = 20049
    local n44 = 20050
    local n45 = 20051
    local n46 = 20052
    local n47 = 20053
    local n48 = 20054
    local n49 = 20055
    local n50 = 20056
    local n51 = 20057
    tbl[1] = 20001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    tbl[11] = n12
    tbl[12] = n13
    tbl[13] = n14
    tbl[14] = n15
    tbl[15] = n16
    tbl[16] = n17
    tbl[17] = n18
    tbl[18] = n19
    tbl[19] = n20
    tbl[20] = n21
    tbl[21] = n22
    tbl[22] = n23
    tbl[23] = n24
    tbl[24] = n25
    tbl[25] = n26
    tbl[26] = n27
    tbl[27] = n28
    tbl[28] = n29
    tbl[29] = n30
    tbl[30] = n31
    tbl[31] = n32
    tbl[32] = n33
    tbl[33] = n34
    tbl[34] = n35
    tbl[35] = n36
    tbl[36] = n37
    tbl[37] = n38
    tbl[38] = n39
    tbl[39] = n40
    tbl[40] = n41
    tbl[41] = n42
    tbl[42] = n43
    tbl[43] = n44
    tbl[44] = n45
    tbl[45] = n46
    tbl[46] = n47
    tbl[47] = n48
    tbl[48] = n49
    tbl[49] = n50
    tbl[50] = n51
    local n52 = 20059
    local n53 = 20060
    local n54 = 20061
    tbl[51] = 20058
    tbl[52] = n52
    tbl[53] = n53
    tbl[54] = n54
    banCrowdNpc(v2, n, n2, tbl, true, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n55 = 3606
    local n56 = 4
    local tbl2 = {}
    local n57 = 40002
    local n58 = 40003
    local n59 = 40004
    local n60 = 40005
    local n61 = 40006
    local n62 = 40007
    local n63 = 40008
    local n64 = 40009
    local n65 = 40010
    tbl2[1] = 40001
    tbl2[2] = n57
    tbl2[3] = n58
    tbl2[4] = n59
    tbl2[5] = n60
    tbl2[6] = n61
    tbl2[7] = n62
    tbl2[8] = n63
    tbl2[9] = n64
    tbl2[10] = n65
    func(v4, n55, n56, tbl2, true, true)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601903(arg1)
    print("OnSubFinish1601903")
    this:NpcDestroyImmediately(1204, npcs.Npc16525.alias)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 2
    local tbl = {}
    local n3 = 20002
    local n4 = 20003
    local n5 = 20004
    local n6 = 20005
    local n7 = 20007
    local n8 = 20008
    local n9 = 20009
    local n10 = 20010
    local n11 = 20011
    local n12 = 20012
    local n13 = 20013
    local n14 = 20014
    local n15 = 20015
    local n16 = 20016
    local n17 = 20017
    local n18 = 20018
    local n19 = 20019
    local n20 = 20020
    local n21 = 20021
    local n22 = 20022
    local n23 = 20023
    local n24 = 20024
    local n25 = 20025
    local n26 = 20026
    local n27 = 20027
    local n28 = 20028
    local n29 = 20029
    local n30 = 20030
    local n31 = 20031
    local n32 = 20032
    local n33 = 20033
    local n34 = 20034
    local n35 = 20035
    local n36 = 20036
    local n37 = 20037
    local n38 = 20044
    local n39 = 20045
    local n40 = 20046
    local n41 = 20047
    local n42 = 20048
    local n43 = 20049
    local n44 = 20050
    local n45 = 20051
    local n46 = 20052
    local n47 = 20053
    local n48 = 20054
    local n49 = 20055
    local n50 = 20056
    local n51 = 20057
    tbl[1] = 20001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    tbl[11] = n12
    tbl[12] = n13
    tbl[13] = n14
    tbl[14] = n15
    tbl[15] = n16
    tbl[16] = n17
    tbl[17] = n18
    tbl[18] = n19
    tbl[19] = n20
    tbl[20] = n21
    tbl[21] = n22
    tbl[22] = n23
    tbl[23] = n24
    tbl[24] = n25
    tbl[25] = n26
    tbl[26] = n27
    tbl[27] = n28
    tbl[28] = n29
    tbl[29] = n30
    tbl[30] = n31
    tbl[31] = n32
    tbl[32] = n33
    tbl[33] = n34
    tbl[34] = n35
    tbl[35] = n36
    tbl[36] = n37
    tbl[37] = n38
    tbl[38] = n39
    tbl[39] = n40
    tbl[40] = n41
    tbl[41] = n42
    tbl[42] = n43
    tbl[43] = n44
    tbl[44] = n45
    tbl[45] = n46
    tbl[46] = n47
    tbl[47] = n48
    tbl[48] = n49
    tbl[49] = n50
    tbl[50] = n51
    local n52 = 20059
    local n53 = 20060
    local n54 = 20061
    tbl[51] = 20058
    tbl[52] = n52
    tbl[53] = n53
    tbl[54] = n54
    banCrowdNpc(v2, n, n2, tbl, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n55 = 3606
    local n56 = 4
    local tbl2 = {}
    local n57 = 40002
    local n58 = 40003
    local n59 = 40004
    local n60 = 40005
    local n61 = 40006
    local n62 = 40007
    local n63 = 40008
    local n64 = 40009
    local n65 = 40010
    tbl2[1] = 40001
    tbl2[2] = n57
    tbl2[3] = n58
    tbl2[4] = n59
    tbl2[5] = n60
    tbl2[6] = n61
    tbl2[7] = n62
    tbl2[8] = n63
    tbl2[9] = n64
    tbl2[10] = n65
    func(v4, n55, n56, tbl2, false, true)
    this:QuestNarratorTask(datas.NarratorWithId_1601902, nil)
end

function Quest16019:OnSubStart1601904(arg1)
    print("OnSubStart1601904")
    this:CreateQuestNpc(arg1, npcs.Npc16388.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16510.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601904(arg1)
    print("OnSubFinish1601904")
    this:NpcDestroyImmediately(3, npcs.Npc16388.alias)
    this:ClearNarratorTask()
end

function Quest16019:OnSubStart1601935(arg1)
    print("OnSubStart1601935")
    this:CreateQuestNpc(arg1, npcs.Npc16384.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc4496.alias, 1, true)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601935(arg1)
    print("OnSubFinish1601935")
end

function Quest16019:OnSubStart1601905(arg1)
    print("OnSubStart1601905")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc4496.alias, 1, true)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601905(arg1)
    print("OnSubFinish1601905")
    this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
end

function Quest16019:OnSubFailed1601905(arg1)
    print("OnSubFailed1601905")
    this:RecycleAllRes()
end

function Quest16019:OnSubStart1601913(arg1)
    print("OnSubStart1601913")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc16659.id, 0, 30, 1601913)
    this:NotifyTo(npcs.Npc4496.alias, 1, true)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601913(arg1)
    print("OnSubFinish1601913")
    this:NpcDestroyImmediately(3, npcs.Npc16659.alias)
    this:LightNotifyTo(npcs.Npc4496.alias, 0, true)
end

function Quest16019:OnSubStart1601906(arg1)
    print("OnSubStart1601906")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16388.id, 0, false, 0)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601906(arg1)
    print("OnSubFinish1601906")
    this:NpcDestroyImmediately(3, npcs.Npc16388.alias)
end

function Quest16019:OnSubStart1601939(arg1)
    print("OnSubStart1601939")
    actorUtils.FinishQuestWithParam({false}, {1601939})
end

function Quest16019:OnSubFinish1601939(arg1)
    print("OnSubFinish1601939")
end

function Quest16019:OnSubStart1601940(arg1)
    print("OnSubStart1601940")
    actorUtils.FinishQuestWithParam({false}, {1601940})
end

function Quest16019:OnSubFinish1601940(arg1)
    print("OnSubFinish1601940")
end

function Quest16019:OnSubStart1601941(arg1)
    print("OnSubStart1601941")
    actorUtils.FinishQuestWithParam({false}, {1601941})
end

function Quest16019:OnSubFinish1601941(arg1)
    print("OnSubFinish1601941")
end

function Quest16019:OnSubStart1601942(arg1)
    print("OnSubStart1601942")
    actorUtils.FinishQuestWithParam({false}, {1601942})
end

function Quest16019:OnSubFinish1601942(arg1)
    print("OnSubFinish1601942")
end

function Quest16019:OnSubStart1601936(arg1)
    print("OnSubStart1601936")
    this:CreateQuestNpc(arg1, npcs.Npc16384.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601936(arg1)
    print("OnSubFinish1601936")
end

function Quest16019:OnSubStart1601907(arg1)
    print("OnSubStart1601907")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DeployStoryByQuest(121601938)
end

function Quest16019:OnSubFinish1601907(arg1)
    print("OnSubFinish1601907")
    this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    this:CancelStoryByQuest(121601938)
end

function Quest16019:OnSubFailed1601907(arg1)
    print("OnSubFailed1601907")
    this:RecycleAllRes()
end

function Quest16019:OnSubStart1601908(arg1)
    print("OnSubStart1601908")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc16659.id, 0, 30, 1601908)
end

function Quest16019:OnSubFinish1601908(arg1)
    print("OnSubFinish1601908")
    this:NpcDestroyImmediately(3, npcs.Npc16659.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16510.alias)
end

function Quest16019:OnSubStart1601937(arg1)
    print("OnSubStart1601937")
    this:NotifyTo(npcs.Npc7101.alias, 1, true)
    this:NotifyTo(npcs.Npc7107.alias, 1, true)
    this:NotifyTo(npcs.Npc7097.alias, 1, true)
    this:NotifyTo(npcs.Npc7104.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16019):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1315.id, 0, 1601937, 20, true)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 16019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16019):PlayEmoSync("", "", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
end

function Quest16019:OnSubFinish1601937(arg1)
    print("OnSubFinish1601937")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16019):DisableInteeHeadCtrl(false)
end

function Quest16019:OnSubStart1601909(arg1)
    print("OnSubStart1601909")
    this:NotifyTo(npcs.Npc7107.alias, 1, true)
    this:NotifyTo(npcs.Npc7097.alias, 1, true)
    this:NotifyTo(npcs.Npc7104.alias, 1, true)
    this:NotifyTo(npcs.Npc7101.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1601909Trigger", "Actor/Gadget/Q1601909Trigger", 70900002, 0, points._Q1601909TriggerPoint_.pos, points._Q1601909TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
    globalActor:DisablePaimonInProfilePage(datas.SceneIDdata)
    actorUtils.BanUIByQuest(1, true, 16019)
end

function Quest16019:OnSubFinish1601909(arg1)
    print("OnSubFinish1601909")
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:TransmitPlayerWithQuestIdByData(1601909, 4, datas.Transmit_DC01, nil, nil, nil)
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDdata)
    actorUtils.BanUIByQuest(1, false, 16019)
end

function Quest16019:OnSubFailed1601909(arg1)
    print("OnSubFailed1601909")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDdata)
    actorUtils.BanUIByQuest(1, false, 16019)
end

function Quest16019:OnSubStart1601931(arg1)
    print("OnSubStart1601931")
    actorMgr:CreateActorWithPos("Q1601931Trigger", "Actor/Gadget/Q1601931Trigger", 70900002, 0, points._Q1601931TriggerPoint_.pos, points._Q1601931TriggerPoint_.rot, true, false, 3, nil, 0, 16019)
end

function Quest16019:OnSubFinish1601931(arg1)
    print("OnSubFinish1601931")
end

function Quest16019:OnSubStart1601910(arg1)
    print("OnSubStart1601910")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16476.id, 0, 1601910, 20, true)
    this:CreateQuestNpc(arg1, npcs.Npc16385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16385.alias, 16019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16475.id, 0, false, 0)
end

function Quest16019:OnSubFinish1601910(arg1)
    print("OnSubFinish1601910")
    this:PlayerEnterDungeonWithData(1965, 1309, 1601910, 1, datas.TransmitData_DC, nil, nil)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16385.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16475.alias)
end

function Quest16019:OnSubFailed1601910(arg1)
    print("OnSubFailed1601910")
    this:RecycleAllRes()
end

function Quest16019:OnSubStart1601932(arg1)
    print("OnSubStart1601932")
    this:NotifyTo(npcs.Npc7101.alias, 1, true)
    this:NotifyTo(npcs.Npc7107.alias, 1, true)
    this:NotifyTo(npcs.Npc7097.alias, 1, true)
    this:NotifyTo(npcs.Npc7104.alias, 1, true)
end

function Quest16019:OnSubFinish1601932(arg1)
    print("OnSubFinish1601932")
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
end

function Quest16019:OnSubStart1601911(arg1)
    print("OnSubStart1601911")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1601911, 0, 15, 0, npcs.Npc16532_1.id)
    this:LevelReadySafeCall(function(arg1)
        this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
    end)
end

function Quest16019:OnSubFinish1601911(arg1)
    print("OnSubFinish1601911")
    this:NpcDestroyImmediately(20339, npcs.Npc16532_1.alias)
    this:PlayerEnterDungeonWithData(1967, 1310, 1601911, 2, datas.TransmitData_DC, nil, nil)
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubFailed1601911(arg1)
    print("OnSubFailed1601911")
    this:RecycleAllRes()
    this:LevelReadySafeCall(function(arg1)
        this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    end)
end

function Quest16019:OnSubStart1601933(arg1)
    print("OnSubStart1601933")
    this:NotifyTo(npcs.Npc7101.alias, 1, true)
    this:NotifyTo(npcs.Npc7107.alias, 1, true)
    this:NotifyTo(npcs.Npc7097.alias, 1, true)
    this:NotifyTo(npcs.Npc7104.alias, 1, true)
end

function Quest16019:OnSubFinish1601933(arg1)
    print("OnSubFinish1601933")
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
end

function Quest16019:OnSubStart1601914(arg1)
    print("OnSubStart1601914")
    this:CreateQuestNpc(arg1, npcs.Npc16533.id, 0, false, 0)
    this:LevelReadySafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_160191499, nil)
        this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
    end)
end

function Quest16019:OnSubFinish1601914(arg1)
    print("OnSubFinish1601914")
    this:ClearNarratorTask()
end

function Quest16019:OnSubFailed1601914(arg1)
    print("OnSubFailed1601914")
    this:RecycleAllRes()
    this:LevelLoadFinishSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    end)
end

function Quest16019:OnSubStart1601912(arg1)
    print("OnSubStart1601912")
    this:CreateQuestNpc(arg1, npcs.Npc16533.id, 0, false, 0)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601912(arg1)
    print("OnSubFinish1601912")
    this:NpcDestroyImmediately(20340, npcs.Npc16533.alias)
end

function Quest16019:OnSubFailed1601912(arg1)
    print("OnSubFailed1601912")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601915(arg1)
    print("OnSubStart1601915")
    this:CreateQuestNpc(arg1, npcs.Npc16914.id, 0, false, 0)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601915(arg1)
    print("OnSubFinish1601915")
    this:NpcDestroyImmediately(20340, npcs.Npc16914.alias)
end

function Quest16019:OnSubFailed1601915(arg1)
    print("OnSubFailed1601915")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601928(arg1)
    print("OnSubStart1601928")
    this:NpcCreateWithNoBlackData(1601928, 1, npcs.Npc16533.id, 0, 20, 1601916, datas.NoBlackData_Talk)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601928(arg1)
    print("OnSubFinish1601928")
    this:NpcDestroyImmediately(20340, npcs.Npc16533.alias)
end

function Quest16019:OnSubFailed1601928(arg1)
    print("OnSubFailed1601928")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601929(arg1)
    print("OnSubStart1601929")
    this:NpcCreateWithNoBlackData(1601929, 1, npcs.Npc16476.id, 0, 10, 1601920, datas.NoBlackData_Talk)
    this:GetQuestNpcActor(npcs.Npc16476.alias, 16019):DoFreeStyle(1005, true, nil, true, true, false, false)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601929(arg1)
    print("OnSubFinish1601929")
end

function Quest16019:OnSubFailed1601929(arg1)
    print("OnSubFailed1601929")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601918(arg1)
    print("OnSubStart1601918")
    this:GetQuestNpcActor(npcs.Npc16476.alias, 16019):DoFreeStyle(1005, true, nil, true, true, false, false)
    this:NpcCreateWithNoBlackData(1601918, 1, npcs.Npc16533.id, 0, 30, 1601917, datas.NoBlackData_Talk)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601918(arg1)
    print("OnSubFinish1601918")
    this:NpcDestroyImmediately(20340, npcs.Npc16533.alias)
    this:NpcDestroyImmediately(20340, npcs.Npc16476.alias)
    this:PlayerEnterDungeonWithData(1965, 1309, 1601918, 1, datas.TransmitData_DC, nil, nil)
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubFailed1601918(arg1)
    print("OnSubFailed1601918")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601934(arg1)
    print("OnSubStart1601934")
    this:NotifyTo(npcs.Npc7107.alias, 1, true)
    this:NotifyTo(npcs.Npc7101.alias, 1, true)
    this:NotifyTo(npcs.Npc7097.alias, 1, true)
    this:NotifyTo(npcs.Npc7104.alias, 1, true)
end

function Quest16019:OnSubFinish1601934(arg1)
    print("OnSubFinish1601934")
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
end

function Quest16019:OnSubStart1601919(arg1)
    print("OnSubStart1601919")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1601919, 0, 10, 0, npcs.Npc16533.id)
    this:LevelReadySafeCall(function(arg1)
        this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
    end)
end

function Quest16019:OnSubFinish1601919(arg1)
    print("OnSubFinish1601919")
end

function Quest16019:OnSubFailed1601919(arg1)
    print("OnSubFailed1601919")
    this:RecycleAllRes()
    this:LevelReadySafeCall(function(arg1)
        this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    end)
end

function Quest16019:OnSubStart1601920(arg1)
    print("OnSubStart1601920")
    this:NpcCreateWithNoBlackData(1601920, 1, npcs.Npc16533.id, 0, 10, 1601919, datas.NoBlackData_Talk)
    this:GetQuestNpcActor(npcs.Npc16533.alias, 16019):ForceAvatarWalkByDist(100, 100)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601920(arg1)
    print("OnSubFinish1601920")
    this:NpcDestroyImmediately(20339, npcs.Npc16533.alias)
    this:GetQuestNpcActor(npcs.Npc16533.alias, 16019):ResetForceAvatarWalk()
end

function Quest16019:OnSubFailed1601920(arg1)
    print("OnSubFailed1601920")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601922(arg1)
    print("OnSubStart1601922")
    actorMgr:CreateActorWithPos("Q1601922Trigger", "Actor/Gadget/Q1601922Trigger", 70900002, 0, points._Q1601922TriggerPoint_.pos, points._Q1601922TriggerPoint_.rot, true, false, 20339, nil, 0, 0)
    this:DeployStoryByQuest(121601923)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
    actorMgr:CreateActorWithPos("Q1601922Trigger_1", "Actor/Gadget/Q1601922Trigger_1", 70900002, 0, points._Q1601922Trigger_1Point_.pos, points._Q1601922Trigger_1Point_.rot, true, false, 20339, nil, 0, 16019)
end

function Quest16019:OnSubFinish1601922(arg1)
    print("OnSubFinish1601922")
    this:ActorDestroy("Q1601922Trigger_1", 16019)
end

function Quest16019:OnSubFailed1601922(arg1)
    print("OnSubFailed1601922")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    this:CancelStoryByQuest(121601923)
    this:ActorDestroy("Q1601922Trigger_1", 16019)
end

function Quest16019:OnSubStart1601923(arg1)
    print("OnSubStart1601923")
    this:NpcCreateWithNoBlackData(1601923, 1, npcs.Npc16533.id, 0, 10, 1601921, datas.NoBlackData_Talk)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601923(arg1)
    print("OnSubFinish1601923")
    this:NpcDestroyImmediately(20339, npcs.Npc16533.alias)
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    this:CancelStoryByQuest(121601923)
end

function Quest16019:OnSubFailed1601923(arg1)
    print("OnSubFailed1601923")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
    this:CancelStoryByQuest(121601923)
end

function Quest16019:OnSubStart1601924(arg1)
    print("OnSubStart1601924")
    if sceneData.currSceneID == 20339 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:TransmitPlayerWithQuestIdByData(1601924, 7, datas.Transmit_DC01, nil, nil, nil)
        end)
    end
end

function Quest16019:OnSubFinish1601924(arg1)
    print("OnSubFinish1601924")
end

function Quest16019:OnSubStart1601917(arg1)
    print("OnSubStart1601917")
    this:GetQuestNpcActor(npcs.Npc16476.alias, 16019):DoFreeStyle(1005, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1601917Trigger", "Actor/Gadget/Q1601917Trigger", 70900002, 0, points._Q1601917TriggerPoint_.pos, points._Q1601917TriggerPoint_.rot, true, false, 20340, nil, 0, 0)
    this:DisableMainPageByQuest(true, "LinneaDreamDungeon")
end

function Quest16019:OnSubFinish1601917(arg1)
    print("OnSubFinish1601917")
end

function Quest16019:OnSubFailed1601917(arg1)
    print("OnSubFailed1601917")
    this:RecycleAllRes()
    this:DisableMainPageByQuest(false, "LinneaDreamDungeon")
end

function Quest16019:OnSubStart1601916(arg1)
    print("OnSubStart1601916")
    this:CreateQuestNpc(arg1, npcs.Npc16534.id, 0, false, 0)
    actorUtils.FinishQuestID(false, 1601916)
end

function Quest16019:OnSubFinish1601916(arg1)
    print("OnSubFinish1601916")
    this:NpcDestroyImmediately(3, npcs.Npc16534.alias)
end

function Quest16019:OnSubStart1601921(arg1)
    print("OnSubStart1601921")
    actorMgr:CreateActorWithPos("Q1601921Trigger", "Actor/Gadget/Q1601921Trigger", 70900002, 0, points._Q1601921TriggerPoint_.pos, points._Q1601921TriggerPoint_.rot, true, false, 20339, nil, 0, 0)
end

function Quest16019:OnSubFinish1601921(arg1)
    print("OnSubFinish1601921")
end

function Quest16019:OnSubFailed1601921(arg1)
    print("OnSubFailed1601921")
    this:RecycleAllRes()
    this:RecycleAllRes()
end

function Quest16019:OnSubStart1601925(arg1)
    print("OnSubStart1601925")
end

function Quest16019:OnSubFinish1601925(arg1)
    print("OnSubFinish1601925")
end

function Quest16019:OnSubStart1601926(arg1)
    print("OnSubStart1601926")
end

function Quest16019:OnSubFinish1601926(arg1)
    print("OnSubFinish1601926")
end

function Quest16019:OnSubStart1601927(arg1)
    print("OnSubStart1601927")
end

function Quest16019:OnSubFinish1601927(arg1)
    print("OnSubFinish1601927")
end

function Quest16019:OnSubStart1601930(arg1)
    print("OnSubStart1601930")
end

function Quest16019:OnSubFinish1601930(arg1)
    print("OnSubFinish1601930")
end

return Quest16019
