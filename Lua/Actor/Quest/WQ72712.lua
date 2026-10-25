require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72712 = class("Quest72712", QuestActorProxy)
Quest72712.defaultAlias = "Quest72712"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72712:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72712:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271201"] = self.OnSubStart7271201, ["7271202"] = self.OnSubStart7271202}
end

function Quest72712:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271201"] = self.OnSubFinish7271201, ["7271202"] = self.OnSubFinish7271202}
end

function Quest72712:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271201"] = self.OnSubFailed7271201, ["7271202"] = self.OnSubFailed7271202}
end

function Quest72712:Start()
    print("Start")
end

function Quest72712:OnDestroy()
    print("OnDestroy")
end

function Quest72712:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72712:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72712:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3171Data.alias, 0, true)
end

function Quest72712:OnSubStart7271201(arg1)
    print("OnSubStart7271201")
    self:NotifyTo(npcs.Npc3171Data.alias, 2, true)
end

function Quest72712:OnSubFinish7271201(arg1)
    print("OnSubFinish7271201")
end

function Quest72712:OnSubFailed7271201(arg1)
    print("OnSubFailed7271201")
end

function Quest72712:OnSubStart7271202(arg1)
    print("OnSubStart7271202")
end

function Quest72712:OnSubFinish7271202(arg1)
    print("OnSubFinish7271202")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3171Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72712:OnSubFailed7271202(arg1)
    print("OnSubFailed7271202")
end

return Quest72712
