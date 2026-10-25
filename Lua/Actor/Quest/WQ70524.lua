require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70524 = class("Quest70524", QuestActorProxy)
Quest70524.defaultAlias = "Quest70524"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70524:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70524:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052401"] = self.OnSubStart7052401}
end

function Quest70524:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052401"] = self.OnSubFinish7052401}
end

function Quest70524:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70524:Start()
    print("Start")
end

function Quest70524:OnDestroy()
    print("OnDestroy")
end

function Quest70524:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70524:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70524:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70524:OnSubStart7052401(arg1)
    print("OnSubStart7052401")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q70524Trigger", "Actor/Gadget/Q70524Trigger", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066515_N1005").pos, sceneData:GetDummyPoint(1076, "Q7066515_N1005").rot, true, false, 1076)
        this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1019Data.alias):SitOnChair(0)
        this:GetQuestNpcActor(npcs.Npc10011Data.alias):SitOnChair(0)
        this:GetQuestNpcActor(npcs.Npc1019Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc10011Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest70524:OnSubFinish7052401(arg1)
    print("OnSubFinish7052401")
    this:GetQuestNpcActor(npcs.Npc1019Data.alias):StandFromChairEx(0)
    this:GetQuestNpcActor(npcs.Npc10011Data.alias):StandFromChairEx(0)
    this:GetQuestNpcActor(npcs.Npc1019Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc10011Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10011Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10012Data.alias, 3)
    actorMgr:DestroyEntityActor("Q70524Trigger", 1076, false)
end

return Quest70524
