require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71003 = class("Quest71003", QuestActorProxy)
Quest71003.defaultAlias = "Quest71003"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71003:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7100301"] = self.OnSubStart7100301, ["7100302"] = self.OnSubStart7100302}
end

function Quest71003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7100301"] = self.OnSubFinish7100301, ["7100302"] = self.OnSubFinish7100302}
end

function Quest71003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7100301"] = self.OnSubFailed7100301, ["7100302"] = self.OnSubFailed7100302}
end

function Quest71003:Start()
    print("Start")
end

function Quest71003:OnDestroy()
    print("OnDestroy")
end

function Quest71003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71003:OnSubStart7100301(arg1)
    print("OnSubStart7100301")
end

function Quest71003:OnSubFinish7100301(arg1)
    print("OnSubFinish7100301")
end

function Quest71003:OnSubFailed7100301(arg1)
    print("OnSubFailed7100301")
end

function Quest71003:OnSubStart7100302(arg1)
    print("OnSubStart7100302")
end

function Quest71003:OnSubFinish7100302(arg1)
    print("OnSubFinish7100302")
end

function Quest71003:OnSubFailed7100302(arg1)
    print("OnSubFailed7100302")
end

return Quest71003
