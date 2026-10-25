require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72250 = class("Quest72250", QuestActorProxy)
Quest72250.defaultAlias = "Quest72250"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72250:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72250:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225001"] = self.OnSubStart7225001}
end

function Quest72250:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225001"] = self.OnSubFinish7225001}
end

function Quest72250:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72250:Start()
    print("Start")
end

function Quest72250:OnDestroy()
    print("OnDestroy")
end

function Quest72250:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72250:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72250:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72250:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72250:OnSubStart7225001(arg1)
    print("OnSubStart7225001")
    self:NpcCreate(arg1, npcs.NPC20358Data.id, 1)
end

function Quest72250:OnSubFinish7225001(arg1)
    print("OnSubFinish7225001")
    self:SafeDestroyQuestNpc(npcs.NPC20358Data.alias, 5)
end

return Quest72250
