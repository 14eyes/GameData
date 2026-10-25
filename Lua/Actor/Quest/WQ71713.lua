require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71713 = class("Quest71713", QuestActorProxy)
Quest71713.defaultAlias = "Quest71713"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71713:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71713:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7171301"] = self.OnSubStart7171301, ["7171302"] = self.OnSubStart7171302}
end

function Quest71713:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7171301"] = self.OnSubFinish7171301, ["7171302"] = self.OnSubFinish7171302}
end

function Quest71713:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7171301"] = self.OnSubFailed7171301, ["7171302"] = self.OnSubFailed7171302}
end

function Quest71713:Start()
    print("Start")
end

function Quest71713:OnDestroy()
    print("OnDestroy")
end

function Quest71713:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71713:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71713:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2048", 0, true)
end

function Quest71713:OnSubStart7171301(arg1)
    print("OnSubStart7171301")
    self:NotifyTo("Npc2048", 2, true)
end

function Quest71713:OnSubFinish7171301(arg1)
    print("OnSubFinish7171301")
end

function Quest71713:OnSubFailed7171301(arg1)
    print("OnSubFailed7171301")
end

function Quest71713:OnSubStart7171302(arg1)
    print("OnSubStart7171302")
    self:NotifyTo("Npc2048", 2, true)
end

function Quest71713:OnSubFinish7171302(arg1)
    print("OnSubFinish7171302")
    self:NotifyTo("Npc2048", 0, true)
end

function Quest71713:OnSubFailed7171302(arg1)
    print("OnSubFailed7171302")
end

return Quest71713
