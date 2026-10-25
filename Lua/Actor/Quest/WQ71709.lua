require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71709 = class("Quest71709", QuestActorProxy)
Quest71709.defaultAlias = "Quest71709"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71709:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71709:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170901"] = self.OnSubStart7170901, ["7170902"] = self.OnSubStart7170902}
end

function Quest71709:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170901"] = self.OnSubFinish7170901, ["7170902"] = self.OnSubFinish7170902}
end

function Quest71709:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170901"] = self.OnSubFailed7170901, ["7170902"] = self.OnSubFailed7170902}
end

function Quest71709:Start()
    print("Start")
end

function Quest71709:OnDestroy()
    print("OnDestroy")
end

function Quest71709:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71709:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71709:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71709:OnSubStart7170901(arg1)
    print("OnSubStart7170901")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71709:OnSubFinish7170901(arg1)
    print("OnSubFinish7170901")
end

function Quest71709:OnSubFailed7170901(arg1)
    print("OnSubFailed7170901")
end

function Quest71709:OnSubStart7170902(arg1)
    print("OnSubStart7170902")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71709:OnSubFinish7170902(arg1)
    print("OnSubFinish7170902")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71709:OnSubFailed7170902(arg1)
    print("OnSubFailed7170902")
end

return Quest71709
