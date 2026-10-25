require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3027 = class("Quest3027", QuestActorProxy)
Quest3027.defaultAlias = "Quest3027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest3027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest3027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302702"] = self.OnSubStart302702,
        ["302703"] = self.OnSubStart302703,
        ["302701"] = self.OnSubStart302701
    }
end

function Quest3027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302702"] = self.OnSubFinish302702,
        ["302703"] = self.OnSubFinish302703,
        ["302701"] = self.OnSubFinish302701
    }
end

function Quest3027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3027:Start()
    print("Start")
end

function Quest3027:OnDestroy()
    print("OnDestroy")
end

function Quest3027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
    self:SafeDestroyQuestNpc(npcs.Npc12952Data.alias, 3)
end

function Quest3027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        self:GetQuestNpcActor(npcs.Npc12952Data.alias):SetVisible(false)
        self:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor(npcs.Npc12952Data.alias):SetVisible(true)
        end)
    end
end

function Quest3027:OnSubStart302702(arg1)
    print("OnSubStart302702")
    self:CreateQuestNpc(arg1, npcs.Npc12952Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12952Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest3027:OnSubFinish302702(arg1)
    print("OnSubFinish302702")
    self:SafeDestroyQuestNpc(npcs.Npc12952Data.alias, 3)
end

function Quest3027:OnSubStart302703(arg1)
    print("OnSubStart302703")
end

function Quest3027:OnSubFinish302703(arg1)
    print("OnSubFinish302703")
end

function Quest3027:OnSubStart302701(arg1)
    print("OnSubStart302701")
    self:CreateQuestNpc(arg1, npcs.Npc1056Data.id, 1)
end

function Quest3027:OnSubFinish302701(arg1)
    print("OnSubFinish302701")
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

return Quest3027
