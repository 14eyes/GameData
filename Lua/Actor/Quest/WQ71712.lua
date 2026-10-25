require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71712 = class("Quest71712", QuestActorProxy)
Quest71712.defaultAlias = "Quest71712"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71712:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71712:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7171201"] = self.OnSubStart7171201, ["7171202"] = self.OnSubStart7171202}
end

function Quest71712:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7171201"] = self.OnSubFinish7171201, ["7171202"] = self.OnSubFinish7171202}
end

function Quest71712:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7171201"] = self.OnSubFailed7171201, ["7171202"] = self.OnSubFailed7171202}
end

function Quest71712:Start()
    print("Start")
end

function Quest71712:OnDestroy()
    print("OnDestroy")
end

function Quest71712:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71712:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71712:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71712:OnSubStart7171201(arg1)
    print("OnSubStart7171201")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71712:OnSubFinish7171201(arg1)
    print("OnSubFinish7171201")
end

function Quest71712:OnSubFailed7171201(arg1)
    print("OnSubFailed7171201")
end

function Quest71712:OnSubStart7171202(arg1)
    print("OnSubStart7171202")
    self:NotifyTo("Npc2046", 2, true)
end

function Quest71712:OnSubFinish7171202(arg1)
    print("OnSubFinish7171202")
    self:NotifyTo("Npc2046", 0, true)
end

function Quest71712:OnSubFailed7171202(arg1)
    print("OnSubFailed7171202")
end

return Quest71712
