require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72718 = class("Quest72718", QuestActorProxy)
Quest72718.defaultAlias = "Quest72718"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72718:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72718:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271801"] = self.OnSubStart7271801, ["7271802"] = self.OnSubStart7271802}
end

function Quest72718:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271801"] = self.OnSubFinish7271801, ["7271802"] = self.OnSubFinish7271802}
end

function Quest72718:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271801"] = self.OnSubFailed7271801, ["7271802"] = self.OnSubFailed7271802}
end

function Quest72718:Start()
    print("Start")
end

function Quest72718:OnDestroy()
    print("OnDestroy")
end

function Quest72718:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72718:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72718:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3018Data.alias, 0, true)
end

function Quest72718:OnSubStart7271801(arg1)
    print("OnSubStart7271801")
    self:NotifyTo(npcs.Npc3018Data.alias, 2, true)
end

function Quest72718:OnSubFinish7271801(arg1)
    print("OnSubFinish7271801")
end

function Quest72718:OnSubFailed7271801(arg1)
    print("OnSubFailed7271801")
end

function Quest72718:OnSubStart7271802(arg1)
    print("OnSubStart7271802")
end

function Quest72718:OnSubFinish7271802(arg1)
    print("OnSubFinish7271802")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3018Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72718:OnSubFailed7271802(arg1)
    print("OnSubFailed7271802")
end

return Quest72718
