require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70650 = class("Quest70650", QuestActorProxy)
Quest70650.defaultAlias = "Quest70650"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70650:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70650:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065001"] = self.OnSubStart7065001, ["7065002"] = self.OnSubStart7065002}
end

function Quest70650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065001"] = self.OnSubFinish7065001, ["7065002"] = self.OnSubFinish7065002}
end

function Quest70650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065001"] = self.OnSubFailed7065001, ["7065002"] = self.OnSubFailed7065002}
end

function Quest70650:Start()
    print("Start")
end

function Quest70650:OnDestroy()
    print("OnDestroy")
end

function Quest70650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70650:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70650:OnSubStart7065001(arg1)
    print("OnSubStart7065001")
end

function Quest70650:OnSubFinish7065001(arg1)
    print("OnSubFinish7065001")
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("Npc1663")
    end)
end

function Quest70650:OnSubFailed7065001(arg1)
    print("OnSubFailed7065001")
end

function Quest70650:OnSubStart7065002(arg1)
    print("OnSubStart7065002")
end

function Quest70650:OnSubFinish7065002(arg1)
    print("OnSubFinish7065002")
end

function Quest70650:OnSubFailed7065002(arg1)
    print("OnSubFailed7065002")
end

return Quest70650
