require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74199 = class("Quest74199", QuestActorProxy)
Quest74199.defaultAlias = "Quest74199"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74199:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74199:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7419901"] = self.OnSubStart7419901}
end

function Quest74199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7419901"] = self.OnSubFinish7419901}
end

function Quest74199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74199:Start()
    print("Start")
end

function Quest74199:OnDestroy()
    print("OnDestroy")
end

function Quest74199:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74199:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74199:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74199:OnSubStart7419901(arg1)
    print("OnSubStart7419901")
end

function Quest74199:OnSubFinish7419901(arg1)
    print("OnSubFinish7419901")
end

return Quest74199
