require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1027 = class("Quest1027", QuestActorProxy)
Quest1027.defaultAlias = "Quest1027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest1027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest1027:OnSubStartHandlerBuild()
    self.subStartHandlers = {["102701"] = self.OnSubStart102701}
end

function Quest1027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["102701"] = self.OnSubFinish102701}
end

function Quest1027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest1027:Start()
    print("Start")
end

function Quest1027:OnDestroy()
    print("OnDestroy")
end

function Quest1027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1027:OnSubStart102701(arg1)
    print("OnSubStart102701")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    end)
end

function Quest1027:OnSubFinish102701(arg1)
    print("OnSubFinish102701")
end

return Quest1027
