require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72709 = class("Quest72709", QuestActorProxy)
Quest72709.defaultAlias = "Quest72709"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72709:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72709:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270901"] = self.OnSubStart7270901}
end

function Quest72709:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270901"] = self.OnSubFinish7270901}
end

function Quest72709:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270901"] = self.OnSubFailed7270901}
end

function Quest72709:Start()
    print("Start")
end

function Quest72709:OnDestroy()
    print("OnDestroy")
end

function Quest72709:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72709:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72709:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72709:OnSubStart7270901(arg1)
    print("OnSubStart7270901")
end

function Quest72709:OnSubFinish7270901(arg1)
    print("OnSubFinish7270901")
end

function Quest72709:OnSubFailed7270901(arg1)
    print("OnSubFailed7270901")
end

return Quest72709
