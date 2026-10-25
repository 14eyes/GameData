require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22018 = class("Quest22018", QuestActorProxy)
Quest22018.defaultAlias = "Quest22018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201801"] = self.OnSubStart2201801,
        ["2201802"] = self.OnSubStart2201802,
        ["2201803"] = self.OnSubStart2201803,
        ["2201804"] = self.OnSubStart2201804,
        ["2201805"] = self.OnSubStart2201805
    }
end

function Quest22018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201801"] = self.OnSubFinish2201801,
        ["2201802"] = self.OnSubFinish2201802,
        ["2201803"] = self.OnSubFinish2201803,
        ["2201804"] = self.OnSubFinish2201804,
        ["2201805"] = self.OnSubFinish2201805
    }
end

function Quest22018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201801"] = self.OnSubFailed2201801,
        ["2201802"] = self.OnSubFailed2201802,
        ["2201803"] = self.OnSubFailed2201803,
        ["2201804"] = self.OnSubFailed2201804,
        ["2201805"] = self.OnSubFailed2201805
    }
end

function Quest22018:Start()
    print("Start")
end

function Quest22018:OnDestroy()
    print("OnDestroy")
end

function Quest22018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3005Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12108Data.alias, 3)
end

function Quest22018:OnSubStart2201801(arg1)
    print("OnSubStart2201801")
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
end

function Quest22018:OnSubFinish2201801(arg1)
    print("OnSubFinish2201801")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end, nil, nil, "")
end

function Quest22018:OnSubFailed2201801(arg1)
    print("OnSubFailed2201801")
end

function Quest22018:OnSubStart2201802(arg1)
    print("OnSubStart2201802")
    self:CreateQuestNpc(arg1, npcs.Npc12108Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12108Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22018:OnSubFinish2201802(arg1)
    print("OnSubFinish2201802")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3015Data.id, 0)
    end, nil, nil, "")
end

function Quest22018:OnSubFailed2201802(arg1)
    print("OnSubFailed2201802")
end

function Quest22018:OnSubStart2201803(arg1)
    print("OnSubStart2201803")
    self:GetQuestNpcActor(npcs.Npc12108Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22018:OnSubFinish2201803(arg1)
    print("OnSubFinish2201803")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3005Data.id, 0)
        arg1_2:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1_2:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end, nil, nil, "")
end

function Quest22018:OnSubFailed2201803(arg1)
    print("OnSubFailed2201803")
end

function Quest22018:OnSubStart2201804(arg1)
    print("OnSubStart2201804")
    self:GetQuestNpcActor(npcs.Npc12108Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22018:OnSubFinish2201804(arg1)
    print("OnSubFinish2201804")
end

function Quest22018:OnSubFailed2201804(arg1)
    print("OnSubFailed2201804")
end

function Quest22018:OnSubStart2201805(arg1)
    print("OnSubStart2201805")
    self:GetQuestNpcActor(npcs.Npc12108Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22018:OnSubFinish2201805(arg1)
    print("OnSubFinish2201805")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3015Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3005Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3001Data.alias, 3)
    end, nil, nil, "")
end

function Quest22018:OnSubFailed2201805(arg1)
    print("OnSubFailed2201805")
end

return Quest22018
