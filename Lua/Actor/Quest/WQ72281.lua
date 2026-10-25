require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72281 = class("Quest72281", QuestActorProxy)
Quest72281.defaultAlias = "Quest72281"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72281:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72281:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7228118"] = self.OnSubStart7228118,
        ["7228101"] = self.OnSubStart7228101,
        ["7228117"] = self.OnSubStart7228117,
        ["7228102"] = self.OnSubStart7228102,
        ["7228103"] = self.OnSubStart7228103,
        ["7228104"] = self.OnSubStart7228104,
        ["7228105"] = self.OnSubStart7228105,
        ["7228106"] = self.OnSubStart7228106,
        ["7228107"] = self.OnSubStart7228107,
        ["7228108"] = self.OnSubStart7228108,
        ["7228109"] = self.OnSubStart7228109,
        ["7228110"] = self.OnSubStart7228110,
        ["7228111"] = self.OnSubStart7228111,
        ["7228112"] = self.OnSubStart7228112,
        ["7228113"] = self.OnSubStart7228113,
        ["7228114"] = self.OnSubStart7228114,
        ["7228115"] = self.OnSubStart7228115,
        ["7228116"] = self.OnSubStart7228116
    }
end

function Quest72281:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7228118"] = self.OnSubFinish7228118,
        ["7228101"] = self.OnSubFinish7228101,
        ["7228117"] = self.OnSubFinish7228117,
        ["7228102"] = self.OnSubFinish7228102,
        ["7228103"] = self.OnSubFinish7228103,
        ["7228104"] = self.OnSubFinish7228104,
        ["7228105"] = self.OnSubFinish7228105,
        ["7228106"] = self.OnSubFinish7228106,
        ["7228107"] = self.OnSubFinish7228107,
        ["7228108"] = self.OnSubFinish7228108,
        ["7228109"] = self.OnSubFinish7228109,
        ["7228110"] = self.OnSubFinish7228110,
        ["7228111"] = self.OnSubFinish7228111,
        ["7228112"] = self.OnSubFinish7228112,
        ["7228113"] = self.OnSubFinish7228113,
        ["7228114"] = self.OnSubFinish7228114,
        ["7228115"] = self.OnSubFinish7228115,
        ["7228116"] = self.OnSubFinish7228116
    }
end

function Quest72281:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72281:Start()
    print("Start")
end

function Quest72281:OnDestroy()
    print("OnDestroy")
end

function Quest72281:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72281:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72281:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20562Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30156Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30157Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3190Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30139Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q7228101Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7228103Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q7228106Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q7228108Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q7228110Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7228112Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7228115Trigger1", 3, false)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72281:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72281:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72281:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest72281:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72281:OnSubStart7228118(arg1)
    print("OnSubStart7228118")
end

function Quest72281:OnSubFinish7228118(arg1)
    print("OnSubFinish7228118")
end

function Quest72281:OnSubStart7228101(arg1)
    print("OnSubStart7228101")
end

function Quest72281:OnSubFinish7228101(arg1)
    print("OnSubFinish7228101")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CallDelay(0.1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
        end)
    end)
end

function Quest72281:OnSubStart7228117(arg1)
    print("OnSubStart7228117")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CallDelay(0.2, function(arg1)
            actorMgr:CreateActorWithPos("Q7228101Trigger", "Actor/Gadget/Q7228101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228101").pos, sceneData:GetDummyPoint(3, "guide_Q7228101").rot, true, false, 3)
        end)
    end)
end

function Quest72281:OnSubFinish7228117(arg1)
    print("OnSubFinish7228117")
    self:ActorDestroy("Q7228101Trigger")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72281:OnSubStart7228102(arg1)
    print("OnSubStart7228102")
    self:NpcCreate(arg1, npcs.Npc1037Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1039Data.id, 2, npcs.Npc1039Data.alias)
end

function Quest72281:OnSubFinish7228102(arg1)
    print("OnSubFinish7228102")
    self:NpcDestroy(npcs.Npc1037Data.alias, 3)
    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
end

function Quest72281:OnSubStart7228103(arg1)
    print("OnSubStart7228103")
    actorMgr:CreateActorWithPos("Q7228103Trigger1", "Actor/Gadget/Q7228103Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228103").pos, sceneData:GetDummyPoint(3, "guide_Q7228103").rot, true, false, 3)
end

function Quest72281:OnSubFinish7228103(arg1)
    print("OnSubFinish7228103")
    self:ActorDestroy("Q7228103Trigger1")
end

function Quest72281:OnSubStart7228104(arg1)
    print("OnSubStart7228104")
    self:NpcCreate(arg1, npcs.Npc1037Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1039Data.id, 2, npcs.Npc1039Data.alias)
    self:NpcCreate(arg1, npcs.Npc1034Data.id, 3)
end

function Quest72281:OnSubFinish7228104(arg1)
    print("OnSubFinish7228104")
    self:NpcDestroy(npcs.Npc1037Data.alias, 3)
    self:NpcDestroy(npcs.Npc1034Data.alias, 3)
end

function Quest72281:OnSubStart7228105(arg1)
    print("OnSubStart7228105")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    end)
end

function Quest72281:OnSubFinish7228105(arg1)
    print("OnSubFinish7228105")
    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
end

function Quest72281:OnSubStart7228106(arg1)
    print("OnSubStart7228106")
end

function Quest72281:OnSubFinish7228106(arg1)
    print("OnSubFinish7228106")
end

function Quest72281:OnSubStart7228107(arg1)
    print("OnSubStart7228107")
    self:NpcCreate(arg1, npcs.Npc20562Data.id, 2)
    actorMgr:CreateActorWithPos("Q7228106Trigger2", "Actor/Gadget/Q7228106Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7228107_N10000005").pos, sceneData:GetDummyPoint(3, "Q7228107_N10000005").rot, true, false, 3)
end

function Quest72281:OnSubFinish7228107(arg1)
    print("OnSubFinish7228107")
    self:ActorDestroy("Q7228106Trigger2")
    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
    self:NpcDestroy(npcs.Npc20562Data.alias, 3)
end

function Quest72281:OnSubStart7228108(arg1)
    print("OnSubStart7228108")
end

function Quest72281:OnSubFinish7228108(arg1)
    print("OnSubFinish7228108")
end

function Quest72281:OnSubStart7228109(arg1)
    print("OnSubStart7228109")
    self:NpcCreate(arg1, npcs.Npc30139Data.id, 2)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc30139Data.alias, 1, true)
    end)
end

function Quest72281:OnSubFinish7228109(arg1)
    print("OnSubFinish7228109")
    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
    self:NpcDestroy(npcs.Npc30139Data.alias, 3)
end

function Quest72281:OnSubStart7228110(arg1)
    print("OnSubStart7228110")
    self:NpcCreate(arg1, npcs.Npc3190Data.id, 2)
    self:NpcCreate(arg1, npcs.Npc30156Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc30156Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc30157Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc30157Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7228110Trigger", "Actor/Gadget/Q7228110Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228110").pos, sceneData:GetDummyPoint(3, "guide_Q7228110").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc30139Data.alias, 1, true)
    end)
end

function Quest72281:OnSubFinish7228110(arg1)
    print("OnSubFinish7228110")
    self:ActorDestroy("Q7228110Trigger")
end

function Quest72281:OnSubStart7228111(arg1)
    print("OnSubStart7228111")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1039Data.id, 1, npcs.Npc1039Data.alias)
end

function Quest72281:OnSubFinish7228111(arg1)
    print("OnSubFinish7228111")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc30139Data.alias, 0, true)
    end)

    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
    self:NpcDestroy(npcs.Npc3190Data.alias, 3)
    self:NpcDestroy(npcs.Npc30139Data.alias, 3)
    self:NpcDestroy(npcs.Npc30156Data.alias, 3)
    self:NpcDestroy(npcs.Npc30157Data.alias, 3)
end

function Quest72281:OnSubStart7228112(arg1)
    print("OnSubStart7228112")
    actorMgr:CreateActorWithPos("Q7228112Trigger", "Actor/Gadget/Q7228112Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227802_N10000005").pos, sceneData:GetDummyPoint(3, "Q7227802_N10000005").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3190Data.alias, 1, true)
    end)
end

function Quest72281:OnSubFinish7228112(arg1)
    print("OnSubFinish7228112")
    self:ActorDestroy("Q7228112Trigger")
end

function Quest72281:OnSubStart7228113(arg1)
    print("OnSubStart7228113")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1039Data.id, 1, npcs.Npc1039Data.alias)
    self:NpcCreate(arg1, npcs.Npc3190Data.id, 2)
end

function Quest72281:OnSubFinish7228113(arg1)
    print("OnSubFinish7228113")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3190Data.alias, 0, true)
    end)

    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
    self:NpcDestroy(npcs.Npc3190Data.alias, 3)
end

function Quest72281:OnSubStart7228114(arg1)
    print("OnSubStart7228114")
end

function Quest72281:OnSubFinish7228114(arg1)
    print("OnSubFinish7228114")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CallDelay(0.1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
        end)
    end)
end

function Quest72281:OnSubStart7228115(arg1)
    print("OnSubStart7228115")
    self:NpcCreate(arg1, npcs.Npc1037Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1039Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CallDelay(0.2, function(arg1)
            actorMgr:CreateActorWithPos("Q7228115Trigger1", "Actor/Gadget/Q7228115Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228115").pos, sceneData:GetDummyPoint(3, "guide_Q7228115").rot, true, false, 3)
        end)
    end)
end

function Quest72281:OnSubFinish7228115(arg1)
    print("OnSubFinish7228115")
    self:ActorDestroy("Q7228115Trigger1")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72281:OnSubStart7228116(arg1)
    print("OnSubStart7228116")
    actorMgr:CreateActorWithPos("Q7228108Trigger3", "Actor/Gadget/Q7228108Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7228115").pos, sceneData:GetDummyPoint(3, "guide_Q7228115").rot, true, false, 3)
end

function Quest72281:OnSubFinish7228116(arg1)
    print("OnSubFinish7228116")
    self:ActorDestroy("Q7228108Trigger3")
    self:NpcDestroy(npcs.Npc1037Data.alias, 3)
    self:NpcDestroy(npcs.Npc1039Data.alias, 3)
end

return Quest72281
