require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70705 = class("Quest70705", QuestActorProxy)
Quest70705.defaultAlias = "Quest70705"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70705:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70705:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070501"] = self.OnSubStart7070501, ["7070502"] = self.OnSubStart7070502}
end

function Quest70705:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070501"] = self.OnSubFinish7070501, ["7070502"] = self.OnSubFinish7070502}
end

function Quest70705:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070501"] = self.OnSubFailed7070501, ["7070502"] = self.OnSubFailed7070502}
end

function Quest70705:Start()
    print("Start")
end

function Quest70705:OnDestroy()
    print("OnDestroy")
end

function Quest70705:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70705:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70705:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70705:OnSubStart7070501(arg1)
    print("OnSubStart7070501")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70705:OnSubFinish7070501(arg1)
    print("OnSubFinish7070501")
end

function Quest70705:OnSubFailed7070501(arg1)
    print("OnSubFailed7070501")
end

function Quest70705:OnSubStart7070502(arg1)
    print("OnSubStart7070502")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70705:OnSubFinish7070502(arg1)
    print("OnSubFinish7070502")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70705:OnSubFailed7070502(arg1)
    print("OnSubFailed7070502")
end

return Quest70705
