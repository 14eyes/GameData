require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72713 = class("Quest72713", QuestActorProxy)
Quest72713.defaultAlias = "Quest72713"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72713:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72713:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271301"] = self.OnSubStart7271301, ["7271302"] = self.OnSubStart7271302}
end

function Quest72713:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271301"] = self.OnSubFinish7271301, ["7271302"] = self.OnSubFinish7271302}
end

function Quest72713:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271301"] = self.OnSubFailed7271301, ["7271302"] = self.OnSubFailed7271302}
end

function Quest72713:Start()
    print("Start")
end

function Quest72713:OnDestroy()
    print("OnDestroy")
end

function Quest72713:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72713:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72713:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3172Data.alias, 0, true)
end

function Quest72713:OnSubStart7271301(arg1)
    print("OnSubStart7271301")
    self:NotifyTo(npcs.Npc3172Data.alias, 2, true)
end

function Quest72713:OnSubFinish7271301(arg1)
    print("OnSubFinish7271301")
end

function Quest72713:OnSubFailed7271301(arg1)
    print("OnSubFailed7271301")
end

function Quest72713:OnSubStart7271302(arg1)
    print("OnSubStart7271302")
end

function Quest72713:OnSubFinish7271302(arg1)
    print("OnSubFinish7271302")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3172Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72713:OnSubFailed7271302(arg1)
    print("OnSubFailed7271302")
end

return Quest72713
