require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70703 = class("Quest70703", QuestActorProxy)
Quest70703.defaultAlias = "Quest70703"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70703:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70703:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070301"] = self.OnSubStart7070301, ["7070302"] = self.OnSubStart7070302}
end

function Quest70703:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070301"] = self.OnSubFinish7070301, ["7070302"] = self.OnSubFinish7070302}
end

function Quest70703:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070301"] = self.OnSubFailed7070301, ["7070302"] = self.OnSubFailed7070302}
end

function Quest70703:Start()
    print("Start")
end

function Quest70703:OnDestroy()
    print("OnDestroy")
end

function Quest70703:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70703:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70703:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70703:OnSubStart7070301(arg1)
    print("OnSubStart7070301")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70703:OnSubFinish7070301(arg1)
    print("OnSubFinish7070301")
end

function Quest70703:OnSubFailed7070301(arg1)
    print("OnSubFailed7070301")
end

function Quest70703:OnSubStart7070302(arg1)
    print("OnSubStart7070302")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70703:OnSubFinish7070302(arg1)
    print("OnSubFinish7070302")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70703:OnSubFailed7070302(arg1)
    print("OnSubFailed7070302")
end

return Quest70703
