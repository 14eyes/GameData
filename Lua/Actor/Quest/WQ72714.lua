require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72714 = class("Quest72714", QuestActorProxy)
Quest72714.defaultAlias = "Quest72714"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72714:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72714:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271401"] = self.OnSubStart7271401, ["7271402"] = self.OnSubStart7271402}
end

function Quest72714:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271401"] = self.OnSubFinish7271401, ["7271402"] = self.OnSubFinish7271402}
end

function Quest72714:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271401"] = self.OnSubFailed7271401, ["7271402"] = self.OnSubFailed7271402}
end

function Quest72714:Start()
    print("Start")
end

function Quest72714:OnDestroy()
    print("OnDestroy")
end

function Quest72714:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72714:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72714:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
end

function Quest72714:OnSubStart7271401(arg1)
    print("OnSubStart7271401")
    self:NotifyTo(npcs.Npc3110Data.alias, 2, true)
end

function Quest72714:OnSubFinish7271401(arg1)
    print("OnSubFinish7271401")
end

function Quest72714:OnSubFailed7271401(arg1)
    print("OnSubFailed7271401")
end

function Quest72714:OnSubStart7271402(arg1)
    print("OnSubStart7271402")
end

function Quest72714:OnSubFinish7271402(arg1)
    print("OnSubFinish7271402")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72714:OnSubFailed7271402(arg1)
    print("OnSubFailed7271402")
end

return Quest72714
