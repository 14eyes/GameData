require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71650 = class("Quest71650", QuestActorProxy)
Quest71650.defaultAlias = "Quest71650"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71650:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71650:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7165001"] = self.OnSubStart7165001, ["7165002"] = self.OnSubStart7165002}
end

function Quest71650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7165001"] = self.OnSubFinish7165001, ["7165002"] = self.OnSubFinish7165002}
end

function Quest71650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7165001"] = self.OnSubFailed7165001, ["7165002"] = self.OnSubFailed7165002}
end

function Quest71650:Start()
    print("Start")
end

function Quest71650:OnDestroy()
    print("OnDestroy")
end

function Quest71650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71650:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71650:OnSubStart7165001(arg1)
    print("OnSubStart7165001")
end

function Quest71650:OnSubFinish7165001(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("Npc2457")
    end)
end

function Quest71650:OnSubFailed7165001(arg1)
    print("OnSubFailed7165001")
end

function Quest71650:OnSubStart7165002(arg1)
    print("OnSubStart7165002")
end

function Quest71650:OnSubFinish7165002(arg1)
    print("OnSubFinish7165002")
end

function Quest71650:OnSubFailed7165002(arg1)
    print("OnSubFailed7165002")
end

return Quest71650
