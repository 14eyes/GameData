require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72664 = class("Quest72664", QuestActorProxy)
Quest72664.defaultAlias = "Quest72664"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72664:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7266401"] = self.OnSubStart7266401}
end

function Quest72664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7266401"] = self.OnSubFinish7266401}
end

function Quest72664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7266401"] = self.OnSubFailed7266401}
end

function Quest72664:Start()
    print("Start")
end

function Quest72664:OnDestroy()
    print("OnDestroy")
end

function Quest72664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72664:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72664:OnSubStart7266401(arg1)
    print("OnSubStart7266401")
end

function Quest72664:OnSubFinish7266401(arg1)
    print("OnSubFinish7266401")
end

function Quest72664:OnSubFailed7266401(arg1)
    print("OnSubFailed7266401")
end

return Quest72664
