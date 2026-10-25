require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70709 = class("Quest70709", QuestActorProxy)
Quest70709.defaultAlias = "Quest70709"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70709:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70709:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070901"] = self.OnSubStart7070901, ["7070902"] = self.OnSubStart7070902}
end

function Quest70709:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070901"] = self.OnSubFinish7070901, ["7070902"] = self.OnSubFinish7070902}
end

function Quest70709:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070901"] = self.OnSubFailed7070901, ["7070902"] = self.OnSubFailed7070902}
end

function Quest70709:Start()
    print("Start")
end

function Quest70709:OnDestroy()
    print("OnDestroy")
end

function Quest70709:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70709:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70709:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1656", 0, true)
end

function Quest70709:OnSubStart7070901(arg1)
    print("OnSubStart7070901")
    self:NotifyTo("Npc1656", 2, true)
end

function Quest70709:OnSubFinish7070901(arg1)
    print("OnSubFinish7070901")
end

function Quest70709:OnSubFailed7070901(arg1)
    print("OnSubFailed7070901")
end

function Quest70709:OnSubStart7070902(arg1)
    print("OnSubStart7070902")
    self:NotifyTo("Npc1656", 2, true)
end

function Quest70709:OnSubFinish7070902(arg1)
    print("OnSubFinish7070902")
    self:NotifyTo("Npc1656", 0, true)
end

function Quest70709:OnSubFailed7070902(arg1)
    print("OnSubFailed7070902")
end

return Quest70709
