require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72711 = class("Quest72711", QuestActorProxy)
Quest72711.defaultAlias = "Quest72711"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72711:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72711:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271101"] = self.OnSubStart7271101, ["7271102"] = self.OnSubStart7271102}
end

function Quest72711:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271101"] = self.OnSubFinish7271101, ["7271102"] = self.OnSubFinish7271102}
end

function Quest72711:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271101"] = self.OnSubFailed7271101, ["7271102"] = self.OnSubFailed7271102}
end

function Quest72711:Start()
    print("Start")
end

function Quest72711:OnDestroy()
    print("OnDestroy")
end

function Quest72711:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72711:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72711:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3171Data.alias, 0, true)
end

function Quest72711:OnSubStart7271101(arg1)
    print("OnSubStart7271101")
    self:NotifyTo(npcs.Npc3171Data.alias, 2, true)
end

function Quest72711:OnSubFinish7271101(arg1)
    print("OnSubFinish7271101")
end

function Quest72711:OnSubFailed7271101(arg1)
    print("OnSubFailed7271101")
end

function Quest72711:OnSubStart7271102(arg1)
    print("OnSubStart7271102")
end

function Quest72711:OnSubFinish7271102(arg1)
    print("OnSubFinish7271102")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3171Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72711:OnSubFailed7271102(arg1)
    print("OnSubFailed7271102")
end

return Quest72711
