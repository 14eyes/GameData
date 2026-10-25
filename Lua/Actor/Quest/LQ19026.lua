require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19026 = class("Quest19026", QuestActorProxy)
Quest19026.defaultAlias = "Quest19026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902601"] = self.OnSubStart1902601,
        ["1902602"] = self.OnSubStart1902602,
        ["1902603"] = self.OnSubStart1902603,
        ["1902604"] = self.OnSubStart1902604,
        ["1902605"] = self.OnSubStart1902605,
        ["1902606"] = self.OnSubStart1902606,
        ["1902607"] = self.OnSubStart1902607
    }
end

function Quest19026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902601"] = self.OnSubFinish1902601,
        ["1902602"] = self.OnSubFinish1902602,
        ["1902603"] = self.OnSubFinish1902603,
        ["1902604"] = self.OnSubFinish1902604,
        ["1902605"] = self.OnSubFinish1902605,
        ["1902606"] = self.OnSubFinish1902606,
        ["1902607"] = self.OnSubFinish1902607
    }
end

function Quest19026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902601"] = self.OnSubFailed1902601,
        ["1902602"] = self.OnSubFailed1902602,
        ["1902603"] = self.OnSubFailed1902603,
        ["1902604"] = self.OnSubFailed1902604,
        ["1902605"] = self.OnSubFailed1902605,
        ["1902606"] = self.OnSubFailed1902606,
        ["1902607"] = self.OnSubFailed1902607
    }
end

function Quest19026:Start()
    print("Start")
end

function Quest19026:OnDestroy()
    print("OnDestroy")
end

function Quest19026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12205Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12206Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12207Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19026Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19026Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19026Trigger2", 3, false)
end

function Quest19026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1902607 then
        actorUtils.FinishQuestID(false, 1902607)
    elseif arg1 == 1902601 then
        print("readpage")
        self:ShowReadingDialog(101606)
    end
end

function Quest19026:OnSubStart1902601(arg1)
    print("OnSubStart1902601")
    self:CreateQuestNpc(arg1, npcs.Npc12205Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12206Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12207Data.id, 4)
    actorMgr:CreateActorWithPos("Q19026Trigger", "Actor/Gadget/Q19026Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q19026_NPCB").pos, sceneData:GetDummyPoint(3, "Q19026_NPCB").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    end)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902601)
    self:GetQuestNpcActor(npcs.Npc12205Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12206Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12207Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
end

function Quest19026:OnSubFinish1902601(arg1)
    print("OnSubFinish1902601")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:RequestInteraction(npcs.Npc12205Data.alias)
end

function Quest19026:OnSubFailed1902601(arg1)
    print("OnSubFailed1902601")
end

function Quest19026:OnSubStart1902602(arg1)
    print("OnSubStart1902602")
end

function Quest19026:OnSubFinish1902602(arg1)
    print("OnSubFinish1902602")
end

function Quest19026:OnSubFailed1902602(arg1)
    print("OnSubFailed1902602")
end

function Quest19026:OnSubStart1902603(arg1)
    print("OnSubStart1902603")
    actorMgr:CreateActorWithPos("Q19026Trigger1", "Actor/Gadget/Q19026Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q19026_Wulang1").pos, sceneData:GetDummyPoint(3, "Q19026_Wulang1").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12205Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
        arg1:GetQuestNpcActor(npcs.Npc12206Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
        arg1:GetQuestNpcActor(npcs.Npc12207Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
    end)
end

function Quest19026:OnSubFinish1902603(arg1)
    print("OnSubFinish1902603")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902604, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902602)
end

function Quest19026:OnSubFailed1902603(arg1)
    print("OnSubFailed1902603")
end

function Quest19026:OnSubStart1902604(arg1)
    print("OnSubStart1902604")
end

function Quest19026:OnSubFinish1902604(arg1)
    print("OnSubFinish1902604")
end

function Quest19026:OnSubFailed1902604(arg1)
    print("OnSubFailed1902604")
end

function Quest19026:OnSubStart1902605(arg1)
    print("OnSubStart1902605")
    actorMgr:CreateActorWithPos("Q19026Trigger2", "Actor/Gadget/Q19026Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q19026_NPCB").pos, sceneData:GetDummyPoint(3, "Q19026_NPCB").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12205Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12206Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12207Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
end

function Quest19026:OnSubFinish1902605(arg1)
    print("OnSubFinish1902605")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902606, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902603)
end

function Quest19026:OnSubFailed1902605(arg1)
    print("OnSubFailed1902605")
end

function Quest19026:OnSubStart1902606(arg1)
    print("OnSubStart1902606")
end

function Quest19026:OnSubFinish1902606(arg1)
    print("OnSubFinish1902606")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc12205Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12206Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12207Data.alias, 3)
    end)
end

function Quest19026:OnSubFailed1902606(arg1)
    print("OnSubFailed1902606")
end

function Quest19026:OnSubStart1902607(arg1)
    print("OnSubStart1902607")
end

function Quest19026:OnSubFinish1902607(arg1)
    print("OnSubFinish1902607")
end

function Quest19026:OnSubFailed1902607(arg1)
    print("OnSubFailed1902607")
end

return Quest19026
