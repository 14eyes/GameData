require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77102 = class("Quest77102", QuestActorProxy)
Quest77102.defaultAlias = "Quest77102"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77102:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710201"] = self.OnSubStart7710201,
        ["7710229"] = self.OnSubStart7710229,
        ["7710230"] = self.OnSubStart7710230,
        ["7710242"] = self.OnSubStart7710242,
        ["7710244"] = self.OnSubStart7710244,
        ["7710202"] = self.OnSubStart7710202,
        ["7710203"] = self.OnSubStart7710203,
        ["7710204"] = self.OnSubStart7710204,
        ["7710205"] = self.OnSubStart7710205,
        ["7710235"] = self.OnSubStart7710235,
        ["7710226"] = self.OnSubStart7710226,
        ["7710243"] = self.OnSubStart7710243,
        ["7710207"] = self.OnSubStart7710207,
        ["7710208"] = self.OnSubStart7710208,
        ["7710209"] = self.OnSubStart7710209,
        ["7710206"] = self.OnSubStart7710206,
        ["7710210"] = self.OnSubStart7710210,
        ["7710211"] = self.OnSubStart7710211,
        ["7710213"] = self.OnSubStart7710213,
        ["7710214"] = self.OnSubStart7710214,
        ["7710227"] = self.OnSubStart7710227,
        ["7710215"] = self.OnSubStart7710215,
        ["7710233"] = self.OnSubStart7710233,
        ["7710216"] = self.OnSubStart7710216,
        ["7710217"] = self.OnSubStart7710217,
        ["7710219"] = self.OnSubStart7710219,
        ["7710220"] = self.OnSubStart7710220,
        ["7710238"] = self.OnSubStart7710238,
        ["7710241"] = self.OnSubStart7710241,
        ["7710221"] = self.OnSubStart7710221,
        ["7710222"] = self.OnSubStart7710222,
        ["7710240"] = self.OnSubStart7710240,
        ["7710212"] = self.OnSubStart7710212,
        ["7710218"] = self.OnSubStart7710218,
        ["7710223"] = self.OnSubStart7710223,
        ["7710224"] = self.OnSubStart7710224,
        ["7710225"] = self.OnSubStart7710225,
        ["7710228"] = self.OnSubStart7710228,
        ["7710231"] = self.OnSubStart7710231,
        ["7710232"] = self.OnSubStart7710232,
        ["7710234"] = self.OnSubStart7710234,
        ["7710236"] = self.OnSubStart7710236,
        ["7710237"] = self.OnSubStart7710237,
        ["7710239"] = self.OnSubStart7710239
    }
end

function Quest77102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710201"] = self.OnSubFinish7710201,
        ["7710229"] = self.OnSubFinish7710229,
        ["7710230"] = self.OnSubFinish7710230,
        ["7710242"] = self.OnSubFinish7710242,
        ["7710244"] = self.OnSubFinish7710244,
        ["7710202"] = self.OnSubFinish7710202,
        ["7710203"] = self.OnSubFinish7710203,
        ["7710204"] = self.OnSubFinish7710204,
        ["7710205"] = self.OnSubFinish7710205,
        ["7710235"] = self.OnSubFinish7710235,
        ["7710226"] = self.OnSubFinish7710226,
        ["7710243"] = self.OnSubFinish7710243,
        ["7710207"] = self.OnSubFinish7710207,
        ["7710208"] = self.OnSubFinish7710208,
        ["7710209"] = self.OnSubFinish7710209,
        ["7710206"] = self.OnSubFinish7710206,
        ["7710210"] = self.OnSubFinish7710210,
        ["7710211"] = self.OnSubFinish7710211,
        ["7710213"] = self.OnSubFinish7710213,
        ["7710214"] = self.OnSubFinish7710214,
        ["7710227"] = self.OnSubFinish7710227,
        ["7710215"] = self.OnSubFinish7710215,
        ["7710233"] = self.OnSubFinish7710233,
        ["7710216"] = self.OnSubFinish7710216,
        ["7710217"] = self.OnSubFinish7710217,
        ["7710219"] = self.OnSubFinish7710219,
        ["7710220"] = self.OnSubFinish7710220,
        ["7710238"] = self.OnSubFinish7710238,
        ["7710241"] = self.OnSubFinish7710241,
        ["7710221"] = self.OnSubFinish7710221,
        ["7710222"] = self.OnSubFinish7710222,
        ["7710240"] = self.OnSubFinish7710240,
        ["7710212"] = self.OnSubFinish7710212,
        ["7710218"] = self.OnSubFinish7710218,
        ["7710223"] = self.OnSubFinish7710223,
        ["7710224"] = self.OnSubFinish7710224,
        ["7710225"] = self.OnSubFinish7710225,
        ["7710228"] = self.OnSubFinish7710228,
        ["7710231"] = self.OnSubFinish7710231,
        ["7710232"] = self.OnSubFinish7710232,
        ["7710234"] = self.OnSubFinish7710234,
        ["7710236"] = self.OnSubFinish7710236,
        ["7710237"] = self.OnSubFinish7710237,
        ["7710239"] = self.OnSubFinish7710239
    }
end

function Quest77102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7710229"] = self.OnSubFailed7710229,
        ["7710244"] = self.OnSubFailed7710244,
        ["7710202"] = self.OnSubFailed7710202,
        ["7710203"] = self.OnSubFailed7710203,
        ["7710243"] = self.OnSubFailed7710243,
        ["7710207"] = self.OnSubFailed7710207,
        ["7710209"] = self.OnSubFailed7710209,
        ["7710206"] = self.OnSubFailed7710206,
        ["7710210"] = self.OnSubFailed7710210,
        ["7710211"] = self.OnSubFailed7710211,
        ["7710213"] = self.OnSubFailed7710213,
        ["7710214"] = self.OnSubFailed7710214,
        ["7710217"] = self.OnSubFailed7710217,
        ["7710219"] = self.OnSubFailed7710219,
        ["7710220"] = self.OnSubFailed7710220,
        ["7710238"] = self.OnSubFailed7710238,
        ["7710241"] = self.OnSubFailed7710241,
        ["7710221"] = self.OnSubFailed7710221
    }
end

function Quest77102:Start()
    print("Start")
end

function Quest77102:OnDestroy()
    print("OnDestroy")
end

function Quest77102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77102:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7710230N22308Trigger")
    this:DestroyNpcTrigger("Q7710228N22308Trigger")
    this:DestroyNpcTrigger("Q7710228N12404Trigger")
    this:DestroyNpcTrigger("Q7710227N22308Trigger")
    this:DestroyNpcTrigger("Q7710226N22308Trigger")
    this:DestroyNpcTrigger("Q7710225N22308Trigger")
    this:DestroyNpcTrigger("Q7710224N12404Trigger")
    this:DestroyNpcTrigger("Q7710223N12404Trigger")
    this:DestroyNpcTrigger("Q7710222N22308Trigger")
    this:DestroyNpcTrigger("Q7710216N22308Trigger")
    this:DestroyNpcTrigger("Q7710213N12404Trigger")
    this:DestroyNpcTrigger("Q7710212N12404Trigger")
    this:DestroyNpcTrigger("Q7710208N22308Trigger")
    this:DestroyNpcTrigger("Q7710204N22308Trigger")
    this:DestroyNpcTrigger("Q7710233N22308Trigger")
    this:DestroyNpcTrigger("Q7710234N22308Trigger")
    this:DestroyNpcTrigger("Q7710235N22308Trigger")
    this:DestroyNpcTrigger("Q7710236N12404Trigger")
    this:ActorDestroy("Q7710232Trigger", 0)
    this:ActorDestroy("Q7710224Trigger", 0)
    this:ActorDestroy("Q7710217Trigger", 0)
    this:ActorDestroy("Q7710216Trigger", 0)
    this:ActorDestroy("Q7710214Trigger", 0)
    this:ActorDestroy("Q7710209Trigger", 0)
    this:ActorDestroy("Q7710206Trigger", 0)
    this:ActorDestroy("Q7710202Trigger", 0)
    this:ActorDestroy("Q7710201Trigger", 0)
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22524.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22525.alias, 3)
    this:RecycleAllRes()
end

function Quest77102:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7710232Trigger", 0)
    this:ActorDestroy("Q7710206Trigger", 77102)
    this:ActorDestroy("Q7710224Trigger", 0)
    this:ActorDestroy("Q7710217Trigger", 0)
    this:ActorDestroy("Q7710216Trigger", 0)
    this:ActorDestroy("Q7710214Trigger", 0)
    this:ActorDestroy("Q7710209Trigger", 0)
    this:ActorDestroy("Q7710209Trigger_HidePaimon", 77102)
    this:ActorDestroy("Q7710202Trigger", 0)
    this:ActorDestroy("Q7710201Trigger", 0)
    this:ActorDestroy("Q7710235Trigger", 77102)
    this:ActorDestroy("Q7710242Trigger", 77102)
end

function Quest77102:ActorDestroy(arg1, arg2)
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

function Quest77102:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77102:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77102:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77102:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77102:OnSubStart7710201(arg1)
    print("OnSubStart7710201")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 15, 7710201)
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710201Trigger", "Actor/Gadget/Q7710201Trigger", 70900002, 0, points._Q7710201TriggerPoint_.pos, points._Q7710201TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77102:OnSubFinish7710201(arg1)
    print("OnSubFinish7710201")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77102:OnSubStart7710229(arg1)
    print("OnSubStart7710229")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22308.alias, 77102):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest77102:OnSubFinish7710229(arg1)
    print("OnSubFinish7710229")
end

function Quest77102:OnSubFailed7710229(arg1)
    print("OnSubFailed7710229")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710230(arg1)
    print("OnSubStart7710230")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710230, 0, 50, 0, npcs.Npc22308.id)
end

function Quest77102:OnSubFinish7710230(arg1)
    print("OnSubFinish7710230")
end

function Quest77102:OnSubStart7710242(arg1)
    print("OnSubStart7710242")
    actorMgr:CreateActorWithPos("Q7710242Trigger", "Actor/Gadget/Q7710242Trigger", 70900002, 0, points._Q7710242TriggerPoint_.pos, points._Q7710242TriggerPoint_.rot, true, false, 3, nil, 0, 77102)
end

function Quest77102:OnSubFinish7710242(arg1)
    print("OnSubFinish7710242")
    this:DeployStoryByQuest(147710201)
end

function Quest77102:OnSubStart7710244(arg1)
    print("OnSubStart7710244")
end

function Quest77102:OnSubFinish7710244(arg1)
    print("OnSubFinish7710244")
end

function Quest77102:OnSubFailed7710244(arg1)
    print("OnSubFailed7710244")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710202(arg1)
    print("OnSubStart7710202")
    actorMgr:CreateActorWithPos("Q7710202Trigger", "Actor/Gadget/Q7710202Trigger", 70900002, 0, points._Q7710202TriggerPoint_.pos, points._Q7710202TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77102:OnSubFinish7710202(arg1)
    print("OnSubFinish7710202")
end

function Quest77102:OnSubFailed7710202(arg1)
    print("OnSubFailed7710202")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710203(arg1)
    print("OnSubStart7710203")
end

function Quest77102:OnSubFinish7710203(arg1)
    print("OnSubFinish7710203")
    this:CancelStoryByQuest(147710201)
end

function Quest77102:OnSubFailed7710203(arg1)
    print("OnSubFailed7710203")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710204(arg1)
    print("OnSubStart7710204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710204, 0, 15, 0, npcs.Npc22308.id)
end

function Quest77102:OnSubFinish7710204(arg1)
    print("OnSubFinish7710204")
end

function Quest77102:OnSubStart7710205(arg1)
    print("OnSubStart7710205")
    this:DeployStoryByQuest(147710202)
end

function Quest77102:OnSubFinish7710205(arg1)
    print("OnSubFinish7710205")
end

function Quest77102:OnSubStart7710235(arg1)
    print("OnSubStart7710235")
    this:CreateQuestNpc(arg1, npcs.Npc12404.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710235Trigger", "Actor/Gadget/Q7710235Trigger", 70900002, 0, points._Q7710235TriggerPoint_.pos, points._Q7710235TriggerPoint_.rot, true, false, 3, nil, 0, 77102)
end

function Quest77102:OnSubFinish7710235(arg1)
    print("OnSubFinish7710235")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc12404.alias)
    this:CancelStoryByQuest(147710202)
end

function Quest77102:OnSubStart7710226(arg1)
    print("OnSubStart7710226")
    actorMgr:CreateActorWithPos("Q7710206Trigger", "Actor/Gadget/Q7710206Trigger", 70900002, 0, points._Q7710206TriggerPoint_.pos, points._Q7710206TriggerPoint_.rot, true, false, 3, nil, 0, 77102)
    this:DeployStoryByQuest(147710203)
end

function Quest77102:OnSubFinish7710226(arg1)
    print("OnSubFinish7710226")
end

function Quest77102:OnSubStart7710243(arg1)
    print("OnSubStart7710243")
end

function Quest77102:OnSubFinish7710243(arg1)
    print("OnSubFinish7710243")
end

function Quest77102:OnSubFailed7710243(arg1)
    print("OnSubFailed7710243")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710207(arg1)
    print("OnSubStart7710207")
end

function Quest77102:OnSubFinish7710207(arg1)
    print("OnSubFinish7710207")
    this:CancelStoryByQuest(147710203)
end

function Quest77102:OnSubFailed7710207(arg1)
    print("OnSubFailed7710207")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710208(arg1)
    print("OnSubStart7710208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710208, 0, 15, 0, npcs.Npc22308.id)
end

function Quest77102:OnSubFinish7710208(arg1)
    print("OnSubFinish7710208")
end

function Quest77102:OnSubStart7710209(arg1)
    print("OnSubStart7710209")
    actorMgr:CreateActorWithPos("Q7710209Trigger", "Actor/Gadget/Q7710209Trigger", 70900002, 0, points._Q7710209TriggerPoint_.pos, points._Q7710209TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(117710204)
    actorMgr:CreateActorWithPos("Q7710209Trigger_HidePaimon", "Actor/Gadget/Q7710209Trigger_HidePaimon", 70900002, 0, points._Q7710209Trigger_HidePaimonPoint_.pos, points._Q7710209Trigger_HidePaimonPoint_.rot, true, false, 3, nil, 0, 77102)
end

function Quest77102:OnSubFinish7710209(arg1)
    print("OnSubFinish7710209")
end

function Quest77102:OnSubFailed7710209(arg1)
    print("OnSubFailed7710209")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubStart7710206(arg1)
    print("OnSubStart7710206")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 0, 7710206)
    this:RequestInteraction(npcs.Npc12404.alias, "", true)
end

function Quest77102:OnSubFinish7710206(arg1)
    print("OnSubFinish7710206")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77102:OnSubFailed7710206(arg1)
    print("OnSubFailed7710206")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubStart7710210(arg1)
    print("OnSubStart7710210")
end

function Quest77102:OnSubFinish7710210(arg1)
    print("OnSubFinish7710210")
end

function Quest77102:OnSubFailed7710210(arg1)
    print("OnSubFailed7710210")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubStart7710211(arg1)
    print("OnSubStart7710211")
end

function Quest77102:OnSubFinish7710211(arg1)
    print("OnSubFinish7710211")
end

function Quest77102:OnSubFailed7710211(arg1)
    print("OnSubFailed7710211")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubStart7710213(arg1)
    print("OnSubStart7710213")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 15, 7710213)
end

function Quest77102:OnSubFinish7710213(arg1)
    print("OnSubFinish7710213")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77102:OnSubFailed7710213(arg1)
    print("OnSubFailed7710213")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubStart7710214(arg1)
    print("OnSubStart7710214")
    actorMgr:CreateActorWithPos("Q7710214Trigger", "Actor/Gadget/Q7710214Trigger", 70900002, 0, points._Q7710214TriggerPoint_.pos, points._Q7710214TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    if false then
    end
end

function Quest77102:OnSubFinish7710214(arg1)
    print("OnSubFinish7710214")
    this:CancelStoryByQuest(117710204)
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubFailed7710214(arg1)
    print("OnSubFailed7710214")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage(datas.HandWriteTable)
end

function Quest77102:OnSubStart7710227(arg1)
    print("OnSubStart7710227")
    this:NpcCreateWithNpcTrigger(npcs.Npc22308.id, 0, 13.5, 7710227)
end

function Quest77102:OnSubFinish7710227(arg1)
    print("OnSubFinish7710227")
end

function Quest77102:OnSubStart7710215(arg1)
    print("OnSubStart7710215")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
end

function Quest77102:OnSubFinish7710215(arg1)
    print("OnSubFinish7710215")
end

function Quest77102:OnSubStart7710233(arg1)
    print("OnSubStart7710233")
    this:NpcCreateWithNpcTrigger(npcs.Npc22308.id, 0, 20, 7710233)
end

function Quest77102:OnSubFinish7710233(arg1)
    print("OnSubFinish7710233")
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
end

function Quest77102:OnSubStart7710216(arg1)
    print("OnSubStart7710216")
    actorMgr:CreateActorWithPos("Q7710216Trigger", "Actor/Gadget/Q7710216Trigger", 70900002, 0, points._Q7710216TriggerPoint_.pos, points._Q7710216TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147710205)
end

function Quest77102:OnSubFinish7710216(arg1)
    print("OnSubFinish7710216")
end

function Quest77102:OnSubStart7710217(arg1)
    print("OnSubStart7710217")
    actorMgr:CreateActorWithPos("Q7710217Trigger", "Actor/Gadget/Q7710217Trigger", 70900002, 0, points._Q7710217TriggerPoint_.pos, points._Q7710217TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    if this:GetQuestGlobalVar(7710202) == 1 then
        this:DeployStoryByQuest(147710207)
        this:CancelStoryByQuest(147710205)
    end
end

function Quest77102:OnSubFinish7710217(arg1)
    print("OnSubFinish7710217")
end

function Quest77102:OnSubFailed7710217(arg1)
    print("OnSubFailed7710217")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710219(arg1)
    print("OnSubStart7710219")
end

function Quest77102:OnSubFinish7710219(arg1)
    print("OnSubFinish7710219")
    this:CancelStoryByQuest(147710205)
    this:CancelStoryByQuest(147710207)
end

function Quest77102:OnSubFailed7710219(arg1)
    print("OnSubFailed7710219")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710220(arg1)
    print("OnSubStart7710220")
end

function Quest77102:OnSubFinish7710220(arg1)
    print("OnSubFinish7710220")
end

function Quest77102:OnSubFailed7710220(arg1)
    print("OnSubFailed7710220")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710238(arg1)
    print("OnSubStart7710238")
end

function Quest77102:OnSubFinish7710238(arg1)
    print("OnSubFinish7710238")
end

function Quest77102:OnSubFailed7710238(arg1)
    print("OnSubFailed7710238")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710241(arg1)
    print("OnSubStart7710241")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 30, 7710241)
end

function Quest77102:OnSubFinish7710241(arg1)
    print("OnSubFinish7710241")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77102:OnSubFailed7710241(arg1)
    print("OnSubFailed7710241")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710221(arg1)
    print("OnSubStart7710221")
end

function Quest77102:OnSubFinish7710221(arg1)
    print("OnSubFinish7710221")
end

function Quest77102:OnSubFailed7710221(arg1)
    print("OnSubFailed7710221")
    this:RecycleAllRes()
end

function Quest77102:OnSubStart7710222(arg1)
    print("OnSubStart7710222")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710222, 0, 20, 0, npcs.Npc22722.id)
end

function Quest77102:OnSubFinish7710222(arg1)
    print("OnSubFinish7710222")
end

function Quest77102:OnSubStart7710240(arg1)
    print("OnSubStart7710240")
    this:PlayCutsceneIndex(7710240, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7710240})
    end, nil, nil, false)
end

function Quest77102:OnSubFinish7710240(arg1)
    print("OnSubFinish7710240")
    this:SetNavigationByMainId(77111, true)
end

function Quest77102:OnSubStart7710212(arg1)
    print("OnSubStart7710212")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 20, 7710212)
    actorUtils.FinishQuestID(false, 7710212)
end

function Quest77102:OnSubFinish7710212(arg1)
    print("OnSubFinish7710212")
end

function Quest77102:OnSubStart7710218(arg1)
    print("OnSubStart7710218")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
end

function Quest77102:OnSubFinish7710218(arg1)
    print("OnSubFinish7710218")
end

function Quest77102:OnSubStart7710223(arg1)
    print("OnSubStart7710223")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 15, 7710223)
end

function Quest77102:OnSubFinish7710223(arg1)
    print("OnSubFinish7710223")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77102:OnSubStart7710224(arg1)
    print("OnSubStart7710224")
end

function Quest77102:OnSubFinish7710224(arg1)
    print("OnSubFinish7710224")
end

function Quest77102:OnSubStart7710225(arg1)
    print("OnSubStart7710225")
    this:NpcCreateWithNpcTrigger(npcs.Npc22308.id, 0, 15, 7710225)
    this:CreateQuestNpc(arg1, npcs.Npc22524.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22525.id, 0, false, 0)
end

function Quest77102:OnSubFinish7710225(arg1)
    print("OnSubFinish7710225")
end

function Quest77102:OnSubStart7710228(arg1)
    print("OnSubStart7710228")
end

function Quest77102:OnSubFinish7710228(arg1)
    print("OnSubFinish7710228")
end

function Quest77102:OnSubStart7710231(arg1)
    print("OnSubStart7710231")
end

function Quest77102:OnSubFinish7710231(arg1)
    print("OnSubFinish7710231")
end

function Quest77102:OnSubStart7710232(arg1)
    print("OnSubStart7710232")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710232Trigger", "Actor/Gadget/Q7710232Trigger", 70900002, 0, points._Q7710232TriggerPoint_.pos, points._Q7710232TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77102:OnSubFinish7710232(arg1)
    print("OnSubFinish7710232")
end

function Quest77102:OnSubStart7710234(arg1)
    print("OnSubStart7710234")
end

function Quest77102:OnSubFinish7710234(arg1)
    print("OnSubFinish7710234")
end

function Quest77102:OnSubStart7710236(arg1)
    print("OnSubStart7710236")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 7, 7710236)
end

function Quest77102:OnSubFinish7710236(arg1)
    print("OnSubFinish7710236")
    this:NpcDestroyWithDither(3, npcs.Npc22308.alias)
end

function Quest77102:OnSubStart7710237(arg1)
    print("OnSubStart7710237")
end

function Quest77102:OnSubFinish7710237(arg1)
    print("OnSubFinish7710237")
end

function Quest77102:OnSubStart7710239(arg1)
    print("OnSubStart7710239")
end

function Quest77102:OnSubFinish7710239(arg1)
    print("OnSubFinish7710239")
end

return Quest77102
