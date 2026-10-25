require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74674 = class("Quest74674", QuestActorProxy)
Quest74674.defaultAlias = "Quest74674"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74674:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74674:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467401"] = self.OnSubStart7467401}
end

function Quest74674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467401"] = self.OnSubFinish7467401}
end

function Quest74674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74674:Start()
    print("Start")
end

function Quest74674:OnDestroy()
    print("OnDestroy")
end

function Quest74674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74674:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74674:OnSubStart7467401(arg1)
    print("OnSubStart7467401")
end

function Quest74674:OnSubFinish7467401(arg1)
    print("OnSubFinish7467401")
end

return Quest74674
