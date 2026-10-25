require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73188 = class("Quest73188", QuestActorProxy)
Quest73188.defaultAlias = "Quest73188"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73188:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73188:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318801"] = self.OnSubStart7318801,
        ["7318802"] = self.OnSubStart7318802,
        ["7318803"] = self.OnSubStart7318803
    }
end

function Quest73188:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318801"] = self.OnSubFinish7318801,
        ["7318802"] = self.OnSubFinish7318802,
        ["7318803"] = self.OnSubFinish7318803
    }
end

function Quest73188:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73188:Start()
    print("Start")
end

function Quest73188:OnDestroy()
    print("OnDestroy")
end

function Quest73188:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73188:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73188:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73188:OnSubStart7318801(arg1)
    print("OnSubStart7318801")
    self:CreateQuestNpc(arg1, npcs.Npc20850Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20851Data.id, 2)
end

function Quest73188:OnSubFinish7318801(arg1)
    print("OnSubFinish7318801")
end

function Quest73188:OnSubStart7318802(arg1)
    print("OnSubStart7318802")
    self:CreateQuestNpc(arg1, npcs.Npc20848Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20849Data.id, 2)
    actorMgr:CreateActorWithPos("Q7318802Trigger", "Actor/Gadget/Q7318802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318802_guide_02").pos, sceneData:GetDummyPoint(3, "Q7318802_guide_02").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20848Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20849Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest73188:OnSubFinish7318802(arg1)
    print("OnSubFinish7318802")
end

function Quest73188:OnSubStart7318803(arg1)
    print("OnSubStart7318803")
    self:GetQuestNpcActor(npcs.Npc20848Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20849Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest73188:OnSubFinish7318803(arg1)
    print("OnSubFinish7318803")
    self:SafeDestroyQuestNpc(npcs.Npc20848Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20849Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20850Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20851Data.alias, 3)
end

return Quest73188
