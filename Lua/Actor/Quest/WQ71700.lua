require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71700 = class("Quest71700", QuestActorProxy)
Quest71700.defaultAlias = "Quest71700"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71700:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71700:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170001"] = self.OnSubStart7170001, ["7170002"] = self.OnSubStart7170002}
end

function Quest71700:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170001"] = self.OnSubFinish7170001, ["7170002"] = self.OnSubFinish7170002}
end

function Quest71700:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170001"] = self.OnSubFailed7170001, ["7170002"] = self.OnSubFailed7170002}
end

function Quest71700:Start()
    print("Start")
end

function Quest71700:OnDestroy()
    print("OnDestroy")
end

function Quest71700:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71700:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71700:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2025", 0, true)
end

function Quest71700:Ban2025Daily()
    print("Ban2025Daily")
    self:NotifyTo("Npc2025", 2, true)
end

function Quest71700:OnSubStart7170001(arg1)
    print("OnSubStart7170001")
    self:CallDelay(3, self.Ban2025Daily)
end

function Quest71700:OnSubFinish7170001(arg1)
    print("OnSubFinish7170001")
end

function Quest71700:OnSubFailed7170001(arg1)
    print("OnSubFailed7170001")
end

function Quest71700:OnSubStart7170002(arg1)
    print("OnSubStart7170002")
    self:NotifyTo("Npc2025", 2, true)
end

function Quest71700:OnSubFinish7170002(arg1)
    print("OnSubFinish7170002")
    self:NotifyTo("Npc2025", 0, true)
end

function Quest71700:OnSubFailed7170002(arg1)
    print("OnSubFailed7170002")
end

return Quest71700
