require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72136 = class("Quest72136", QuestActorProxy)
Quest72136.defaultAlias = "Quest72136"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72136:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213604"] = self.OnSubStart7213604,
        ["7213605"] = self.OnSubStart7213605,
        ["7213601"] = self.OnSubStart7213601,
        ["7213602"] = self.OnSubStart7213602,
        ["7213603"] = self.OnSubStart7213603
    }
end

function Quest72136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213604"] = self.OnSubFinish7213604,
        ["7213605"] = self.OnSubFinish7213605,
        ["7213601"] = self.OnSubFinish7213601,
        ["7213602"] = self.OnSubFinish7213602,
        ["7213603"] = self.OnSubFinish7213603
    }
end

function Quest72136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213604"] = self.OnSubFailed7213604,
        ["7213605"] = self.OnSubFailed7213605,
        ["7213601"] = self.OnSubFailed7213601,
        ["7213602"] = self.OnSubFailed7213602,
        ["7213603"] = self.OnSubFailed7213603
    }
end

function Quest72136:Start()
    print("Start")
end

function Quest72136:OnDestroy()
    print("OnDestroy")
end

function Quest72136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72136:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72136:OnSubStart7213604(arg1)
    print("OnSubStart7213604")
end

function Quest72136:OnSubFinish7213604(arg1)
    print("OnSubFinish7213604")
end

function Quest72136:OnSubFailed7213604(arg1)
    print("OnSubFailed7213604")
end

function Quest72136:OnSubStart7213605(arg1)
    print("OnSubStart7213605")
    self:FinishQuestID(false, 7213605)
end

function Quest72136:OnSubFinish7213605(arg1)
    print("OnSubFinish7213605")
end

function Quest72136:OnSubFailed7213605(arg1)
    print("OnSubFailed7213605")
end

function Quest72136:OnSubStart7213601(arg1)
    print("OnSubStart7213601")
    self:CreateQuestNpc(arg1, npcs.Npc20275Data.id, 1)
end

function Quest72136:OnSubFinish7213601(arg1)
    print("OnSubFinish7213601")
    self:GetQuestNpcActor(npcs.Npc20275Data.alias):DestroyWithDither(false, 2)
end

function Quest72136:OnSubFailed7213601(arg1)
    print("OnSubFailed7213601")
end

function Quest72136:OnSubStart7213602(arg1)
    print("OnSubStart7213602")
    self:CreateQuestNpc(arg1, npcs.Npc20276Data.id, 1)
end

function Quest72136:OnSubFinish7213602(arg1)
    print("OnSubFinish7213602")
    self:GetQuestNpcActor(npcs.Npc20276Data.alias):DestroyWithDither(false, 2)
end

function Quest72136:OnSubFailed7213602(arg1)
    print("OnSubFailed7213602")
end

function Quest72136:OnSubStart7213603(arg1)
    print("OnSubStart7213603")
    self:CreateQuestNpc(arg1, npcs.Npc20277Data.id, 1)
end

function Quest72136:OnSubFinish7213603(arg1)
    print("OnSubFinish7213603")
    self:GetQuestNpcActor(npcs.Npc20277Data.alias):DestroyWithDither(false, 2)
end

function Quest72136:OnSubFailed7213603(arg1)
    print("OnSubFailed7213603")
    self:GetQuestNpcActor(npcs.Npc20277Data.alias):DestroyWithDither(false, 2)
end

return Quest72136
