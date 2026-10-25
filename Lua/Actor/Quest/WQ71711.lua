require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71711 = class("Quest71711", QuestActorProxy)
Quest71711.defaultAlias = "Quest71711"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71711:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71711:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7171101"] = self.OnSubStart7171101, ["7171102"] = self.OnSubStart7171102}
end

function Quest71711:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7171101"] = self.OnSubFinish7171101, ["7171102"] = self.OnSubFinish7171102}
end

function Quest71711:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7171101"] = self.OnSubFailed7171101, ["7171102"] = self.OnSubFailed7171102}
end

function Quest71711:Start()
    print("Start")
end

function Quest71711:OnDestroy()
    print("OnDestroy")
end

function Quest71711:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71711:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71711:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71711:OnSubStart7171101(arg1)
    print("OnSubStart7171101")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71711:OnSubFinish7171101(arg1)
    print("OnSubFinish7171101")
end

function Quest71711:OnSubFailed7171101(arg1)
    print("OnSubFailed7171101")
end

function Quest71711:OnSubStart7171102(arg1)
    print("OnSubStart7171102")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71711:OnSubFinish7171102(arg1)
    print("OnSubFinish7171102")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71711:OnSubFailed7171102(arg1)
    print("OnSubFailed7171102")
end

return Quest71711
