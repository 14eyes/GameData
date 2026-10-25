require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11024 = class("Quest11024", QuestActorProxy)
Quest11024.defaultAlias = "Quest11024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11024:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1102401"] = self.OnSubStart1102401, ["1102402"] = self.OnSubStart1102402}
end

function Quest11024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1102401"] = self.OnSubFinish1102401, ["1102402"] = self.OnSubFinish1102402}
end

function Quest11024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1102401"] = self.OnSubFailed1102401, ["1102402"] = self.OnSubFailed1102402}
end

function Quest11024:Start()
    print("Start")
end

function Quest11024:OnDestroy()
    print("OnDestroy")
end

function Quest11024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11024:PlayCS()
    print("ZL CS start:...")
    self:PlayCutsceneIndex(110240201, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest11024:BlackScreen()
    print("BlackScreen")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, self.PlayCS, nil, "")
end

function Quest11024:OnSubStart1102401(arg1)
    print("OnSubStart1102401")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10232Data.alias):DoFreeStyle(1120)
    end)
end

function Quest11024:OnSubFinish1102401(arg1)
    print("OnSubFinish1102401")
end

function Quest11024:OnSubFailed1102401(arg1)
    print("OnSubFailed1102401")
end

function Quest11024:OnSubStart1102402(arg1)
    print("OnSubStart1102402")
    self:ActionSafeCall(self.PlayCS)
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
end

function Quest11024:OnSubFinish1102402(arg1)
    print("OnSubFinish1102402")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor("Paimon", 3)
    end)
end

function Quest11024:OnSubFailed1102402(arg1)
    print("OnSubFailed1102402")
end

return Quest11024
