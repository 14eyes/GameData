require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70714 = class("Quest70714", QuestActorProxy)
Quest70714.defaultAlias = "Quest70714"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70714:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70714:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7071401"] = self.OnSubStart7071401, ["7071402"] = self.OnSubStart7071402}
end

function Quest70714:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7071401"] = self.OnSubFinish7071401, ["7071402"] = self.OnSubFinish7071402}
end

function Quest70714:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7071401"] = self.OnSubFailed7071401, ["7071402"] = self.OnSubFailed7071402}
end

function Quest70714:Start()
    print("Start")
end

function Quest70714:OnDestroy()
    print("OnDestroy")
end

function Quest70714:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70714:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70714:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1541", 0, true)
end

function Quest70714:OnSubStart7071401(arg1)
    print("OnSubStart7071401")
    self:NotifyTo("Npc1541", 2, true)
end

function Quest70714:OnSubFinish7071401(arg1)
    print("OnSubFinish7071401")
end

function Quest70714:OnSubFailed7071401(arg1)
    print("OnSubFailed7071401")
end

function Quest70714:OnSubStart7071402(arg1)
    print("OnSubStart7071402")
    self:NotifyTo("Npc1541", 2, true)
end

function Quest70714:OnSubFinish7071402(arg1)
    print("OnSubFinish7071402")
    self:NotifyTo("Npc1541", 0, true)
end

function Quest70714:OnSubFailed7071402(arg1)
    print("OnSubFailed7071402")
end

return Quest70714
