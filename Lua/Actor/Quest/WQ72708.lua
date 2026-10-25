require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72708 = class("Quest72708", QuestActorProxy)
Quest72708.defaultAlias = "Quest72708"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72708:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72708:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270801"] = self.OnSubStart7270801}
end

function Quest72708:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270801"] = self.OnSubFinish7270801}
end

function Quest72708:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270801"] = self.OnSubFailed7270801}
end

function Quest72708:Start()
    print("Start")
end

function Quest72708:OnDestroy()
    print("OnDestroy")
end

function Quest72708:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72708:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72708:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72708:OnSubStart7270801(arg1)
    print("OnSubStart7270801")
end

function Quest72708:OnSubFinish7270801(arg1)
    print("OnSubFinish7270801")
end

function Quest72708:OnSubFailed7270801(arg1)
    print("OnSubFailed7270801")
end

return Quest72708
