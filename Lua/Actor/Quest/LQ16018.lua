require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16018 = class("Quest16018", QuestActorProxy)
Quest16018.defaultAlias = "Quest16018"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest16018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest16018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601801"] = self.OnSubStart1601801,
        ["1601802"] = self.OnSubStart1601802,
        ["1601803"] = self.OnSubStart1601803,
        ["1601804"] = self.OnSubStart1601804,
        ["1601809"] = self.OnSubStart1601809,
        ["1601805"] = self.OnSubStart1601805,
        ["1601806"] = self.OnSubStart1601806,
        ["1601810"] = self.OnSubStart1601810,
        ["1601807"] = self.OnSubStart1601807,
        ["1601808"] = self.OnSubStart1601808
    }
end

function Quest16018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601801"] = self.OnSubFinish1601801,
        ["1601802"] = self.OnSubFinish1601802,
        ["1601803"] = self.OnSubFinish1601803,
        ["1601804"] = self.OnSubFinish1601804,
        ["1601809"] = self.OnSubFinish1601809,
        ["1601805"] = self.OnSubFinish1601805,
        ["1601806"] = self.OnSubFinish1601806,
        ["1601810"] = self.OnSubFinish1601810,
        ["1601807"] = self.OnSubFinish1601807,
        ["1601808"] = self.OnSubFinish1601808
    }
end

function Quest16018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1601807"] = self.OnSubFailed1601807}
end

function Quest16018:Start()
    print("Start")
end

function Quest16018:OnDestroy()
    print("OnDestroy")
end

function Quest16018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16018:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90034
    local n4 = 90035
    local n5 = 90031
    local n6 = 90032
    tbl[1] = 90033
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    banCrowdNpc(v2, n, n2, tbl, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n7 = 3607
    local n8 = 9
    local tbl2 = {}
    local n9 = 90032
    tbl2[1] = 90031
    tbl2[2] = n9
    func(v4, n7, n8, tbl2, false, true)
    local v5 = this
    local v6 = v5
    local banCrowdNpc2 = v5.BanCrowdNpc
    local n10 = 3606
    local n11 = 4
    local tbl3 = {}
    local n12 = 40002
    local n13 = 40003
    local n14 = 40004
    local n15 = 40005
    local n16 = 40006
    local n17 = 40007
    local n18 = 40008
    local n19 = 40009
    local n20 = 40010
    tbl3[1] = 40001
    tbl3[2] = n12
    tbl3[3] = n13
    tbl3[4] = n14
    tbl3[5] = n15
    tbl3[6] = n16
    tbl3[7] = n17
    tbl3[8] = n18
    tbl3[9] = n19
    tbl3[10] = n20
    banCrowdNpc2(v6, n10, n11, tbl3, false, true)
    this:ClearNarratorTask()
    this:BanCrowdNpc(3607, 9, {90033, 90034, 90035, 90031, 90032}, false, true)
end

function Quest16018:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    end
end

function Quest16018:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16018:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest16018:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16018:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16018:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest16018:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest16018:OnSubStart1601801(arg1)
    print("OnSubStart1601801")
    this:NpcCreateWithNoBlackData(1601801, 1, npcs.Npc7000.id, 0, 10, 1601801, datas.NoBlackData_Talk)
end

function Quest16018:OnSubFinish1601801(arg1)
    print("OnSubFinish1601801")
    this:NpcDestroyImmediately(3, npcs.Npc7000.alias)
end

function Quest16018:OnSubStart1601802(arg1)
    print("OnSubStart1601802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1327.id, 0, 10, 1601802)
    this:CreateQuestNpc(arg1, npcs.Npc16511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16511.alias, 16018):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16512.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16512.alias, 16018):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90034
    local n4 = 90035
    local n5 = 90031
    local n6 = 90032
    tbl[1] = 90033
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest16018:OnSubFinish1601802(arg1)
    print("OnSubFinish1601802")
    this:NpcDestroyImmediately(3, npcs.Npc16511.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16512.alias)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90034
    local n4 = 90035
    local n5 = 90031
    local n6 = 90032
    tbl[1] = 90033
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    banCrowdNpc(v2, n, n2, tbl, false, true)
end

function Quest16018:OnSubStart1601803(arg1)
    print("OnSubStart1601803")
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90032
    tbl[1] = 90031
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest16018:OnSubFinish1601803(arg1)
    print("OnSubFinish1601803")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 9
    local tbl = {}
    local n3 = 90032
    tbl[1] = 90031
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", true)
end

function Quest16018:OnSubStart1601804(arg1)
    print("OnSubStart1601804")
    this:CreateQuestNpc(arg1, npcs.Npc16510.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNoBlackData(1601804, 1, npcs.Npc1087.id, 0, 15, 1601804, datas.NoBlackData_Talk)
    this:CreateQuestNpc(arg1, npcs.Npc16513.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 4
    local tbl = {}
    local n3 = 40002
    local n4 = 40003
    local n5 = 40004
    local n6 = 40005
    local n7 = 40006
    local n8 = 40007
    local n9 = 40008
    local n10 = 40009
    local n11 = 40010
    tbl[1] = 40001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest16018:OnSubFinish1601804(arg1)
    print("OnSubFinish1601804")
    this:NpcDestroyImmediately(3, npcs.Npc1087.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16513.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_160180999, nil)
    end)
end

function Quest16018:OnSubStart1601809(arg1)
    print("OnSubStart1601809")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 16018):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 16018):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16514.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16514.alias, 16018):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16516.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16516.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16518.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16518.alias, 16018):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16523.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 4
    local tbl = {}
    local n3 = 40002
    local n4 = 40003
    local n5 = 40004
    local n6 = 40005
    local n7 = 40006
    local n8 = 40007
    local n9 = 40008
    local n10 = 40009
    local n11 = 40010
    tbl[1] = 40001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc16513.id, 0, false, 0)
end

function Quest16018:OnSubFinish1601809(arg1)
    print("OnSubFinish1601809")
    this:NpcDestroyImmediately(3, npcs.Npc16510.alias)
end

function Quest16018:OnSubStart1601805(arg1)
    print("OnSubStart1601805")
    this:CreateQuestNpc(arg1, npcs.Npc16510.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 16018):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 16018):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16514.alias, 16018):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16516.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16518.alias, 16018):DoFreeStyle(1190, true, nil, true, true, false, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 4
    local tbl = {}
    local n3 = 40002
    local n4 = 40003
    local n5 = 40004
    local n6 = 40005
    local n7 = 40006
    local n8 = 40007
    local n9 = 40008
    local n10 = 40009
    local n11 = 40010
    tbl[1] = 40001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest16018:OnSubFinish1601805(arg1)
    print("OnSubFinish1601805")
    this:NpcDestroyImmediately(3, npcs.Npc1087.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1044.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16514.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16516.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16518.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16523.alias)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3606
    local n2 = 4
    local tbl = {}
    local n3 = 40002
    local n4 = 40003
    local n5 = 40004
    local n6 = 40005
    local n7 = 40006
    local n8 = 40007
    local n9 = 40008
    local n10 = 40009
    local n11 = 40010
    tbl[1] = 40001
    tbl[2] = n3
    tbl[3] = n4
    tbl[4] = n5
    tbl[5] = n6
    tbl[6] = n7
    tbl[7] = n8
    tbl[8] = n9
    tbl[9] = n10
    tbl[10] = n11
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:NpcDestroyImmediately(3, npcs.Npc16513.alias)
end

function Quest16018:OnSubStart1601806(arg1)
    print("OnSubStart1601806")
    this:CreateQuestNpc(arg1, npcs.Npc16388.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest16018:OnSubFinish1601806(arg1)
    print("OnSubFinish1601806")
    this:NpcDestroyImmediately(3, npcs.Npc16388.alias)
end

function Quest16018:OnSubStart1601810(arg1)
    print("OnSubStart1601810")
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16384.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16517.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16517.alias, 16018):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16538.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest16018:OnSubFinish1601810(arg1)
    print("OnSubFinish1601810")
end

function Quest16018:OnSubStart1601807(arg1)
    print("OnSubStart1601807")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16517.alias, 16018):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest16018:OnSubFinish1601807(arg1)
    print("OnSubFinish1601807")
    this:NpcDestroyImmediately(3, npcs.Npc16384.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:QuestNarratorTask(datas.NarratorWithId_160180899, nil)
end

function Quest16018:OnSubFailed1601807(arg1)
    print("OnSubFailed1601807")
    this:RecycleAllRes()
end

function Quest16018:OnSubStart1601808(arg1)
    print("OnSubStart1601808")
    this:GetQuestNpcActor(npcs.Npc16510.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16517.alias, 16018):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias, 16018):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 16018):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc12544.id, 0, false, 0)
    this:NpcCreateWithNoBlackData(1601808, 1, npcs.Npc16654.id, 0, 5, 1601808, datas.NoBlackData_Talk)
    this:CreateQuestNpc(arg1, npcs.Npc16535.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest16018:OnSubFinish1601808(arg1)
    print("OnSubFinish1601808")
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1044.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12544.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16654.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16535.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16510.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16517.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16538.alias)
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

return Quest16018
