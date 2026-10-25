require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71710 = class("Quest71710", QuestActorProxy)
Quest71710.defaultAlias = "Quest71710"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71710:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71710:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7171001"] = self.OnSubStart7171001, ["7171002"] = self.OnSubStart7171002}
end

function Quest71710:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7171001"] = self.OnSubFinish7171001, ["7171002"] = self.OnSubFinish7171002}
end

function Quest71710:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7171001"] = self.OnSubFailed7171001, ["7171002"] = self.OnSubFailed7171002}
end

function Quest71710:Start()
    print("Start")
end

function Quest71710:OnDestroy()
    print("OnDestroy")
end

function Quest71710:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71710:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71710:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71710:OnSubStart7171001(arg1)
    print("OnSubStart7171001")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71710:OnSubFinish7171001(arg1)
    print("OnSubFinish7171001")
end

function Quest71710:OnSubFailed7171001(arg1)
    print("OnSubFailed7171001")
end

function Quest71710:OnSubStart7171002(arg1)
    print("OnSubStart7171002")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71710:OnSubFinish7171002(arg1)
    print("OnSubFinish7171002")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71710:OnSubFailed7171002(arg1)
    print("OnSubFailed7171002")
end

return Quest71710
