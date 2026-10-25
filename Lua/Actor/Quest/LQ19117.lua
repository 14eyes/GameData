require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19117 = class("Quest19117", QuestActorProxy)
Quest19117.defaultAlias = "Quest19117"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19117:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19117:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1911701"] = self.OnSubStart1911701,
        ["1911702"] = self.OnSubStart1911702,
        ["1911703"] = self.OnSubStart1911703,
        ["1911704"] = self.OnSubStart1911704,
        ["1911705"] = self.OnSubStart1911705
    }
end

function Quest19117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1911701"] = self.OnSubFinish1911701,
        ["1911702"] = self.OnSubFinish1911702,
        ["1911703"] = self.OnSubFinish1911703,
        ["1911704"] = self.OnSubFinish1911704,
        ["1911705"] = self.OnSubFinish1911705
    }
end

function Quest19117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1911701"] = self.OnSubFailed1911701,
        ["1911702"] = self.OnSubFailed1911702,
        ["1911703"] = self.OnSubFailed1911703,
        ["1911704"] = self.OnSubFailed1911704,
        ["1911705"] = self.OnSubFailed1911705
    }
end

function Quest19117:Start()
    print("Start")
end

function Quest19117:OnDestroy()
    print("OnDestroy")
end

function Quest19117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19117:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12156Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12159Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12280Data.alias, 3)
end

function Quest19117:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Show Ema UI")
        actorMgr:GetActor(clientData.ActorAlias):ShowTutorialDialog(288)
    end
end

function Quest19117:OnSubStart1911701(arg1)
    print("OnSubStart1911701")
    self:CreateQuestNpcWithTrigger("1911701trigger", subIDs.q1911701, npcs.Npc12156Data.id, 1, 15)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911701)
end

function Quest19117:OnSubFinish1911701(arg1)
    print("OnSubFinish1911701")
end

function Quest19117:OnSubFailed1911701(arg1)
    print("OnSubFailed1911701")
end

function Quest19117:OnSubStart1911702(arg1)
    print("OnSubStart1911702")
end

function Quest19117:OnSubFinish1911702(arg1)
    print("OnSubFinish1911702")
end

function Quest19117:OnSubFailed1911702(arg1)
    print("OnSubFailed1911702")
end

function Quest19117:OnSubStart1911703(arg1)
    print("OnSubStart1911703")
    self:CreateQuestNpc(arg1, npcs.Npc12156Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911702)
end

function Quest19117:OnSubFinish1911703(arg1)
    print("OnSubFinish1911703")
end

function Quest19117:OnSubFailed1911703(arg1)
    print("OnSubFailed1911703")
end

function Quest19117:OnSubStart1911704(arg1)
    print("OnSubStart1911704")
    self:CreateQuestNpc(arg1, npcs.Npc12159Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911703)
end

function Quest19117:OnSubFinish1911704(arg1)
    print("OnSubFinish1911704")
    self:SafeDestroyQuestNpc(npcs.Npc12156Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12159Data.alias, 3)
end

function Quest19117:OnSubFailed1911704(arg1)
    print("OnSubFailed1911704")
end

function Quest19117:OnSubStart1911705(arg1)
    print("OnSubStart1911705")
    self:CreateQuestNpc(arg1, npcs.Npc12280Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911704)
end

function Quest19117:OnSubFinish1911705(arg1)
    print("OnSubFinish1911705")
    self:SafeDestroyQuestNpc(npcs.Npc12280Data.alias, 3)
end

function Quest19117:OnSubFailed1911705(arg1)
    print("OnSubFailed1911705")
end

return Quest19117
