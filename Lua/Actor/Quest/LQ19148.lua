require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19148 = class("Quest19148", QuestActorProxy)
Quest19148.defaultAlias = "Quest19148"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19148:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1914801"] = self.OnSubStart1914801,
        ["1914802"] = self.OnSubStart1914802,
        ["1914803"] = self.OnSubStart1914803,
        ["1914804"] = self.OnSubStart1914804,
        ["1914808"] = self.OnSubStart1914808,
        ["1914805"] = self.OnSubStart1914805,
        ["1914806"] = self.OnSubStart1914806,
        ["1914807"] = self.OnSubStart1914807
    }
end

function Quest19148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1914801"] = self.OnSubFinish1914801,
        ["1914802"] = self.OnSubFinish1914802,
        ["1914803"] = self.OnSubFinish1914803,
        ["1914804"] = self.OnSubFinish1914804,
        ["1914808"] = self.OnSubFinish1914808,
        ["1914805"] = self.OnSubFinish1914805,
        ["1914806"] = self.OnSubFinish1914806,
        ["1914807"] = self.OnSubFinish1914807
    }
end

function Quest19148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19148:Start()
    print("Start")
end

function Quest19148:OnDestroy()
    print("OnDestroy")
end

function Quest19148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19148:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12512Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12536Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12595Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12596Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19148Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19148TriggerForTure", 3, false)
    actorMgr:DestroyEntityActor("Q1914802Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914803TriggerEND", 3, false)
    actorMgr:DestroyEntityActor("Q1914804TriggerEND", 3, false)
    actorMgr:DestroyEntityActor("Q1914805Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q1914807Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914808Trigger", 3, false)
end

function Quest19148:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19148:OnSubStart1914801(arg1)
    print("OnSubStart1914801")
    self:CreateQuestNpc(arg1, npcs.Npc12536Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914801)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Coop_ShinobuData.alias):DoFreeStyle(1120, true, nil, true, true, false)
    end)
end

function Quest19148:OnSubFinish1914801(arg1)
    print("OnSubFinish1914801")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12536Data.alias, 3)
end

function Quest19148:OnSubStart1914802(arg1)
    print("OnSubStart1914802")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914802)
    actorMgr:CreateActorWithPos("Q1914802Trigger", "Actor/Gadget/Q1914802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914802_guide").pos, sceneData:GetDummyPoint(3, "Q1914802_guide").rot, true, false, 3)
end

function Quest19148:OnSubFinish1914802(arg1)
    print("OnSubFinish1914802")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
end

function Quest19148:OnSubStart1914803(arg1)
    print("OnSubStart1914803")
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1040, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12512Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12595Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12596Data.id, 4)
    actorMgr:CreateActorWithPos("Q1914803TriggerEND", "Actor/Gadget/Q1914803TriggerEND", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914803_guide").pos, sceneData:GetDummyPoint(3, "Q1914803_guide").rot, true, false, 3)
end

function Quest19148:OnSubFinish1914803(arg1)
    print("OnSubFinish1914803")
end

function Quest19148:OnSubStart1914804(arg1)
    print("OnSubStart1914804")
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1040, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q1914804TriggerEND", "Actor/Gadget/Q1914804TriggerEND", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914804_guide").pos, sceneData:GetDummyPoint(3, "Q1914804_guide").rot, true, false, 3)
end

function Quest19148:OnSubFinish1914804(arg1)
    print("OnSubFinish1914804")
end

function Quest19148:OnSubStart1914808(arg1)
    print("OnSubStart1914808")
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1040, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q1914808Trigger", "Actor/Gadget/Q1914808Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914805_C1914805_N12512").pos, sceneData:GetDummyPoint(3, "Q1914805_C1914805_N12512").rot, true, false, 3)
end

function Quest19148:OnSubFinish1914808(arg1)
    print("OnSubFinish1914808")
    self:ActorDestroy("Q1914808Trigger")
    self:ActorDestroy("Q1914803TriggerEND")
    self:ActorDestroy("Q1914804TriggerEND")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1914805_C1914805_N12512").pos, 1, 2, true, false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 19148)
end

function Quest19148:OnSubStart1914805(arg1)
    print("OnSubStart1914805")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914805)
    actorMgr:CreateActorWithPos("Q1914805Trigger", "Actor/Gadget/Q1914805Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914805_C1914805_N12512").pos, sceneData:GetDummyPoint(3, "Q1914805_C1914805_N12512").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1040, true, nil, true, true, false)
end

function Quest19148:OnSubFinish1914805(arg1)
    print("OnSubFinish1914805")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12512Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12595Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12596Data.alias, 3)
    self:ActorDestroy("Q1914805Trigger")
end

function Quest19148:OnSubStart1914806(arg1)
    print("OnSubStart1914806")
end

function Quest19148:OnSubFinish1914806(arg1)
    print("OnSubFinish1914806")
end

function Quest19148:OnSubStart1914807(arg1)
    print("OnSubStart1914807")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914807)
    actorMgr:CreateActorWithPos("Q1914807Trigger", "Actor/Gadget/Q1914807Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914807_C1914807_N510").pos, sceneData:GetDummyPoint(3, "Q1914807_C1914807_N510").rot, true, false, 3)
end

function Quest19148:OnSubFinish1914807(arg1)
    print("OnSubFinish1914807")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:ActorDestroy("Q1914807Trigger")
end

return Quest19148
