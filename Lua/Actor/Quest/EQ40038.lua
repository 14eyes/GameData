require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40038 = class("Quest40038", QuestActorProxy)
Quest40038.defaultAlias = "Quest40038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest40038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40038:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4003801"] = self.OnSubStart4003801}
end

function Quest40038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4003801"] = self.OnSubFinish4003801}
end

function Quest40038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40038:Start()
    print("Start")
end

function Quest40038:OnDestroy()
    print("OnDestroy")
end

function Quest40038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
end

function Quest40038:OnSubStart4003801(arg1)
    print("OnSubStart4003801")
    actorMgr:CreateActorWithPos("Q40038Trigger", "Actor/Gadget/Q40038Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003507_N10232_310701347").pos, sceneData:GetDummyPoint(3, "Q4003507_N10232_310701347").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(0)
end

function Quest40038:OnSubFinish4003801(arg1)
    print("OnSubFinish4003801")
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):StandFromChair(0)
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
end

return Quest40038
