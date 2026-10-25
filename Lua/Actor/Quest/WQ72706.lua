require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72706 = class("Quest72706", QuestActorProxy)
Quest72706.defaultAlias = "Quest72706"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72706:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72706:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270601"] = self.OnSubStart7270601}
end

function Quest72706:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270601"] = self.OnSubFinish7270601}
end

function Quest72706:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270601"] = self.OnSubFailed7270601}
end

function Quest72706:Start()
    print("Start")
end

function Quest72706:OnDestroy()
    print("OnDestroy")
end

function Quest72706:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72706:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72706:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72706:OnSubStart7270601(arg1)
    print("OnSubStart7270601")
end

function Quest72706:OnSubFinish7270601(arg1)
    print("OnSubFinish7270601")
end

function Quest72706:OnSubFailed7270601(arg1)
    print("OnSubFailed7270601")
end

return Quest72706
