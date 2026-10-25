require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19018 = class("Quest19018", QuestActorProxy)
Quest19018.defaultAlias = "Quest19018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901801"] = self.OnSubStart1901801,
        ["1901805"] = self.OnSubStart1901805,
        ["1901802"] = self.OnSubStart1901802,
        ["1901803"] = self.OnSubStart1901803,
        ["1901804"] = self.OnSubStart1901804
    }
end

function Quest19018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901801"] = self.OnSubFinish1901801,
        ["1901805"] = self.OnSubFinish1901805,
        ["1901802"] = self.OnSubFinish1901802,
        ["1901803"] = self.OnSubFinish1901803,
        ["1901804"] = self.OnSubFinish1901804
    }
end

function Quest19018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901801"] = self.OnSubFailed1901801,
        ["1901805"] = self.OnSubFailed1901805,
        ["1901802"] = self.OnSubFailed1901802,
        ["1901803"] = self.OnSubFailed1901803,
        ["1901804"] = self.OnSubFailed1901804
    }
end

function Quest19018:Start()
    print("Start")
end

function Quest19018:OnDestroy()
    print("OnDestroy")
end

function Quest19018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3045Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19018Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19018Trigger1", 3, false)
end

function Quest19018:OnSubStart1901801(arg1)
    print("OnSubStart1901801")
    self:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(105501, 1901803)
    self:NotifyTo(npcs.Npc3045Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19018Trigger1", "Actor/Gadget/Q19018Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q19018_Talk1").pos, sceneData:GetDummyPoint(3, "Q19018_Talk1").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1034Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest19018:OnSubFinish1901801(arg1)
    print("OnSubFinish1901801")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:RequestInteraction(npcs.Coop_GorouData.alias)
        end, nil, nil, "QUEST_Message_Q1901803", false, false)

        arg1:RequestCoopInteractionFromSubStartPoint(105501, 1901801)
    end)
end

function Quest19018:OnSubFailed1901801(arg1)
    print("OnSubFailed1901801")
end

function Quest19018:OnSubStart1901805(arg1)
    print("OnSubStart1901805")
    self:RequestCoopInteractionFromSubStartPoint(105501, 1901801)
    self:NotifyTo(npcs.Npc3045Data.alias, 1, true)
end

function Quest19018:OnSubFinish1901805(arg1)
    print("OnSubFinish1901805")
    self:LightNotifyTo(npcs.Npc3045Data.alias, 0, true)
end

function Quest19018:OnSubFailed1901805(arg1)
    print("OnSubFailed1901805")
end

function Quest19018:OnSubStart1901802(arg1)
    print("OnSubStart1901802")
end

function Quest19018:OnSubFinish1901802(arg1)
    print("OnSubFinish1901802")
end

function Quest19018:OnSubFailed1901802(arg1)
    print("OnSubFailed1901802")
end

function Quest19018:OnSubStart1901803(arg1)
    print("OnSubStart1901803")
    actorMgr:CreateActorWithPos("Q19018Trigger", "Actor/Gadget/Q19018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q19018_Wulang2").pos, sceneData:GetDummyPoint(3, "Q19018_Wulang2").rot, true, false, 3)
end

function Quest19018:OnSubFinish1901803(arg1)
    print("OnSubFinish1901803")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1901804, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1901802)
end

function Quest19018:OnSubFailed1901803(arg1)
    print("OnSubFailed1901803")
end

function Quest19018:OnSubStart1901804(arg1)
    print("OnSubStart1901804")
end

function Quest19018:OnSubFinish1901804(arg1)
    print("OnSubFinish1901804")
end

function Quest19018:OnSubFailed1901804(arg1)
    print("OnSubFailed1901804")
end

return Quest19018
