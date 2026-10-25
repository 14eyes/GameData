require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71069 = class("Quest71069", QuestActorProxy)
Quest71069.defaultAlias = "Quest71069"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71069:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71069:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7106901"] = self.OnSubStart7106901}
end

function Quest71069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7106901"] = self.OnSubFinish7106901}
end

function Quest71069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71069:Start()
    print("Start")
end

function Quest71069:OnDestroy()
    print("OnDestroy")
end

function Quest71069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71069:OnSubStart7106901(arg1)
    print("OnSubStart7106901")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71069:OnSubFinish7106901(arg1)
    print("OnSubFinish7106901")
    self:SafeDestroyQuestNpc(npcs.Npc20006Data.alias, 3)
end

return Quest71069
