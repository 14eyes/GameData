require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15009 = class("Quest15009", QuestActorProxy)
Quest15009.defaultAlias = "Quest15009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500901"] = self.OnSubStart1500901,
        ["1500910"] = self.OnSubStart1500910,
        ["1500911"] = self.OnSubStart1500911,
        ["1500912"] = self.OnSubStart1500912,
        ["1500907"] = self.OnSubStart1500907,
        ["1500913"] = self.OnSubStart1500913,
        ["1500914"] = self.OnSubStart1500914,
        ["1500915"] = self.OnSubStart1500915,
        ["1500916"] = self.OnSubStart1500916,
        ["1500903"] = self.OnSubStart1500903,
        ["1500904"] = self.OnSubStart1500904,
        ["1500902"] = self.OnSubStart1500902,
        ["1500908"] = self.OnSubStart1500908,
        ["1500905"] = self.OnSubStart1500905,
        ["1500909"] = self.OnSubStart1500909,
        ["1500906"] = self.OnSubStart1500906,
        ["1500918"] = self.OnSubStart1500918,
        ["1500919"] = self.OnSubStart1500919,
        ["1500917"] = self.OnSubStart1500917,
        ["1500920"] = self.OnSubStart1500920
    }
end

function Quest15009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500901"] = self.OnSubFinish1500901,
        ["1500910"] = self.OnSubFinish1500910,
        ["1500911"] = self.OnSubFinish1500911,
        ["1500912"] = self.OnSubFinish1500912,
        ["1500907"] = self.OnSubFinish1500907,
        ["1500913"] = self.OnSubFinish1500913,
        ["1500914"] = self.OnSubFinish1500914,
        ["1500915"] = self.OnSubFinish1500915,
        ["1500916"] = self.OnSubFinish1500916,
        ["1500903"] = self.OnSubFinish1500903,
        ["1500904"] = self.OnSubFinish1500904,
        ["1500902"] = self.OnSubFinish1500902,
        ["1500908"] = self.OnSubFinish1500908,
        ["1500905"] = self.OnSubFinish1500905,
        ["1500909"] = self.OnSubFinish1500909,
        ["1500906"] = self.OnSubFinish1500906,
        ["1500918"] = self.OnSubFinish1500918,
        ["1500919"] = self.OnSubFinish1500919,
        ["1500917"] = self.OnSubFinish1500917,
        ["1500920"] = self.OnSubFinish1500920
    }
end

function Quest15009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1500913"] = self.OnSubFailed1500913,
        ["1500914"] = self.OnSubFailed1500914,
        ["1500915"] = self.OnSubFailed1500915,
        ["1500916"] = self.OnSubFailed1500916,
        ["1500903"] = self.OnSubFailed1500903,
        ["1500905"] = self.OnSubFailed1500905
    }
end

function Quest15009:Start()
    print("Start")
end

function Quest15009:OnDestroy()
    print("OnDestroy")
end

function Quest15009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 2 then
        actorUtils.FinishQuestID(false, 1500902)
    end
end

function Quest15009:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15009:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest15009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15009:OnSubStart1500901(arg1)
    print("OnSubStart1500901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500901, 0, 11, 1, npcs.Npc1087.id)
end

function Quest15009:OnSubFinish1500901(arg1)
    print("OnSubFinish1500901")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest15009:OnSubStart1500910(arg1)
    print("OnSubStart1500910")
end

function Quest15009:OnSubFinish1500910(arg1)
    print("OnSubFinish1500910")
end

function Quest15009:OnSubStart1500911(arg1)
    print("OnSubStart1500911")
end

function Quest15009:OnSubFinish1500911(arg1)
    print("OnSubFinish1500911")
end

function Quest15009:OnSubStart1500912(arg1)
    print("OnSubStart1500912")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15009):DoFreeStyle(1090, true, nil, true, true, false, true)
end

function Quest15009:OnSubFinish1500912(arg1)
    print("OnSubFinish1500912")
    this:TransmitPlayerWithDialogTextByQuestId(1500912, 3, datas.DialogIdsData_1, 0, nil, nil, nil)
end

function Quest15009:OnSubStart1500907(arg1)
    print("OnSubStart1500907")
    this:EnablePlayerInputByQuest(true)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc_MaleCond(npcs.Npc1025.alias, npcs.Npc1026.alias, 3)
    local questVar = actorMgr:GetActor("15009"):GetQuestVar(1500907, 2)
    if questVar == 0 then
        actorMgr:CreateActorWithPos("Q1500907Trigger", "Actor/Gadget/Q1500907Trigger", 70900002, 0, points._Q1500907TriggerPoint_.pos, points._Q1500907TriggerPoint_.rot, true, false, 3)
    elseif questVar == 1 then
        actorMgr:CreateActorWithPos("Q1500907Trigger_1", "Actor/Gadget/Q1500907Trigger_1", 70900002, 0, points._Q1500907Trigger_1Point_.pos, points._Q1500907Trigger_1Point_.rot, true, false, 3)
    end

    globalActor:PlayAudioState("StateGroup_specialArea", "None")
    actorUtils.BanUIByQuest(2, false, 15009)
    actorUtils.BanUIByQuest(24, false, 15009)
end

function Quest15009:OnSubFinish1500907(arg1)
    print("OnSubFinish1500907")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:NatsaurusVehicleOff()
end

function Quest15009:OnSubStart1500913(arg1)
    print("OnSubStart1500913")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
    if actorMgr:GetActor("15009"):GetQuestVar(1500907, 3) == 0 then
        this:ActionSafeCall(function(arg1)
            this:ShowTutorialDialog(1936, nil)
            this:SetQuestVarByMainId(3, 1)
        end)
    end

    actorUtils.BanUIByQuest(2, true, 15009)
    actorUtils.BanUIByQuest(24, true, 15009)
end

function Quest15009:OnSubFinish1500913(arg1)
    print("OnSubFinish1500913")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:TransmitPlayerById(arg1, 3, nil, nil, nil)
end

function Quest15009:OnSubFailed1500913(arg1)
    print("OnSubFailed1500913")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest15009:OnSubStart1500914(arg1)
    print("OnSubStart1500914")
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
    globalActor:PlayAudioState("StateGroup_specialArea", "State_v50_Smr_MaLaNi_HuGuangArea")
end

function Quest15009:OnSubFinish1500914(arg1)
    print("OnSubFinish1500914")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        this:TransmitPlayerToArcLight(3, points.Q15009mlnXH01.pos, points.Q15009mlnXH01.rot, 1, 1, 0.5, 1, 0.5, nil)
        globalActor:PlayAudioState("StateGroup_specialArea", "None")
    end, nil, nil, 0, false, true)
end

function Quest15009:OnSubFailed1500914(arg1)
    print("OnSubFailed1500914")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
    globalActor:PlayAudioState("StateGroup_specialArea", "None")
end

function Quest15009:OnSubStart1500915(arg1)
    print("OnSubStart1500915")
    this:EnablePlayerInputByQuest(true)
    this:CreateQuestNpc_MaleCond(arg1, npcs.Npc1025.id, npcs.Npc1026.id, 0, 0)
    this:GetQuestNpcActor(npcs.Npc1025.alias, 15009):DoFreeStyle(1342, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1026.alias, 15009):DoFreeStyle(1342, true, nil, true, true, false, false)
    if actorUtils.IsMalePlayer() then
        this:GetQuestNpcActor(npcs.Npc1025.alias, 15009):SetPlayerNpcEnergyType(2)
    else
        this:GetQuestNpcActor(npcs.Npc1026.alias, 15009):SetPlayerNpcEnergyType(2)
    end

    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Quest15009:OnSubFinish1500915(arg1)
    print("OnSubFinish1500915")
    this:NpcDestroyWithDither(3, npcs.Npc1025.alias)
    this:NpcDestroyWithDither(3, npcs.Npc1026.alias)
    this:TransmitPlayerByQuestId(1500915, 3, nil, nil, nil)
end

function Quest15009:OnSubFailed1500915(arg1)
    print("OnSubFailed1500915")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest15009:OnSubStart1500916(arg1)
    print("OnSubStart1500916")
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
    globalActor:PlayAudioState("StateGroup_specialArea", "State_v50_Smr_MaLaNi_HuGuangArea")
end

function Quest15009:OnSubFinish1500916(arg1)
    print("OnSubFinish1500916")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        this:TransmitPlayerToArcLight(3, points.Q15009mlnXH02.pos, points.Q15009mlnXH02.rot, 1, 1, 0.5, 1, 0.5, nil)
        globalActor:PlayAudioState("StateGroup_specialArea", "None")
    end, nil, nil, 0, false, true)
end

function Quest15009:OnSubFailed1500916(arg1)
    print("OnSubFailed1500916")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
    globalActor:PlayAudioState("StateGroup_specialArea", "None")
end

function Quest15009:OnSubStart1500903(arg1)
    print("OnSubStart1500903")
    this:EnablePlayerInputByQuest(true)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:CreateQuestNpc_MaleCond(arg1, npcs.Npc1025.id, npcs.Npc1026.id, 0, 0)
    this:GetQuestNpcActor(npcs.Npc1025.alias, 15009):DoFreeStyle(1342, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1026.alias, 15009):DoFreeStyle(1342, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1500903Trigger", "Actor/Gadget/Q1500903Trigger", 70900002, 0, points._Q1500903TriggerPoint_.pos, points._Q1500903TriggerPoint_.rot, true, false, 3)
    if actorUtils.IsMalePlayer() then
        this:GetQuestNpcActor(npcs.Npc1025.alias, 15009):SetPlayerNpcEnergyType(2)
    else
        this:GetQuestNpcActor(npcs.Npc1026.alias, 15009):SetPlayerNpcEnergyType(2)
    end

    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Quest15009:OnSubFinish1500903(arg1)
    print("OnSubFinish1500903")
    this:NpcDestroyWithDither(3, npcs.Npc1025.alias)
    this:NpcDestroyWithDither(3, npcs.Npc1026.alias)
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        this:TransmitPlayerWithDialogTextByQuestId(1500903, 3, datas.DialogIdsData_1, 1, nil, nil, nil)
    end, nil, nil, 0, false, true)

    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
    actorUtils.BanUIByQuest(2, false, 15009)
    actorUtils.BanUIByQuest(24, false, 15009)
end

function Quest15009:OnSubFailed1500903(arg1)
    print("OnSubFailed1500903")
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest15009:OnSubStart1500904(arg1)
    print("OnSubStart1500904")
    actorMgr:CreateActorWithPos("Q1500904Trigger", "Actor/Gadget/Q1500904Trigger", 70900002, 0, points._Q1500904TriggerPoint_.pos, points._Q1500904TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest15009:OnSubFinish1500904(arg1)
    print("OnSubFinish1500904")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest15009:OnSubStart1500902(arg1)
    print("OnSubStart1500902")
end

function Quest15009:OnSubFinish1500902(arg1)
    print("OnSubFinish1500902")
end

function Quest15009:OnSubStart1500908(arg1)
    print("OnSubStart1500908")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500908, 0, 10, 1, npcs.Npc1087.id)
    if actorMgr:GetActor("15009"):GetQuestVar(1500908, 0) == 0 then
        this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14228.alias, 15009):DoFreeStyle(1090, true, nil, true, true, false, true)
    end
end

function Quest15009:OnSubFinish1500908(arg1)
    print("OnSubFinish1500908")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
    this:NatsaurusVehicleOff()
end

function Quest15009:OnSubStart1500905(arg1)
    print("OnSubStart1500905")
    actorMgr:CreateActorWithPos("Q1500905TriggerOut", "Actor/Gadget/Q1500905TriggerOut", 70900002, 0, points._Q1500905TriggerOutPoint_.pos, points._Q1500905TriggerOutPoint_.rot, true, false, 3)
    globalActor:PlayAudioState("StateGroup_specialQuest", "State_v50_Quest_MaLaNiChongLang")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_on")
end

function Quest15009:OnSubFinish1500905(arg1)
    print("OnSubFinish1500905")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        this:TransmitPlayerWithDialogTextByQuestId(1500905, 3, datas.DialogIdsData_1, 1, nil, nil, nil)
    end, nil, nil, 0, false, true)

    this:ActorDestroy("Q1500905TriggerOut")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
end

function Quest15009:OnSubFailed1500905(arg1)
    print("OnSubFailed1500905")
    this:TransmitPlayerByQuestId(1500905, 6, nil, nil, nil)
    this:ActorDestroy("Q1500905TriggerOut")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
end

function Quest15009:OnSubStart1500909(arg1)
    print("OnSubStart1500909")
    actorMgr:CreateActorWithPos("Q1500909Trigger", "Actor/Gadget/Q1500909Trigger", 70900002, 0, points._Q1500909TriggerPoint_.pos, points._Q1500909TriggerPoint_.rot, true, false, 3)
end

function Quest15009:OnSubFinish1500909(arg1)
    print("OnSubFinish1500909")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
end

function Quest15009:OnSubStart1500906(arg1)
    print("OnSubStart1500906")
    this:CreateQuestNpc(arg1, npcs.Npc14318.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14227.alias, 15009):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 15009):DoFreeStyle(1220, true, nil, true, true, false, false)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
end

function Quest15009:OnSubFinish1500906(arg1)
    print("OnSubFinish1500906")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
end

function Quest15009:OnSubStart1500918(arg1)
    print("OnSubStart1500918")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 15009):DoFreeStyle(1342, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 15009):SetPlayerNpcEnergyType(2)
    end)
end

function Quest15009:OnSubFinish1500918(arg1)
    print("OnSubFinish1500918")
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
end

function Quest15009:OnSubStart1500919(arg1)
    print("OnSubStart1500919")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 15009):DoFreeStyle(1342, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 15009):SetPlayerNpcEnergyType(2)
    end)
end

function Quest15009:OnSubFinish1500919(arg1)
    print("OnSubFinish1500919")
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
end

function Quest15009:OnSubStart1500917(arg1)
    print("OnSubStart1500917")
end

function Quest15009:OnSubFinish1500917(arg1)
    print("OnSubFinish1500917")
    this:EnablePlayerInputByQuest(false)
    this:NatsaurusVehicleOff()
end

function Quest15009:OnSubStart1500920(arg1)
    print("OnSubStart1500920")
end

function Quest15009:OnSubFinish1500920(arg1)
    print("OnSubFinish1500920")
    this:EnablePlayerInputByQuest(false)
    this:NatsaurusVehicleOff()
end

return Quest15009
