require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71701 = class("Quest71701", QuestActorProxy)
Quest71701.defaultAlias = "Quest71701"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71701:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71701:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170101"] = self.OnSubStart7170101, ["7170102"] = self.OnSubStart7170102}
end

function Quest71701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170101"] = self.OnSubFinish7170101, ["7170102"] = self.OnSubFinish7170102}
end

function Quest71701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170101"] = self.OnSubFailed7170101, ["7170102"] = self.OnSubFailed7170102}
end

function Quest71701:Start()
    print("Start")
end

function Quest71701:OnDestroy()
    print("OnDestroy")
end

function Quest71701:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71701:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71701:OnSubStart7170101(arg1)
    print("OnSubStart7170101")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71701:OnSubFinish7170101(arg1)
    print("OnSubFinish7170101")
end

function Quest71701:OnSubFailed7170101(arg1)
    print("OnSubFailed7170101")
end

function Quest71701:OnSubStart7170102(arg1)
    print("OnSubStart7170102")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71701:OnSubFinish7170102(arg1)
    print("OnSubFinish7170102")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71701:OnSubFailed7170102(arg1)
    print("OnSubFailed7170102")
end

return Quest71701
