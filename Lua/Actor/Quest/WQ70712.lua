require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70712 = class("Quest70712", QuestActorProxy)
Quest70712.defaultAlias = "Quest70712"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70712:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70712:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7071201"] = self.OnSubStart7071201, ["7071202"] = self.OnSubStart7071202}
end

function Quest70712:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7071201"] = self.OnSubFinish7071201, ["7071202"] = self.OnSubFinish7071202}
end

function Quest70712:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7071201"] = self.OnSubFailed7071201, ["7071202"] = self.OnSubFailed7071202}
end

function Quest70712:Start()
    print("Start")
end

function Quest70712:OnDestroy()
    print("OnDestroy")
end

function Quest70712:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70712:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70712:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1657", 0, true)
end

function Quest70712:OnSubStart7071201(arg1)
    print("OnSubStart7071201")
    self:NotifyTo("Npc1657", 2, true)
end

function Quest70712:OnSubFinish7071201(arg1)
    print("OnSubFinish7071201")
end

function Quest70712:OnSubFailed7071201(arg1)
    print("OnSubFailed7071201")
end

function Quest70712:OnSubStart7071202(arg1)
    print("OnSubStart7071202")
    self:NotifyTo("Npc1657", 2, true)
end

function Quest70712:OnSubFinish7071202(arg1)
    print("OnSubFinish7071202")
    self:NotifyTo("Npc1657", 0, true)
end

function Quest70712:OnSubFailed7071202(arg1)
    print("OnSubFailed7071202")
end

return Quest70712
