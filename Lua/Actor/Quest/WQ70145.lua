require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70145 = class("Quest70145", QuestActorProxy)
Quest70145.defaultAlias = "Quest70145"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70145:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70145:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7014501"] = self.OnSubStart7014501}
end

function Quest70145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7014501"] = self.OnSubFinish7014501}
end

function Quest70145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7014501"] = self.OnSubFailed7014501}
end

function Quest70145:Start()
    print("Start")
end

function Quest70145:OnDestroy()
    print("OnDestroy")
end

function Quest70145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70145:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70145:OnSubStart7014501(arg1)
    print("OnSubStart7014501")
end

function Quest70145:OnSubFinish7014501(arg1)
    print("OnSubFinish7014501")
end

function Quest70145:OnSubFailed7014501(arg1)
    print("OnSubFailed7014501")
end

return Quest70145
