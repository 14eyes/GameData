require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70713 = class("Quest70713", QuestActorProxy)
Quest70713.defaultAlias = "Quest70713"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70713:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70713:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7071301"] = self.OnSubStart7071301, ["7071302"] = self.OnSubStart7071302}
end

function Quest70713:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7071301"] = self.OnSubFinish7071301, ["7071302"] = self.OnSubFinish7071302}
end

function Quest70713:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7071301"] = self.OnSubFailed7071301, ["7071302"] = self.OnSubFailed7071302}
end

function Quest70713:Start()
    print("Start")
end

function Quest70713:OnDestroy()
    print("OnDestroy")
end

function Quest70713:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70713:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70713:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1541", 0, true)
end

function Quest70713:OnSubStart7071301(arg1)
    print("OnSubStart7071301")
    self:NotifyTo("Npc1541", 2, true)
end

function Quest70713:OnSubFinish7071301(arg1)
    print("OnSubFinish7071301")
end

function Quest70713:OnSubFailed7071301(arg1)
    print("OnSubFailed7071301")
end

function Quest70713:OnSubStart7071302(arg1)
    print("OnSubStart7071302")
    self:NotifyTo("Npc1541", 2, true)
end

function Quest70713:OnSubFinish7071302(arg1)
    print("OnSubFinish7071302")
    self:NotifyTo("Npc1541", 0, true)
end

function Quest70713:OnSubFailed7071302(arg1)
    print("OnSubFailed7071302")
end

return Quest70713
