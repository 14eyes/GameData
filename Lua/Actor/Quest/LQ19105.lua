require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19105 = class("Quest19105", QuestActorProxy)
Quest19105.defaultAlias = "Quest19105"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19105:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19105:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1910501"] = self.OnSubStart1910501, ["1910502"] = self.OnSubStart1910502}
end

function Quest19105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1910501"] = self.OnSubFinish1910501, ["1910502"] = self.OnSubFinish1910502}
end

function Quest19105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1910501"] = self.OnSubFailed1910501, ["1910502"] = self.OnSubFailed1910502}
end

function Quest19105:Start()
    print("Start")
end

function Quest19105:OnDestroy()
    print("OnDestroy")
end

function Quest19105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19105:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1539Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1537Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc153901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153701Data.alias, 3)
    self:ActorDestroy("Q1910503Trigger")
    self:ActorDestroy("Q1910502Trigger")
end

function Quest19105:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19105:OnSubStart1910501(arg1)
    print("OnSubStart1910501")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc153701Data.id, 3)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910501)
    actorMgr:CreateActorWithPos("Q1910502Trigger", "Actor/Gadget/Q1910502Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Draff01_02").pos, sceneData:GetDummyPoint(3, "COOP103901Draff01_02").rot, true, false, 3)
end

function Quest19105:OnSubFinish1910501(arg1)
    print("OnSubFinish1910501")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153701Data.alias, 3)
end

function Quest19105:OnSubFailed1910501(arg1)
    print("OnSubFailed1910501")
end

function Quest19105:OnSubStart1910502(arg1)
    print("OnSubStart1910502")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910502)
    actorMgr:CreateActorWithPos("Q1910503Trigger", "Actor/Gadget/Q1910503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Allan01_01").pos, sceneData:GetDummyPoint(3, "COOP103901Allan01_01").rot, true, false, 3)
end

function Quest19105:OnSubFinish1910502(arg1)
    print("OnSubFinish1910502")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153701Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1539Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1537Data.alias, 0, true)
end

function Quest19105:OnSubFailed1910502(arg1)
    print("OnSubFailed1910502")
end

return Quest19105
