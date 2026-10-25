require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13011 = class("Quest13011", QuestActorProxy)
Quest13011.defaultAlias = "Quest13011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1301101"] = self.OnSubStart1301101,
        ["1301123"] = self.OnSubStart1301123,
        ["1301102"] = self.OnSubStart1301102,
        ["1301126"] = self.OnSubStart1301126,
        ["1301103"] = self.OnSubStart1301103,
        ["1301121"] = self.OnSubStart1301121,
        ["1301122"] = self.OnSubStart1301122,
        ["1301104"] = self.OnSubStart1301104,
        ["1301105"] = self.OnSubStart1301105,
        ["1301106"] = self.OnSubStart1301106,
        ["1301107"] = self.OnSubStart1301107,
        ["1301108"] = self.OnSubStart1301108,
        ["1301109"] = self.OnSubStart1301109,
        ["1301110"] = self.OnSubStart1301110,
        ["1301111"] = self.OnSubStart1301111,
        ["1301124"] = self.OnSubStart1301124,
        ["1301125"] = self.OnSubStart1301125,
        ["1301120"] = self.OnSubStart1301120,
        ["1301112"] = self.OnSubStart1301112,
        ["1301113"] = self.OnSubStart1301113,
        ["1301119"] = self.OnSubStart1301119,
        ["1301114"] = self.OnSubStart1301114,
        ["1301115"] = self.OnSubStart1301115,
        ["1301116"] = self.OnSubStart1301116,
        ["1301117"] = self.OnSubStart1301117,
        ["1301118"] = self.OnSubStart1301118
    }
end

function Quest13011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1301101"] = self.OnSubFinish1301101,
        ["1301123"] = self.OnSubFinish1301123,
        ["1301102"] = self.OnSubFinish1301102,
        ["1301126"] = self.OnSubFinish1301126,
        ["1301103"] = self.OnSubFinish1301103,
        ["1301121"] = self.OnSubFinish1301121,
        ["1301122"] = self.OnSubFinish1301122,
        ["1301104"] = self.OnSubFinish1301104,
        ["1301105"] = self.OnSubFinish1301105,
        ["1301106"] = self.OnSubFinish1301106,
        ["1301107"] = self.OnSubFinish1301107,
        ["1301108"] = self.OnSubFinish1301108,
        ["1301109"] = self.OnSubFinish1301109,
        ["1301110"] = self.OnSubFinish1301110,
        ["1301111"] = self.OnSubFinish1301111,
        ["1301124"] = self.OnSubFinish1301124,
        ["1301125"] = self.OnSubFinish1301125,
        ["1301120"] = self.OnSubFinish1301120,
        ["1301112"] = self.OnSubFinish1301112,
        ["1301113"] = self.OnSubFinish1301113,
        ["1301119"] = self.OnSubFinish1301119,
        ["1301114"] = self.OnSubFinish1301114,
        ["1301115"] = self.OnSubFinish1301115,
        ["1301116"] = self.OnSubFinish1301116,
        ["1301117"] = self.OnSubFinish1301117,
        ["1301118"] = self.OnSubFinish1301118
    }
end

function Quest13011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1301120"] = self.OnSubFailed1301120, ["1301113"] = self.OnSubFailed1301113}
end

function Quest13011:Start()
    print("Start")
end

function Quest13011:OnDestroy()
    print("OnDestroy")
end

function Quest13011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 20157)
    self:SafeDestroyQuestNpc(npcs.Npc12772Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12772Data.alias, 1078)
    self:SafeDestroyQuestNpc(npcs.Npc12780Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12781Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12782Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12782Data.alias, 1078)
    self:SafeDestroyQuestNpc(npcs.Npc12784Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12785Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12786Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12787Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12783Data.alias, 1078)
    self:SafeDestroyQuestNpc(npcs.Npc12799Data.alias, 1078)
    self:SafeDestroyQuestNpc(npcs.Npc12800Data.alias, 1078)
    self:SafeDestroyQuestNpc(npcs.Npc12788Data.alias, 20157)
    self:SafeDestroyQuestNpc(npcs.Npc4363Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4363Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q13011Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q13011Trigger1", 20157, false)
    actorMgr:DestroyEntityActor("Q13011Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q13011Trigger3", 1078, false)
    actorMgr:DestroyEntityActor("Q13011Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q13011Trigger5", 3, false)
end

function Quest13011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13011:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest13011:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest13011:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest1301109")
        actorUtils.FinishQuestID(false, 1301109)
    end

    if arg1 == 2 then
        print("FinishSubQuest1301112")
        actorUtils.FinishQuestID(false, 1301112)
    end
end

function Quest13011:OnSubStart1301101(arg1)
    print("OnSubStart1301101")
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12772Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12780Data.id, 3)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12781Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13011Trigger", "Actor/Gadget/Q13011Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300901_N12772").pos, sceneData:GetDummyPoint(3, "Q1300901_N12772").rot, true, false, 3)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301101(arg1)
    print("OnSubFinish1301101")
    self:ActorDestroy("Q13011Trigger")
    self:NpcDestroy(npcs.Npc12772Data.alias, 3)
end

function Quest13011:OnSubStart1301123(arg1)
    print("OnSubStart1301123")
end

function Quest13011:OnSubFinish1301123(arg1)
    print("OnSubFinish1301123")
end

function Quest13011:OnSubStart1301102(arg1)
    print("OnSubStart1301102")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12782Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12782Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301102(arg1)
    print("OnSubFinish1301102")
    self:NpcDestroy(npcs.Npc12782Data.alias, 3)
end

function Quest13011:OnSubStart1301126(arg1)
    print("OnSubStart1301126")
    self:ActionSafeCall(function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(1301126, 1, datas.TextmapId, 3)
    end)
end

function Quest13011:OnSubFinish1301126(arg1)
    print("OnSubFinish1301126")
end

function Quest13011:OnSubStart1301103(arg1)
    print("OnSubStart1301103")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12772Data.id, 1)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13011Trigger3", "Actor/Gadget/Q13011Trigger3", 70900002, 0, sceneData:GetDummyPoint(1078, "Q1301103_N12772").pos, sceneData:GetDummyPoint(1078, "Q1301103_N12772").rot, true, false, 1078)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301103(arg1)
    print("OnSubFinish1301103")
    self:ActorDestroy("Q13011Trigger3")
    self:NpcDestroy(npcs.Npc12772Data.alias, 1078)
end

function Quest13011:OnSubStart1301121(arg1)
    print("OnSubStart1301121")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc12780Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12782Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc12782Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12783Data.id, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12799Data.id, 4)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12800Data.id, 5)
    end)

    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12780Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301121(arg1)
    print("OnSubFinish1301121")
end

function Quest13011:OnSubStart1301122(arg1)
    print("OnSubStart1301122")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12782Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301122(arg1)
    print("OnSubFinish1301122")
    self:NpcDestroy(npcs.Npc12782Data.alias, 3)
    self:NpcDestroy(npcs.Npc12783Data.alias, 1078)
    self:NpcDestroy(npcs.Npc12799Data.alias, 1078)
    self:NpcDestroy(npcs.Npc12800Data.alias, 1078)
end

function Quest13011:OnSubStart1301104(arg1)
    print("OnSubStart1301104")
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12780Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:NpcCreate(arg1, npcs.Npc12784Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12784Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13011:OnSubFinish1301104(arg1)
    print("OnSubFinish1301104")
end

function Quest13011:OnSubStart1301105(arg1)
    print("OnSubStart1301105")
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12780Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:NpcCreate(arg1, npcs.Npc12786Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12786Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest13011:OnSubFinish1301105(arg1)
    print("OnSubFinish1301105")
end

function Quest13011:OnSubStart1301106(arg1)
    print("OnSubStart1301106")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12784Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12786Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301106(arg1)
    print("OnSubFinish1301106")
end

function Quest13011:OnSubStart1301107(arg1)
    print("OnSubStart1301107")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12784Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:NpcCreate(arg1, npcs.Npc12785Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12785Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12786Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301107(arg1)
    print("OnSubFinish1301107")
    self:NpcDestroy(npcs.Npc12784Data.alias, 3)
    self:NpcDestroy(npcs.Npc12786Data.alias, 3)
end

function Quest13011:OnSubStart1301108(arg1)
    print("OnSubStart1301108")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    local v = self:GetQuestNpcActor(npcs.Npc12780Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12781Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12785Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CreateQuestNpcWithTriggerBlack("1301108tri", 1301108, 12772, 1, 10, 1)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13011:OnSubFinish1301108(arg1)
    print("OnSubFinish1301108")
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12780Data.alias):DisableInteeHeadCtrl(false)
    self:NpcDestroy(npcs.Npc12780Data.alias, 3)
    self:NpcDestroy(npcs.Npc12781Data.alias, 3)
    self:NpcDestroy(npcs.Npc12785Data.alias, 3)
    self:NpcDestroy(npcs.Npc12787Data.alias, 3)
end

function Quest13011:OnSubStart1301109(arg1)
    print("OnSubStart1301109")
end

function Quest13011:OnSubFinish1301109(arg1)
    print("OnSubFinish1301109")
end

function Quest13011:OnSubStart1301110(arg1)
    print("OnSubStart1301110")
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12772Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest13011:OnSubFinish1301110(arg1)
    print("OnSubFinish1301110")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc12772Data.alias, 3)
end

function Quest13011:OnSubStart1301111(arg1)
    print("OnSubStart1301111")
    actorMgr:CreateActorWithPos("Q13011Trigger4", "Actor/Gadget/Q13011Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1301112_guide").pos, sceneData:GetDummyPoint(3, "Q1301112_guide").rot, true, false, 3)
end

function Quest13011:OnSubFinish1301111(arg1)
    print("OnSubFinish1301111")
    self:ActorDestroy("Q13011Trigger4")
end

function Quest13011:OnSubStart1301124(arg1)
    print("OnSubStart1301124")
end

function Quest13011:OnSubFinish1301124(arg1)
    print("OnSubFinish1301124")
end

function Quest13011:OnSubStart1301125(arg1)
    print("OnSubStart1301125")
end

function Quest13011:OnSubFinish1301125(arg1)
    print("OnSubFinish1301125")
end

function Quest13011:OnSubStart1301120(arg1)
    print("OnSubStart1301120")
    self:CreateQuestNpcWithTriggerBlack("1301120tri", 1301120, 1058, 1, 36, 1)
end

function Quest13011:OnSubFinish1301120(arg1)
    print("OnSubFinish1301120")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13011:OnSubFailed1301120(arg1)
    print("OnSubFailed1301120")
    self:ActorDestroy("1301120tri")
end

function Quest13011:OnSubStart1301112(arg1)
    print("OnSubStart1301112")
end

function Quest13011:OnSubFinish1301112(arg1)
    print("OnSubFinish1301112")
end

function Quest13011:OnSubStart1301113(arg1)
    print("OnSubStart1301113")
    self:CreateQuestNpc(arg1, npcs.Npc12788Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12788Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpcWithTriggerBlack("1301113tri", 1301113, 1058, 1, 15, 1)
end

function Quest13011:OnSubFinish1301113(arg1)
    print("OnSubFinish1301113")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12788Data.alias, 20157)
end

function Quest13011:OnSubFailed1301113(arg1)
    print("OnSubFailed1301113")
    self:ActorDestroy("1301113tri")
end

function Quest13011:OnSubStart1301119(arg1)
    print("OnSubStart1301119")
end

function Quest13011:OnSubFinish1301119(arg1)
    print("OnSubFinish1301119")
end

function Quest13011:OnSubStart1301114(arg1)
    print("OnSubStart1301114")
    self:CallDelay(2, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1058Data.id, 1, npcs.Npc1058Data.alias)
    end)
end

function Quest13011:OnSubFinish1301114(arg1)
    print("OnSubFinish1301114")
    self:TransmitPlayerByQuestId(1301114, 1)
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13011:OnSubStart1301115(arg1)
    print("OnSubStart1301115")
    self:CreateQuestNpcWithTriggerBlack("1301115tri", 1301115, 1058, 1, 30, 1)
end

function Quest13011:OnSubFinish1301115(arg1)
    print("OnSubFinish1301115")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13011:OnSubStart1301116(arg1)
    print("OnSubStart1301116")
end

function Quest13011:OnSubFinish1301116(arg1)
    print("OnSubFinish1301116")
end

function Quest13011:OnSubStart1301117(arg1)
    print("OnSubStart1301117")
    self:CreateQuestNpc(arg1, npcs.Npc12772Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12772Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13011Trigger2", "Actor/Gadget/Q13011Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1301109").pos, sceneData:GetDummyPoint(3, "Q1301109").rot, true, false, 3)
end

function Quest13011:OnSubFinish1301117(arg1)
    print("OnSubFinish1301117")
    self:ActorDestroy("Q13011Trigger2")
    self:NpcDestroy(npcs.Npc12772Data.alias, 3)
end

function Quest13011:OnSubStart1301118(arg1)
    print("OnSubStart1301118")
    self:NpcCreate(arg1, npcs.Npc1058Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(0.5, function(arg1)
            arg1:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
            arg1:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
        end)
    end)

    actorMgr:CreateActorWithPos("Q13011Trigger5", "Actor/Gadget/Q13011Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1301118_N10000005").pos, sceneData:GetDummyPoint(3, "Q1301118_N10000005").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4363Data.alias, 1, true)
end

function Quest13011:OnSubFinish1301118(arg1)
    print("OnSubFinish1301118")
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(false)
    self:ActorDestroy("Q13011Trigger5")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc1050Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4363Data.alias, 0, true)
end

return Quest13011
