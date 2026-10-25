require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74169 = class("Quest74169", QuestActorProxy)
Quest74169.defaultAlias = "Quest74169"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74169:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74169:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7416901"] = self.OnSubStart7416901, ["7416902"] = self.OnSubStart7416902}
end

function Quest74169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7416901"] = self.OnSubFinish7416901, ["7416902"] = self.OnSubFinish7416902}
end

function Quest74169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74169:Start()
    print("Start")
end

function Quest74169:OnDestroy()
    print("OnDestroy")
end

function Quest74169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74169:OnSubStart7416901(arg1)
    print("OnSubStart7416901")
end

function Quest74169:OnSubFinish7416901(arg1)
    print("OnSubFinish7416901")
end

function Quest74169:OnSubStart7416902(arg1)
    print("OnSubStart7416902")
end

function Quest74169:OnSubFinish7416902(arg1)
    print("OnSubFinish7416902")
end

return Quest74169
