require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23017 = class("Quest23017", QuestActorProxy)
Quest23017.defaultAlias = "Quest23017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301701"] = self.OnSubStart2301701,
        ["2301702"] = self.OnSubStart2301702,
        ["2301703"] = self.OnSubStart2301703,
        ["2301704"] = self.OnSubStart2301704
    }
end

function Quest23017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301701"] = self.OnSubFinish2301701,
        ["2301702"] = self.OnSubFinish2301702,
        ["2301703"] = self.OnSubFinish2301703,
        ["2301704"] = self.OnSubFinish2301704
    }
end

function Quest23017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23017:Start()
    print("Start")
end

function Quest23017:OnDestroy()
    print("OnDestroy")
end

function Quest23017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23017:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12700Data.alias, 3)
    actorMgr:DestroyEntityActor("Q23017DestroyNPCTrigger", 3, false)
end

function Quest23017:OnSubStart2301701(arg1)
    print("OnSubStart2301701")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12700Data.id, 3)
end

function Quest23017:OnSubFinish2301701(arg1)
    print("OnSubFinish2301701")
end

function Quest23017:OnSubStart2301702(arg1)
    print("OnSubStart2301702")
end

function Quest23017:OnSubFinish2301702(arg1)
    print("OnSubFinish2301702")
end

function Quest23017:OnSubStart2301703(arg1)
    print("OnSubStart2301703")
end

function Quest23017:OnSubFinish2301703(arg1)
    print("OnSubFinish2301703")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc20657Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc20658Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12700Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest23017:OnSubStart2301704(arg1)
    print("OnSubStart2301704")
end

function Quest23017:OnSubFinish2301704(arg1)
    print("OnSubFinish2301704")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc20657Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc20658Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12700Data.alias, 3)
    end, nil, nil, "", false, true)
end

return Quest23017
