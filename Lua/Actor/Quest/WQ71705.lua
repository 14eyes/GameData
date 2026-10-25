require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71705 = class("Quest71705", QuestActorProxy)
Quest71705.defaultAlias = "Quest71705"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71705:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71705:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170501"] = self.OnSubStart7170501, ["7170502"] = self.OnSubStart7170502}
end

function Quest71705:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170501"] = self.OnSubFinish7170501, ["7170502"] = self.OnSubFinish7170502}
end

function Quest71705:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170501"] = self.OnSubFailed7170501, ["7170502"] = self.OnSubFailed7170502}
end

function Quest71705:Start()
    print("Start")
end

function Quest71705:OnDestroy()
    print("OnDestroy")
end

function Quest71705:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71705:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71705:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2204", 0, true)
end

function Quest71705:OnSubStart7170501(arg1)
    print("OnSubStart7170501")
    self:NotifyTo("Npc2204", 2, true)
end

function Quest71705:OnSubFinish7170501(arg1)
    print("OnSubFinish7170501")
end

function Quest71705:OnSubFailed7170501(arg1)
    print("OnSubFailed7170501")
end

function Quest71705:OnSubStart7170502(arg1)
    print("OnSubStart7170502")
    self:NotifyTo("Npc2204", 2, true)
end

function Quest71705:OnSubFinish7170502(arg1)
    print("OnSubFinish7170502")
    self:NotifyTo("Npc2204", 0, true)
end

function Quest71705:OnSubFailed7170502(arg1)
    print("OnSubFailed7170502")
end

return Quest71705
