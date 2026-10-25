require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40171 = class("Quest40171", QuestActorProxy)
Quest40171.defaultAlias = "Quest40171"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40171:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40171:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4017101"] = self.OnSubStart4017101,
        ["4017102"] = self.OnSubStart4017102,
        ["4017103"] = self.OnSubStart4017103,
        ["4017107"] = self.OnSubStart4017107,
        ["4017104"] = self.OnSubStart4017104,
        ["4017108"] = self.OnSubStart4017108,
        ["4017105"] = self.OnSubStart4017105,
        ["4017106"] = self.OnSubStart4017106
    }
end

function Quest40171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4017101"] = self.OnSubFinish4017101,
        ["4017102"] = self.OnSubFinish4017102,
        ["4017103"] = self.OnSubFinish4017103,
        ["4017107"] = self.OnSubFinish4017107,
        ["4017104"] = self.OnSubFinish4017104,
        ["4017108"] = self.OnSubFinish4017108,
        ["4017105"] = self.OnSubFinish4017105,
        ["4017106"] = self.OnSubFinish4017106
    }
end

function Quest40171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40171:Start()
    print("Start")
end

function Quest40171:OnDestroy()
    print("OnDestroy")
end

function Quest40171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40171:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40171Trigger2")
    this:ActorDestroy("Q40171Trigger3")
    this:ActorDestroy("Q40171Trigger4")
    this:ActorDestroy("Q40171Trigger1")
    this:ActorDestroy("Q40171Trigger5")
    this:ActorDestroy("Q40171Trigger6")
    this:ActorDestroy("Q40171Trigger7")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14603.alias, 3)
    this:LightNotifyTo(npcs.Npc6213.alias, 0, true)
    this:BanCrowdNpc(3509, 1, datas.crowd, false)
end

function Quest40171:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40171:OnSubStart4017101(arg1)
    print("OnSubStart4017101")
end

function Quest40171:OnSubFinish4017101(arg1)
    print("OnSubFinish4017101")
    this:SetNavigationByMainId(40171, true)
end

function Quest40171:OnSubStart4017102(arg1)
    print("OnSubStart4017102")
    actorMgr:CreateActorWithPos("Q40171Trigger6", "Actor/Gadget/Q40171Trigger6", 70900002, 0, points._Q40171Trigger6Point_.pos, points._Q40171Trigger6Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc6213.alias, 1, true)
    this:BanCrowdNpc(3509, 1, datas.crowd, true)
end

function Quest40171:OnSubFinish4017102(arg1)
    print("OnSubFinish4017102")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
    end)
end

function Quest40171:OnSubStart4017103(arg1)
    print("OnSubStart4017103")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40171Trigger2", "Actor/Gadget/Q40171Trigger2", 70900002, 0, points._Q40171Trigger2Point_.pos, points._Q40171Trigger2Point_.rot, true, false, 3)
        this:NotifyTo(npcs.Npc6213.alias, 1, true)
        this:BanCrowdNpc(3509, 1, datas.crowd, true)
    end)
end

function Quest40171:OnSubFinish4017103(arg1)
    print("OnSubFinish4017103")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc6213.alias, 0, true)
        this:BanCrowdNpc(3509, 1, datas.crowd, false)
    end)
end

function Quest40171:OnSubStart4017107(arg1)
    print("OnSubStart4017107")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40171Trigger3", "Actor/Gadget/Q40171Trigger3", 70900002, 0, points._Q40171Trigger3Point_.pos, points._Q40171Trigger3Point_.rot, true, false, nil)
        this:CreateQuestNpc(arg1, npcs.Npc14603.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DoFreeStyle(4412, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q40171Trigger4", "Actor/Gadget/Q40171Trigger4", 70900002, 0, points._Q40171Trigger4Point_.pos, points._Q40171Trigger4Point_.rot, true, false, 3)
    end)
end

function Quest40171:OnSubFinish4017107(arg1)
    print("OnSubFinish4017107")
    this:QuestNarratorTask(datas.NarratorWithId_4017101, nil)
end

function Quest40171:OnSubStart4017104(arg1)
    print("OnSubStart4017104")
    actorMgr:CreateActorWithPos("Q40171Trigger1", "Actor/Gadget/Q40171Trigger1", 70900002, 0, points._Q40171Trigger1Point_.pos, points._Q40171Trigger1Point_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DoFreeStyle(4412, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40171Trigger4", "Actor/Gadget/Q40171Trigger4", 70900002, 0, points._Q40171Trigger4Point_.pos, points._Q40171Trigger4Point_.rot, true, false, 3)
end

function Quest40171:OnSubFinish4017104(arg1)
    print("OnSubFinish4017104")
    this:ActionSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest40171:OnSubStart4017108(arg1)
    print("OnSubStart4017108")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40171Trigger7", "Actor/Gadget/Q40171Trigger7", 70900002, 0, points._Q40171Trigger7Point_.pos, points._Q40171Trigger7Point_.rot, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DoFreeStyle(4412, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40171):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q40171Trigger4", "Actor/Gadget/Q40171Trigger4", 70900002, 0, points._Q40171Trigger4Point_.pos, points._Q40171Trigger4Point_.rot, true, false, 3)
    end)
end

function Quest40171:OnSubFinish4017108(arg1)
    print("OnSubFinish4017108")
end

function Quest40171:OnSubStart4017105(arg1)
    print("OnSubStart4017105")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DoFreeStyle(4412, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40171):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40171):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q40171Trigger4", "Actor/Gadget/Q40171Trigger4", 70900002, 0, points._Q40171Trigger4Point_.pos, points._Q40171Trigger4Point_.rot, true, false, 3)
    end)
end

function Quest40171:OnSubFinish4017105(arg1)
    print("OnSubFinish4017105")
end

function Quest40171:OnSubStart4017106(arg1)
    print("OnSubStart4017106")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40171Trigger5", "Actor/Gadget/Q40171Trigger5", 70900002, 0, points._Q40171Trigger5Point_.pos, points._Q40171Trigger5Point_.rot, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DoFreeStyle(4412, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14603.alias, 40171):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q40171Trigger4", "Actor/Gadget/Q40171Trigger4", 70900002, 0, points._Q40171Trigger4Point_.pos, points._Q40171Trigger4Point_.rot, true, false, 3)
    end)
end

function Quest40171:OnSubFinish4017106(arg1)
    print("OnSubFinish4017106")
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc14603.alias, 40171)
            if questNpcActor.uActor ~= nil then
                if questNpcActor ~= actorMgr.dummyActor then
                    questNpcActor.uActor:StopCurEmojiBubble()
                end
            end

            this:DestroyQuestNpcActor(npcs.Npc1096.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc14603.alias, 3)
        end, function(arg1)
            actorUtils.ShowContext("CeremonyDetailPage", 0)
        end, nil, 0, false, true)
    end)
end

return Quest40171
