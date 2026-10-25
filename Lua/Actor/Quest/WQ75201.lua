require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75201 = class("Quest75201", QuestActorProxy)
Quest75201.defaultAlias = "Quest75201"
local clientData
local this
local mainID
local actorAlias

function Quest75201:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75201:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520102"] = self.OnSubStart7520102, ["7520101"] = self.OnSubStart7520101}
end

function Quest75201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520102"] = self.OnSubFinish7520102, ["7520101"] = self.OnSubFinish7520101}
end

function Quest75201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75201:Start()
    print("Start")
end

function Quest75201:OnDestroy()
    print("OnDestroy")
end

function Quest75201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75201:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75201:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75201:OnSubStart7520102(arg1)
    print("OnSubStart7520102")
end

function Quest75201:OnSubFinish7520102(arg1)
    print("OnSubFinish7520102")
    this:SetNavigationByMainId(75201, true)
end

function Quest75201:OnSubStart7520101(arg1)
    print("OnSubStart7520101")
end

function Quest75201:OnSubFinish7520101(arg1)
    print("OnSubFinish7520101")
    if this:GetSubQuestState(7516005) == 3 then
        this:SetNavigationByMainId(75150, true)
    else
        this:SetNavigationByMainId(75189, true)
    end
end

return Quest75201
