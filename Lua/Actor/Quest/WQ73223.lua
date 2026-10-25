require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73223 = class("Quest73223", QuestActorProxy)
Quest73223.defaultAlias = "Quest73223"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73223:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73223:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7322301"] = self.OnSubStart7322301, ["7322302"] = self.OnSubStart7322302}
end

function Quest73223:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7322301"] = self.OnSubFinish7322301, ["7322302"] = self.OnSubFinish7322302}
end

function Quest73223:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73223:Start()
    print("Start")
end

function Quest73223:OnDestroy()
    print("OnDestroy")
end

function Quest73223:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73223:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73223:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73223:OnSubStart7322301(arg1)
    print("OnSubStart7322301")
end

function Quest73223:OnSubFinish7322301(arg1)
    print("OnSubFinish7322301")
end

function Quest73223:OnSubStart7322302(arg1)
    print("OnSubStart7322302")
end

function Quest73223:OnSubFinish7322302(arg1)
    print("OnSubFinish7322302")
end

return Quest73223
