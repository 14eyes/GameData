require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71702 = class("Quest71702", QuestActorProxy)
Quest71702.defaultAlias = "Quest71702"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71702:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71702:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170201"] = self.OnSubStart7170201, ["7170202"] = self.OnSubStart7170202}
end

function Quest71702:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170201"] = self.OnSubFinish7170201, ["7170202"] = self.OnSubFinish7170202}
end

function Quest71702:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170201"] = self.OnSubFailed7170201, ["7170202"] = self.OnSubFailed7170202}
end

function Quest71702:Start()
    print("Start")
end

function Quest71702:OnDestroy()
    print("OnDestroy")
end

function Quest71702:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71702:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71702:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71702:OnSubStart7170201(arg1)
    print("OnSubStart7170201")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71702:OnSubFinish7170201(arg1)
    print("OnSubFinish7170201")
end

function Quest71702:OnSubFailed7170201(arg1)
    print("OnSubFailed7170201")
end

function Quest71702:OnSubStart7170202(arg1)
    print("OnSubStart7170202")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71702:OnSubFinish7170202(arg1)
    print("OnSubFinish7170202")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71702:OnSubFailed7170202(arg1)
    print("OnSubFailed7170202")
end

return Quest71702
