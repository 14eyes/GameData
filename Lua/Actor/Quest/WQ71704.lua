require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71704 = class("Quest71704", QuestActorProxy)
Quest71704.defaultAlias = "Quest71704"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71704:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71704:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170401"] = self.OnSubStart7170401, ["7170402"] = self.OnSubStart7170402}
end

function Quest71704:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170401"] = self.OnSubFinish7170401, ["7170402"] = self.OnSubFinish7170402}
end

function Quest71704:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170401"] = self.OnSubFailed7170401, ["7170402"] = self.OnSubFailed7170402}
end

function Quest71704:Start()
    print("Start")
end

function Quest71704:OnDestroy()
    print("OnDestroy")
end

function Quest71704:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71704:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71704:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71704:OnSubStart7170401(arg1)
    print("OnSubStart7170401")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71704:OnSubFinish7170401(arg1)
    print("OnSubFinish7170401")
end

function Quest71704:OnSubFailed7170401(arg1)
    print("OnSubFailed7170401")
end

function Quest71704:OnSubStart7170402(arg1)
    print("OnSubStart7170402")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71704:OnSubFinish7170402(arg1)
    print("OnSubFinish7170402")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71704:OnSubFailed7170402(arg1)
    print("OnSubFailed7170402")
end

return Quest71704
