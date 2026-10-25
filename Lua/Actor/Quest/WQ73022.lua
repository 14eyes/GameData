require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73022 = class("Quest73022", QuestActorProxy)
Quest73022.defaultAlias = "Quest73022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302201"] = self.OnSubStart7302201,
        ["7302202"] = self.OnSubStart7302202,
        ["7302205"] = self.OnSubStart7302205,
        ["7302206"] = self.OnSubStart7302206,
        ["7302210"] = self.OnSubStart7302210,
        ["7302207"] = self.OnSubStart7302207,
        ["7302208"] = self.OnSubStart7302208,
        ["7302209"] = self.OnSubStart7302209,
        ["7302203"] = self.OnSubStart7302203,
        ["7302204"] = self.OnSubStart7302204
    }
end

function Quest73022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302201"] = self.OnSubFinish7302201,
        ["7302202"] = self.OnSubFinish7302202,
        ["7302205"] = self.OnSubFinish7302205,
        ["7302206"] = self.OnSubFinish7302206,
        ["7302210"] = self.OnSubFinish7302210,
        ["7302207"] = self.OnSubFinish7302207,
        ["7302208"] = self.OnSubFinish7302208,
        ["7302209"] = self.OnSubFinish7302209,
        ["7302203"] = self.OnSubFinish7302203,
        ["7302204"] = self.OnSubFinish7302204
    }
end

function Quest73022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73022:Start()
    print("Start")
end

function Quest73022:OnDestroy()
    print("OnDestroy")
end

function Quest73022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73022:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73022:OnSubStart7302201(arg1)
    print("OnSubStart7302201")
    self:CreateQuestNpc(arg1, npcs.Npc20653Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73022:OnSubFinish7302201(arg1)
    print("OnSubFinish7302201")
end

function Quest73022:OnSubStart7302202(arg1)
    print("OnSubStart7302202")
end

function Quest73022:OnSubFinish7302202(arg1)
    print("OnSubFinish7302202")
end

function Quest73022:OnSubStart7302205(arg1)
    print("OnSubStart7302205")
    actorMgr:CreateActorWithPos("Q73022Trigger_7302205", "Actor/Gadget/Q73022Trigger_7302205", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302202_guide").pos, sceneData:GetDummyPoint(3, "Q7302202_guide").rot, true, false, 3)
end

function Quest73022:OnSubFinish7302205(arg1)
    print("OnSubFinish7302205")
end

function Quest73022:OnSubStart7302206(arg1)
    print("OnSubStart7302206")
    actorMgr:CreateActorWithPos("Q73022Trigger_7302206", "Actor/Gadget/Q73022Trigger_7302206", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302201_N4195").pos, sceneData:GetDummyPoint(3, "Q7302201_N4195").rot, true, false, 3)
end

function Quest73022:OnSubFinish7302206(arg1)
    print("OnSubFinish7302206")
    self:ActorDestroy("Q73022Trigger_7302205")
end

function Quest73022:OnSubStart7302210(arg1)
    print("OnSubStart7302210")
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73022:OnSubFinish7302210(arg1)
    print("OnSubFinish7302210")
end

function Quest73022:OnSubStart7302207(arg1)
    print("OnSubStart7302207")
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73022:OnSubFinish7302207(arg1)
    print("OnSubFinish7302207")
end

function Quest73022:OnSubStart7302208(arg1)
    print("OnSubStart7302208")
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73022:OnSubFinish7302208(arg1)
    print("OnSubFinish7302208")
    self:NarratorOnlyTask(datas.Reminder_7302208, nil, "")
end

function Quest73022:OnSubStart7302209(arg1)
    print("OnSubStart7302209")
    self:GetQuestNpcActor(npcs.Npc20653Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73022:OnSubFinish7302209(arg1)
    print("OnSubFinish7302209")
    self:SafeDestroyQuestNpc(npcs.Npc20653Data.alias, 3)
end

function Quest73022:OnSubStart7302203(arg1)
    print("OnSubStart7302203")
    actorMgr:CreateActorWithPos("Q73022Trigger_7302203", "Actor/Gadget/Q73022Trigger_7302203", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302206_N4195").pos, sceneData:GetDummyPoint(3, "Q7302206_N4195").rot, true, false, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20653Data.alias, 3)
end

function Quest73022:OnSubFinish7302203(arg1)
    print("OnSubFinish7302203")
end

function Quest73022:OnSubStart7302204(arg1)
    print("OnSubStart7302204")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20653Data.id, 1, npcs.Npc20653Data.alias)
end

function Quest73022:OnSubFinish7302204(arg1)
    print("OnSubFinish7302204")
end

return Quest73022
