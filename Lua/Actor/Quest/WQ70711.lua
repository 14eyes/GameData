require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70711 = class("Quest70711", QuestActorProxy)
Quest70711.defaultAlias = "Quest70711"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70711:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70711:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7071101"] = self.OnSubStart7071101, ["7071102"] = self.OnSubStart7071102}
end

function Quest70711:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7071101"] = self.OnSubFinish7071101, ["7071102"] = self.OnSubFinish7071102}
end

function Quest70711:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7071101"] = self.OnSubFailed7071101, ["7071102"] = self.OnSubFailed7071102}
end

function Quest70711:Start()
    print("Start")
end

function Quest70711:OnDestroy()
    print("OnDestroy")
end

function Quest70711:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70711:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70711:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1656", 0, true)
end

function Quest70711:OnSubStart7071101(arg1)
    print("OnSubStart7071101")
    self:NotifyTo("Npc1656", 2, true)
end

function Quest70711:OnSubFinish7071101(arg1)
    print("OnSubFinish7071101")
end

function Quest70711:OnSubFailed7071101(arg1)
    print("OnSubFailed7071101")
end

function Quest70711:OnSubStart7071102(arg1)
    print("OnSubStart7071102")
    self:NotifyTo("Npc1656", 2, true)
end

function Quest70711:OnSubFinish7071102(arg1)
    print("OnSubFinish7071102")
    self:NotifyTo("Npc1656", 0, true)
end

function Quest70711:OnSubFailed7071102(arg1)
    print("OnSubFailed7071102")
end

return Quest70711
