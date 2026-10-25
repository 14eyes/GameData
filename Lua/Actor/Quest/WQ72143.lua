require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72143 = class("Quest72143", QuestActorProxy)
Quest72143.defaultAlias = "Quest72143"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72143:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72143:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7214301"] = self.OnSubStart7214301, ["7214302"] = self.OnSubStart7214302}
end

function Quest72143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7214301"] = self.OnSubFinish7214301, ["7214302"] = self.OnSubFinish7214302}
end

function Quest72143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7214301"] = self.OnSubFailed7214301, ["7214302"] = self.OnSubFailed7214302}
end

function Quest72143:Start()
    print("Start")
end

function Quest72143:OnDestroy()
    print("OnDestroy")
end

function Quest72143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72143:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
end

function Quest72143:CreateNPC()
    print("CreateNPC")
    self:CreateQuestNpcById(7214302, npcs.Npc3193Data.id, 1)
end

function Quest72143:OnSubStart7214301(arg1)
    print("OnSubStart7214301")
    self:CreateQuestNpc(arg1, npcs.Npc3193Data.id, 1)
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
end

function Quest72143:OnSubFinish7214301(arg1)
    print("OnSubFinish7214301")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72143:OnSubFailed7214301(arg1)
    print("OnSubFailed7214301")
end

function Quest72143:OnSubStart7214302(arg1)
    print("OnSubStart7214302")
    self:CallDelay(1, self.CreateNPC)
end

function Quest72143:OnSubFinish7214302(arg1)
    print("OnSubFinish7214302")
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
end

function Quest72143:OnSubFailed7214302(arg1)
    print("OnSubFailed7214302")
end

return Quest72143
