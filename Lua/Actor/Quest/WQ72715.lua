require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72715 = class("Quest72715", QuestActorProxy)
Quest72715.defaultAlias = "Quest72715"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72715:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72715:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271501"] = self.OnSubStart7271501, ["7271502"] = self.OnSubStart7271502}
end

function Quest72715:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271501"] = self.OnSubFinish7271501, ["7271502"] = self.OnSubFinish7271502}
end

function Quest72715:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271501"] = self.OnSubFailed7271501, ["7271502"] = self.OnSubFailed7271502}
end

function Quest72715:Start()
    print("Start")
end

function Quest72715:OnDestroy()
    print("OnDestroy")
end

function Quest72715:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72715:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72715:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
end

function Quest72715:OnSubStart7271501(arg1)
    print("OnSubStart7271501")
    self:NotifyTo(npcs.Npc3109Data.alias, 2, true)
end

function Quest72715:OnSubFinish7271501(arg1)
    print("OnSubFinish7271501")
end

function Quest72715:OnSubFailed7271501(arg1)
    print("OnSubFailed7271501")
end

function Quest72715:OnSubStart7271502(arg1)
    print("OnSubStart7271502")
end

function Quest72715:OnSubFinish7271502(arg1)
    print("OnSubFinish7271502")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72715:OnSubFailed7271502(arg1)
    print("OnSubFailed7271502")
end

return Quest72715
