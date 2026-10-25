require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73525 = class("Quest73525", QuestActorProxy)
Quest73525.defaultAlias = "Quest73525"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73525:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73525:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7352501"] = self.OnSubStart7352501}
end

function Quest73525:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7352501"] = self.OnSubFinish7352501}
end

function Quest73525:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73525:Start()
    print("Start")
end

function Quest73525:OnDestroy()
    print("OnDestroy")
end

function Quest73525:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73525:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73525:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73525:OnSubStart7352501(arg1)
    print("OnSubStart7352501")
end

function Quest73525:OnSubFinish7352501(arg1)
    print("OnSubFinish7352501")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1465)
    end)
end

return Quest73525
