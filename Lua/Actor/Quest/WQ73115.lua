require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73115 = class("Quest73115", QuestActorProxy)
Quest73115.defaultAlias = "Quest73115"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73115:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311501"] = self.OnSubStart7311501,
        ["7311502"] = self.OnSubStart7311502,
        ["7311503"] = self.OnSubStart7311503,
        ["7311504"] = self.OnSubStart7311504,
        ["7311505"] = self.OnSubStart7311505,
        ["7311506"] = self.OnSubStart7311506,
        ["7311507"] = self.OnSubStart7311507,
        ["7311508"] = self.OnSubStart7311508
    }
end

function Quest73115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311501"] = self.OnSubFinish7311501,
        ["7311502"] = self.OnSubFinish7311502,
        ["7311503"] = self.OnSubFinish7311503,
        ["7311504"] = self.OnSubFinish7311504,
        ["7311505"] = self.OnSubFinish7311505,
        ["7311506"] = self.OnSubFinish7311506,
        ["7311507"] = self.OnSubFinish7311507,
        ["7311508"] = self.OnSubFinish7311508
    }
end

function Quest73115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73115:Start()
    print("Start")
end

function Quest73115:OnDestroy()
    print("OnDestroy")
end

function Quest73115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73115:OnSubStart7311501(arg1)
    print("OnSubStart7311501")
end

function Quest73115:OnSubFinish7311501(arg1)
    print("OnSubFinish7311501")
end

function Quest73115:OnSubStart7311502(arg1)
    print("OnSubStart7311502")
    self:CreateQuestNpc(arg1, npcs.Npc20756Data.id, 1)
end

function Quest73115:OnSubFinish7311502(arg1)
    print("OnSubFinish7311502")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20756Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73115:OnSubStart7311503(arg1)
    print("OnSubStart7311503")
end

function Quest73115:OnSubFinish7311503(arg1)
    print("OnSubFinish7311503")
end

function Quest73115:OnSubStart7311504(arg1)
    print("OnSubStart7311504")
end

function Quest73115:OnSubFinish7311504(arg1)
    print("OnSubFinish7311504")
end

function Quest73115:OnSubStart7311505(arg1)
    print("OnSubStart7311505")
end

function Quest73115:OnSubFinish7311505(arg1)
    print("OnSubFinish7311505")
end

function Quest73115:OnSubStart7311506(arg1)
    print("OnSubStart7311506")
end

function Quest73115:OnSubFinish7311506(arg1)
    print("OnSubFinish7311506")
end

function Quest73115:OnSubStart7311507(arg1)
    print("OnSubStart7311507")
end

function Quest73115:OnSubFinish7311507(arg1)
    print("OnSubFinish7311507")
end

function Quest73115:OnSubStart7311508(arg1)
    print("OnSubStart7311508")
end

function Quest73115:OnSubFinish7311508(arg1)
    print("OnSubFinish7311508")
end

return Quest73115
