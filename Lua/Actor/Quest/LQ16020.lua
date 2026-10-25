require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16020 = class("Quest16020", QuestActorProxy)
Quest16020.defaultAlias = "Quest16020"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1602001"] = self.OnSubStart1602001,
        ["1602018"] = self.OnSubStart1602018,
        ["1602002"] = self.OnSubStart1602002,
        ["1602016"] = self.OnSubStart1602016,
        ["1602017"] = self.OnSubStart1602017,
        ["1602003"] = self.OnSubStart1602003,
        ["1602005"] = self.OnSubStart1602005,
        ["1602015"] = self.OnSubStart1602015,
        ["1602006"] = self.OnSubStart1602006,
        ["1602007"] = self.OnSubStart1602007,
        ["1602008"] = self.OnSubStart1602008,
        ["1602009"] = self.OnSubStart1602009,
        ["1602010"] = self.OnSubStart1602010,
        ["1602020"] = self.OnSubStart1602020,
        ["1602013"] = self.OnSubStart1602013,
        ["1602014"] = self.OnSubStart1602014,
        ["1602019"] = self.OnSubStart1602019,
        ["1602004"] = self.OnSubStart1602004,
        ["1602011"] = self.OnSubStart1602011,
        ["1602012"] = self.OnSubStart1602012
    }
end

function Quest16020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1602001"] = self.OnSubFinish1602001,
        ["1602018"] = self.OnSubFinish1602018,
        ["1602002"] = self.OnSubFinish1602002,
        ["1602016"] = self.OnSubFinish1602016,
        ["1602017"] = self.OnSubFinish1602017,
        ["1602003"] = self.OnSubFinish1602003,
        ["1602005"] = self.OnSubFinish1602005,
        ["1602015"] = self.OnSubFinish1602015,
        ["1602006"] = self.OnSubFinish1602006,
        ["1602007"] = self.OnSubFinish1602007,
        ["1602008"] = self.OnSubFinish1602008,
        ["1602009"] = self.OnSubFinish1602009,
        ["1602010"] = self.OnSubFinish1602010,
        ["1602020"] = self.OnSubFinish1602020,
        ["1602013"] = self.OnSubFinish1602013,
        ["1602014"] = self.OnSubFinish1602014,
        ["1602019"] = self.OnSubFinish1602019,
        ["1602004"] = self.OnSubFinish1602004,
        ["1602011"] = self.OnSubFinish1602011,
        ["1602012"] = self.OnSubFinish1602012
    }
end

function Quest16020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1602002"] = self.OnSubFailed1602002,
        ["1602017"] = self.OnSubFailed1602017,
        ["1602013"] = self.OnSubFailed1602013
    }
end

function Quest16020:Start()
    print("Start")
end

function Quest16020:OnDestroy()
    print("OnDestroy")
end

function Quest16020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16020:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1602018Trigger", nil)
    this:ActorDestroy("Q1602016Trigger", nil)
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
end

function Quest16020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    end
end

function Quest16020:ActorDestroy(arg1, arg2)
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

function Quest16020:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16020:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest16020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16020:ActorDestroy(arg1, arg2)
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

function Quest16020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16020:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest16020:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest16020:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest16020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16020:OnSubStart1602001(arg1)
    print("OnSubStart1602001")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1327.id, 0, 1602001, 30, true)
    this:NotifyTo(npcs.Npc7101.alias, 1, true)
    this:NotifyTo(npcs.Npc7107.alias, 1, true)
end

function Quest16020:OnSubFinish1602001(arg1)
    print("OnSubFinish1602001")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:TransmitPlayerByQuestId(1602001, 1, nil, nil, nil)
end

function Quest16020:OnSubStart1602018(arg1)
    print("OnSubStart1602018")
    actorMgr:CreateActorWithPos("Q1602018Trigger", "Actor/Gadget/Q1602018Trigger", 70900002, 0, points._Q1602018TriggerPoint_.pos, points._Q1602018TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest16020:OnSubFinish1602018(arg1)
    print("OnSubFinish1602018")
end

function Quest16020:OnSubStart1602002(arg1)
    print("OnSubStart1602002")
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DeployStoryByQuest(121602002)
end

function Quest16020:OnSubFinish1602002(arg1)
    print("OnSubFinish1602002")
end

function Quest16020:OnSubFailed1602002(arg1)
    print("OnSubFailed1602002")
    this:RecycleAllRes()
    this:CancelStoryByQuest(121602002)
end

function Quest16020:OnSubStart1602016(arg1)
    print("OnSubStart1602016")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc7061.alias, 1, true)
    this:NotifyTo(npcs.Npc7063.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1602016Trigger", "Actor/Gadget/Q1602016Trigger", 70900002, 0, points._Q1602016TriggerPoint_.pos, points._Q1602016TriggerPoint_.rot, true, false, 1204, nil, 0, 0)
end

function Quest16020:OnSubFinish1602016(arg1)
    print("OnSubFinish1602016")
    this:CancelStoryByQuest(121602002)
end

function Quest16020:OnSubStart1602017(arg1)
    print("OnSubStart1602017")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc7061.alias, 1, true)
    this:NotifyTo(npcs.Npc7063.alias, 1, true)
    this:DeployStoryByQuest(121602003)
end

function Quest16020:OnSubFinish1602017(arg1)
    print("OnSubFinish1602017")
    this:LightNotifyTo(npcs.Npc7061.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7063.alias, 0, true)
    this:ClearNarratorTask()
    this:CancelStoryByQuest(121602003)
end

function Quest16020:OnSubFailed1602017(arg1)
    print("OnSubFailed1602017")
    this:RecycleAllRes()
    this:CancelStoryByQuest(121602003)
end

function Quest16020:OnSubStart1602003(arg1)
    print("OnSubStart1602003")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1602003, 0, 20, 1, npcs.Npc16530.id)
end

function Quest16020:OnSubFinish1602003(arg1)
    print("OnSubFinish1602003")
    this:NpcDestroyImmediately(1204, npcs.Npc16530.alias)
    this:QuestNarratorTask(datas.NarratorWithId_1602004, nil)
end

function Quest16020:OnSubStart1602005(arg1)
    print("OnSubStart1602005")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16525.id, 0, false, 0)
end

function Quest16020:OnSubFinish1602005(arg1)
    print("OnSubFinish1602005")
    this:NpcDestroyImmediately(1204, npcs.Npc16525.alias)
    this:ClearNarratorTask()
    this:TransmitPlayerByQuestId(1602005, 7, nil, nil, nil)
end

function Quest16020:OnSubStart1602015(arg1)
    print("OnSubStart1602015")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1327.id, 0, 1602015, 20, true)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
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

function Quest16020:OnSubFinish1602015(arg1)
    print("OnSubFinish1602015")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
end

function Quest16020:OnSubStart1602006(arg1)
    print("OnSubStart1602006")
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
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

function Quest16020:OnSubFinish1602006(arg1)
    print("OnSubFinish1602006")
    this:NpcDestroyImmediately(1204, npcs.Npc1087.alias)
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
end

function Quest16020:OnSubStart1602007(arg1)
    print("OnSubStart1602007")
    this:CreateQuestNpc(arg1, npcs.Npc16510.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16384.id, 0, false, 0)
end

function Quest16020:OnSubFinish1602007(arg1)
    print("OnSubFinish1602007")
    this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    this:QuestNarratorTask(datas.NarratorWithId_1602007, nil)
end

function Quest16020:OnSubStart1602008(arg1)
    print("OnSubStart1602008")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1602008, 0, 10, 0, npcs.Npc1327.id)
end

function Quest16020:OnSubFinish1602008(arg1)
    print("OnSubFinish1602008")
    this:ClearNarratorTask()
end

function Quest16020:OnSubStart1602009(arg1)
    print("OnSubStart1602009")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16386.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
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
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest16020:OnSubFinish1602009(arg1)
    print("OnSubFinish1602009")
    this:NpcDestroyImmediately(3, npcs.Npc16386.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", true)
end

function Quest16020:OnSubStart1602010(arg1)
    print("OnSubStart1602010")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16020):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16386.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16386.alias, 16020):DoFreeStyle(1, true, nil, true, true, false, true)
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

function Quest16020:OnSubFinish1602010(arg1)
    print("OnSubFinish1602010")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16386.alias)
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
    this:QuestNarratorTask(datas.NarratorWithId_1602010, nil)
end

function Quest16020:OnSubStart1602020(arg1)
    print("OnSubStart1602020")
    this:CreateQuestNpc(arg1, npcs.Npc16384.id, 0, false, 0)
end

function Quest16020:OnSubFinish1602020(arg1)
    print("OnSubFinish1602020")
    this:ClearNarratorTask()
end

function Quest16020:OnSubStart1602013(arg1)
    print("OnSubStart1602013")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest16020:OnSubFinish1602013(arg1)
    print("OnSubFinish1602013")
    this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
end

function Quest16020:OnSubFailed1602013(arg1)
    print("OnSubFailed1602013")
    this:RecycleAllRes()
end

function Quest16020:OnSubStart1602014(arg1)
    print("OnSubStart1602014")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16020):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc16659.id, 0, 30, 1602014)
end

function Quest16020:OnSubFinish1602014(arg1)
    print("OnSubFinish1602014")
    this:TransmitPlayerByQuestId(1602014, 1, nil, nil, nil)
    this:NpcDestroyImmediately(3, npcs.Npc16510.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16659.alias)
end

function Quest16020:OnSubStart1602019(arg1)
    print("OnSubStart1602019")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16385.id, 0, 1602019, 20, true)
end

function Quest16020:OnSubFinish1602019(arg1)
    print("OnSubFinish1602019")
    this:NpcDestroyImmediately(3, npcs.Npc16385.alias)
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

function Quest16020:OnSubStart1602004(arg1)
    print("OnSubStart1602004")
end

function Quest16020:OnSubFinish1602004(arg1)
    print("OnSubFinish1602004")
end

function Quest16020:OnSubStart1602011(arg1)
    print("OnSubStart1602011")
end

function Quest16020:OnSubFinish1602011(arg1)
    print("OnSubFinish1602011")
end

function Quest16020:OnSubStart1602012(arg1)
    print("OnSubStart1602012")
end

function Quest16020:OnSubFinish1602012(arg1)
    print("OnSubFinish1602012")
end

return Quest16020
