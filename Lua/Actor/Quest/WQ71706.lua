require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71706 = class("Quest71706", QuestActorProxy)
Quest71706.defaultAlias = "Quest71706"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71706:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71706:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170601"] = self.OnSubStart7170601, ["7170602"] = self.OnSubStart7170602}
end

function Quest71706:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170601"] = self.OnSubFinish7170601, ["7170602"] = self.OnSubFinish7170602}
end

function Quest71706:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170601"] = self.OnSubFailed7170601, ["7170602"] = self.OnSubFailed7170602}
end

function Quest71706:Start()
    print("Start")
end

function Quest71706:OnDestroy()
    print("OnDestroy")
end

function Quest71706:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71706:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71706:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2204", 0, true)
end

function Quest71706:OnSubStart7170601(arg1)
    print("OnSubStart7170601")
    self:NotifyTo("Npc2204", 2, true)
end

function Quest71706:OnSubFinish7170601(arg1)
    print("OnSubFinish7170601")
end

function Quest71706:OnSubFailed7170601(arg1)
    print("OnSubFailed7170601")
end

function Quest71706:OnSubStart7170602(arg1)
    print("OnSubStart7170602")
    self:NotifyTo("Npc2204", 2, true)
end

function Quest71706:OnSubFinish7170602(arg1)
    print("OnSubFinish7170602")
    self:NotifyTo("Npc2204", 0, true)
end

function Quest71706:OnSubFailed7170602(arg1)
    print("OnSubFailed7170602")
end

return Quest71706
