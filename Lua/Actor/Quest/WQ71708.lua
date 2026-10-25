require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71708 = class("Quest71708", QuestActorProxy)
Quest71708.defaultAlias = "Quest71708"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71708:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71708:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170801"] = self.OnSubStart7170801, ["7170802"] = self.OnSubStart7170802}
end

function Quest71708:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170801"] = self.OnSubFinish7170801, ["7170802"] = self.OnSubFinish7170802}
end

function Quest71708:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170801"] = self.OnSubFailed7170801, ["7170802"] = self.OnSubFailed7170802}
end

function Quest71708:Start()
    print("Start")
end

function Quest71708:OnDestroy()
    print("OnDestroy")
end

function Quest71708:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71708:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71708:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2302", 0, true)
end

function Quest71708:OnSubStart7170801(arg1)
    print("OnSubStart7170801")
    self:NotifyTo("Npc2302", 2, true)
end

function Quest71708:OnSubFinish7170801(arg1)
    print("OnSubFinish7170801")
end

function Quest71708:OnSubFailed7170801(arg1)
    print("OnSubFailed7170801")
end

function Quest71708:OnSubStart7170802(arg1)
    print("OnSubStart7170802")
    self:NotifyTo("Npc2302", 2, true)
end

function Quest71708:OnSubFinish7170802(arg1)
    print("OnSubFinish7170802")
    self:NotifyTo("Npc2302", 0, true)
end

function Quest71708:OnSubFailed7170802(arg1)
    print("OnSubFailed7170802")
end

return Quest71708
