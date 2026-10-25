require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70701 = class("Quest70701", QuestActorProxy)
Quest70701.defaultAlias = "Quest70701"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70701:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70701:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070101"] = self.OnSubStart7070101, ["7070102"] = self.OnSubStart7070102}
end

function Quest70701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070101"] = self.OnSubFinish7070101, ["7070102"] = self.OnSubFinish7070102}
end

function Quest70701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070101"] = self.OnSubFailed7070101, ["7070102"] = self.OnSubFailed7070102}
end

function Quest70701:Start()
    print("Start")
end

function Quest70701:OnDestroy()
    print("OnDestroy")
end

function Quest70701:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70701:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1521", 0, true)
end

function Quest70701:OnSubStart7070101(arg1)
    print("OnSubStart7070101")
    self:NotifyTo("Npc1521", 2, true)
end

function Quest70701:OnSubFinish7070101(arg1)
    print("OnSubFinish7070101")
end

function Quest70701:OnSubFailed7070101(arg1)
    print("OnSubFailed7070101")
end

function Quest70701:OnSubStart7070102(arg1)
    print("OnSubStart7070102")
    self:NotifyTo("Npc1521", 2, true)
end

function Quest70701:OnSubFinish7070102(arg1)
    print("OnSubFinish7070102")
    self:NotifyTo("Npc1521", 0, true)
end

function Quest70701:OnSubFailed7070102(arg1)
    print("OnSubFailed7070102")
end

return Quest70701
