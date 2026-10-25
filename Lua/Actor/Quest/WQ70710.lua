require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70710 = class("Quest70710", QuestActorProxy)
Quest70710.defaultAlias = "Quest70710"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70710:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70710:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7071001"] = self.OnSubStart7071001, ["7071002"] = self.OnSubStart7071002}
end

function Quest70710:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7071001"] = self.OnSubFinish7071001, ["7071002"] = self.OnSubFinish7071002}
end

function Quest70710:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7071001"] = self.OnSubFailed7071001, ["7071002"] = self.OnSubFailed7071002}
end

function Quest70710:Start()
    print("Start")
end

function Quest70710:OnDestroy()
    print("OnDestroy")
end

function Quest70710:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70710:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70710:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1656", 0, true)
end

function Quest70710:OnSubStart7071001(arg1)
    print("OnSubStart7071001")
    self:NotifyTo("Npc1656", 2, true)
end

function Quest70710:OnSubFinish7071001(arg1)
    print("OnSubFinish7071001")
end

function Quest70710:OnSubFailed7071001(arg1)
    print("OnSubFailed7071001")
end

function Quest70710:OnSubStart7071002(arg1)
    print("OnSubStart7071002")
    self:NotifyTo("Npc1656", 2, true)
end

function Quest70710:OnSubFinish7071002(arg1)
    print("OnSubFinish7071002")
    self:NotifyTo("Npc1656", 0, true)
end

function Quest70710:OnSubFailed7071002(arg1)
    print("OnSubFailed7071002")
end

return Quest70710
