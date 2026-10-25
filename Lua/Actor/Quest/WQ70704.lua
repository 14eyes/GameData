require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70704 = class("Quest70704", QuestActorProxy)
Quest70704.defaultAlias = "Quest70704"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70704:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70704:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070401"] = self.OnSubStart7070401, ["7070402"] = self.OnSubStart7070402}
end

function Quest70704:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070401"] = self.OnSubFinish7070401, ["7070402"] = self.OnSubFinish7070402}
end

function Quest70704:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070401"] = self.OnSubFailed7070401, ["7070402"] = self.OnSubFailed7070402}
end

function Quest70704:Start()
    print("Start")
end

function Quest70704:OnDestroy()
    print("OnDestroy")
end

function Quest70704:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70704:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70704:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70704:OnSubStart7070401(arg1)
    print("OnSubStart7070401")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70704:OnSubFinish7070401(arg1)
    print("OnSubFinish7070401")
end

function Quest70704:OnSubFailed7070401(arg1)
    print("OnSubFailed7070401")
end

function Quest70704:OnSubStart7070402(arg1)
    print("OnSubStart7070402")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70704:OnSubFinish7070402(arg1)
    print("OnSubFinish7070402")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70704:OnSubFailed7070402(arg1)
    print("OnSubFailed7070402")
end

return Quest70704
