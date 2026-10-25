require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73105 = class("Quest73105", QuestActorProxy)
Quest73105.defaultAlias = "Quest73105"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73105:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310501"] = self.OnSubStart7310501,
        ["7310502"] = self.OnSubStart7310502,
        ["7310504"] = self.OnSubStart7310504,
        ["7310503"] = self.OnSubStart7310503,
        ["7310505"] = self.OnSubStart7310505,
        ["7310506"] = self.OnSubStart7310506,
        ["7310507"] = self.OnSubStart7310507,
        ["7310508"] = self.OnSubStart7310508
    }
end

function Quest73105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310501"] = self.OnSubFinish7310501,
        ["7310502"] = self.OnSubFinish7310502,
        ["7310504"] = self.OnSubFinish7310504,
        ["7310503"] = self.OnSubFinish7310503,
        ["7310505"] = self.OnSubFinish7310505,
        ["7310506"] = self.OnSubFinish7310506,
        ["7310507"] = self.OnSubFinish7310507,
        ["7310508"] = self.OnSubFinish7310508
    }
end

function Quest73105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73105:Start()
    print("Start")
end

function Quest73105:OnDestroy()
    print("OnDestroy")
end

function Quest73105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73105:OnSubStart7310501(arg1)
    print("OnSubStart7310501")
    self:CreateQuestNpc(arg1, npcs.Npc20774Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20774Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest73105:OnSubFinish7310501(arg1)
    print("OnSubFinish7310501")
end

function Quest73105:OnSubStart7310502(arg1)
    print("OnSubStart7310502")
    actorMgr:CreateActorWithPos("Q7310502Trigger", "Actor/Gadget/Q7310502Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310502_guide").pos, sceneData:GetDummyPoint(3, "Q7310502_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7310502TriggerNA", "Actor/Gadget/Q7310502TriggerNA", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310502_guide").pos, sceneData:GetDummyPoint(3, "Q7310502_guide").rot, true, false, 3)
end

function Quest73105:OnSubFinish7310502(arg1)
    print("OnSubFinish7310502")
end

function Quest73105:OnSubStart7310504(arg1)
    print("OnSubStart7310504")
end

function Quest73105:OnSubFinish7310504(arg1)
    print("OnSubFinish7310504")
end

function Quest73105:OnSubStart7310503(arg1)
    print("OnSubStart7310503")
    self:ClearNarratorTask()
    self:NarratorOnlyTask(datas.NarratorTable03Start, nil, "Story")
end

function Quest73105:OnSubFinish7310503(arg1)
    print("OnSubFinish7310503")
end

function Quest73105:OnSubStart7310505(arg1)
    print("OnSubStart7310505")
    if self:GetQuestVar(7310505, 3) == 0 then
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(7310505, npcs.Npc20775Data.id, 1)
            arg1:RequestInteraction(npcs.Npc20775Data.alias)
            arg1:SetQuestVarByMainId(3, 1)
        end, nil, nil, "", false, true)

        actorMgr:DestroyEntityActor("Q7310502Trigger", 3, false)
        actorMgr:DestroyEntityActor("Q7310502TriggerNA", 3, false)
    end
end

function Quest73105:OnSubFinish7310505(arg1)
    print("OnSubFinish7310505")
    self:SafeDestroyQuestNpc(npcs.Npc20775Data.alias, 3)
end

function Quest73105:OnSubStart7310506(arg1)
    print("OnSubStart7310506")
    self:CreateQuestNpc(arg1, npcs.Npc20776Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20776Data.alias):DoFreeStyle(1171, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.NPC20088Data.id, 2)
    actorMgr:CreateActorWithPos("Q7310506Trigger", "Actor/Gadget/Q7310506Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310506_guide").pos, sceneData:GetDummyPoint(3, "Q7310506_guide").rot, true, false, 3)
end

function Quest73105:OnSubFinish7310506(arg1)
    print("OnSubFinish7310506")
end

function Quest73105:OnSubStart7310507(arg1)
    print("OnSubStart7310507")
    self:GetQuestNpcActor(npcs.Npc20776Data.alias):DoFreeStyle(1171, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7310507Trigger", "Actor/Gadget/Q7310507Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310506_guide").pos, sceneData:GetDummyPoint(3, "Q7310506_guide").rot, true, false, 3)
end

function Quest73105:OnSubFinish7310507(arg1)
    print("OnSubFinish7310507")
end

function Quest73105:OnSubStart7310508(arg1)
    print("OnSubStart7310508")
    self:GetQuestNpcActor(npcs.Npc20776Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.NPC20088Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest73105:OnSubFinish7310508(arg1)
    print("OnSubFinish7310508")
    self:SafeDestroyQuestNpc(npcs.Npc20774Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20776Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.NPC20088Data.alias, 3)
end

return Quest73105
