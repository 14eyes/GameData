require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72719 = class("Quest72719", QuestActorProxy)
Quest72719.defaultAlias = "Quest72719"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72719:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72719:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271901"] = self.OnSubStart7271901, ["7271902"] = self.OnSubStart7271902}
end

function Quest72719:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271901"] = self.OnSubFinish7271901, ["7271902"] = self.OnSubFinish7271902}
end

function Quest72719:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271901"] = self.OnSubFailed7271901, ["7271902"] = self.OnSubFailed7271902}
end

function Quest72719:Start()
    print("Start")
end

function Quest72719:OnDestroy()
    print("OnDestroy")
end

function Quest72719:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72719:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72719:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3058Data.alias, 0, true)
end

function Quest72719:OnSubStart7271901(arg1)
    print("OnSubStart7271901")
    self:NotifyTo(npcs.Npc3058Data.alias, 2, true)
end

function Quest72719:OnSubFinish7271901(arg1)
    print("OnSubFinish7271901")
end

function Quest72719:OnSubFailed7271901(arg1)
    print("OnSubFailed7271901")
end

function Quest72719:OnSubStart7271902(arg1)
    print("OnSubStart7271902")
end

function Quest72719:OnSubFinish7271902(arg1)
    print("OnSubFinish7271902")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3058Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72719:OnSubFailed7271902(arg1)
    print("OnSubFailed7271902")
end

return Quest72719
