require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72679 = class("Quest72679", QuestActorProxy)
Quest72679.defaultAlias = "Quest72679"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72679:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72679:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7267902"] = self.OnSubStart7267902, ["7267901"] = self.OnSubStart7267901}
end

function Quest72679:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7267902"] = self.OnSubFinish7267902, ["7267901"] = self.OnSubFinish7267901}
end

function Quest72679:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72679:Start()
    print("Start")
end

function Quest72679:OnDestroy()
    print("OnDestroy")
end

function Quest72679:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72679:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72679:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
end

function Quest72679:OnSubStart7267902(arg1)
    print("OnSubStart7267902")
    self:CreateQuestNpc(arg1, npcs.Npc3159Data.id, 1)
end

function Quest72679:OnSubFinish7267902(arg1)
    print("OnSubFinish7267902")
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
end

function Quest72679:OnSubStart7267901(arg1)
    print("OnSubStart7267901")
end

function Quest72679:OnSubFinish7267901(arg1)
    print("OnSubFinish7267901")
end

return Quest72679
