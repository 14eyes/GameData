require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11018 = class("Quest11018", QuestActorProxy)
Quest11018.defaultAlias = "Quest11018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101801"] = self.OnSubStart1101801,
        ["1101802"] = self.OnSubStart1101802,
        ["1101803"] = self.OnSubStart1101803,
        ["1101804"] = self.OnSubStart1101804,
        ["1101807"] = self.OnSubStart1101807,
        ["1101808"] = self.OnSubStart1101808,
        ["1101809"] = self.OnSubStart1101809,
        ["1101805"] = self.OnSubStart1101805,
        ["1101810"] = self.OnSubStart1101810,
        ["1101806"] = self.OnSubStart1101806
    }
end

function Quest11018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101801"] = self.OnSubFinish1101801,
        ["1101802"] = self.OnSubFinish1101802,
        ["1101803"] = self.OnSubFinish1101803,
        ["1101804"] = self.OnSubFinish1101804,
        ["1101807"] = self.OnSubFinish1101807,
        ["1101808"] = self.OnSubFinish1101808,
        ["1101809"] = self.OnSubFinish1101809,
        ["1101805"] = self.OnSubFinish1101805,
        ["1101810"] = self.OnSubFinish1101810,
        ["1101806"] = self.OnSubFinish1101806
    }
end

function Quest11018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest11018:Start()
    print("Start")
end

function Quest11018:OnDestroy()
    print("OnDestroy")
end

function Quest11018:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
end

function Quest11018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2003Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12499Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12500Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12403Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12537Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12538Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12534Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2036Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2070Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2029Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2036Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1101802Trigger", 3, false)
end

function Quest11018:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11018:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest11018:FuncFreestylePreLoad()
    print("FuncFreestylePreLoad")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2003Data.alias)
    questNpcActor:DoFreeStyle(8040, true, nil, true, true, false)
    questNpcActor:DoFreeStyle(8064, true, nil, true, true, false)
end

function Quest11018:OnSubStart1101801(arg1)
    print("OnSubStart1101801")
    self:CreateQuestNpcWithTrigger("Q1101801Trigger", 1101801, 2029, 1, 30)
end

function Quest11018:OnSubFinish1101801(arg1)
    print("OnSubFinish1101801")
    self:SafeDestroyQuestNpc(npcs.Npc2029Data.alias, 3)
end

function Quest11018:OnSubStart1101802(arg1)
    print("OnSubStart1101802")
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc2003Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1101802Trigger", "Actor/Gadget/Q1101802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101802").pos, sceneData:GetDummyPoint(3, "guide_Q1101802").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair(0)
end

function Quest11018:OnSubFinish1101802(arg1)
    print("OnSubFinish1101802")
end

function Quest11018:OnSubStart1101803(arg1)
    print("OnSubStart1101803")
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1101803Trigger", "Actor/Gadget/Q1101803Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101802").pos, sceneData:GetDummyPoint(3, "guide_Q1101802").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair(0)
end

function Quest11018:OnSubFinish1101803(arg1)
    print("OnSubFinish1101803")
end

function Quest11018:OnSubStart1101804(arg1)
    print("OnSubStart1101804")
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12498Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12499Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12500Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12534Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12534Data.alias):DoFreeStyle(4140, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc2070Data.alias, 2, true)
    self:CreateQuestNpcWithTriggerBlack("Q1101804Trigger", 1101804, 1048, 4, 35, 1)
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair(8040)
end

function Quest11018:OnSubFinish1101804(arg1)
    print("OnSubFinish1101804")
end

function Quest11018:OnSubStart1101807(arg1)
    print("OnSubStart1101807")
end

function Quest11018:OnSubFinish1101807(arg1)
    print("OnSubFinish1101807")
end

function Quest11018:OnSubStart1101808(arg1)
    print("OnSubStart1101808")
end

function Quest11018:OnSubFinish1101808(arg1)
    print("OnSubFinish1101808")
end

function Quest11018:OnSubStart1101809(arg1)
    print("OnSubStart1101809")
end

function Quest11018:OnSubFinish1101809(arg1)
    print("OnSubFinish1101809")
end

function Quest11018:OnSubStart1101805(arg1)
    print("OnSubStart1101805")
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12403Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12537Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12538Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12534Data.alias):DoFreeStyle(4140, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc2070Data.alias, 2, true)
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair(8040)
    self:GetQuestNpcActor(npcs.Npc12498Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12499Data.alias):SitOnChair(0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12500Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:DoFreeStyle(8040, true, nil, true, true, false)
end

function Quest11018:OnSubFinish1101805(arg1)
    print("OnSubFinish1101805")
    self:SafeDestroyQuestNpc(npcs.Npc12403Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12537Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12538Data.alias, 3)
end

function Quest11018:OnSubStart1101810(arg1)
    print("OnSubStart1101810")
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12534Data.alias):DoFreeStyle(4140, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair(8040)
    self:GetQuestNpcActor(npcs.Npc12498Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12499Data.alias):SitOnChair(0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12500Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:DoFreeStyle(8040, true, nil, true, true, false)
end

function Quest11018:OnSubFinish1101810(arg1)
    print("OnSubFinish1101810")
    self:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12499Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12500Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11018:OnSubStart1101806(arg1)
    print("OnSubStart1101806")
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc2003Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12534Data.alias):DoFreeStyle(4140, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair(8040)
end

function Quest11018:OnSubFinish1101806(arg1)
    print("OnSubFinish1101806")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2003Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc12534Data.alias, 3)
end

return Quest11018
