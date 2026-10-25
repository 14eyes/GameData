require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40241 = class("Quest40241", QuestActorProxy)
Quest40241.defaultAlias = "Quest40241"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40241:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40241:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024101"] = self.OnSubStart4024101,
        ["4024104"] = self.OnSubStart4024104,
        ["4024102"] = self.OnSubStart4024102,
        ["4024105"] = self.OnSubStart4024105,
        ["4024103"] = self.OnSubStart4024103,
        ["4024106"] = self.OnSubStart4024106,
        ["4024107"] = self.OnSubStart4024107,
        ["4024108"] = self.OnSubStart4024108
    }
end

function Quest40241:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024101"] = self.OnSubFinish4024101,
        ["4024104"] = self.OnSubFinish4024104,
        ["4024102"] = self.OnSubFinish4024102,
        ["4024105"] = self.OnSubFinish4024105,
        ["4024103"] = self.OnSubFinish4024103,
        ["4024106"] = self.OnSubFinish4024106,
        ["4024107"] = self.OnSubFinish4024107,
        ["4024108"] = self.OnSubFinish4024108
    }
end

function Quest40241:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40241:Start()
    print("Start")
end

function Quest40241:OnDestroy()
    print("OnDestroy")
end

function Quest40241:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40241:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40241:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4024102N16604Trigger")
    this:DestroyNpcTrigger("Q4024103N1329Trigger")
    this:DestroyNpcTrigger("Q4024104N1329Trigger")
    this:DestroyNpcTrigger("Q4024105N16604Trigger")
    this:DestroyNpcTrigger("Q4024106N16260Trigger")
    this:ActorDestroy("Q4024102Trigger", nil)
    this:ActorDestroy("Q4024106Trigger", 40241)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16604.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1329.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16608.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16606.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16260.alias, 3)
    this:BanCrowdNpc(3220, 1, datas.InstanceIDList, false, true)
    this:BanCrowdNpc(3220, 17, datas.InstanceIDList_1, false, true)
    this:CancelStoryByQuest(134024101)
    this:CancelStoryByQuest(134024102)
    this:RecycleAllRes()
end

function Quest40241:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024102Trigger", nil)
    this:ActorDestroy("Q4024106Trigger", 40241)
    this:BanCrowdNpc(3220, 1, datas.InstanceIDList, false, true)
    this:BanCrowdNpc(3220, 17, datas.InstanceIDList_1, false, true)
end

function Quest40241:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40241:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40241:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40241:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40241:OnSubStart4024101(arg1)
    print("OnSubStart4024101")
end

function Quest40241:OnSubFinish4024101(arg1)
    print("OnSubFinish4024101")
end

function Quest40241:OnSubStart4024104(arg1)
    print("OnSubStart4024104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024104, 0, 30, 1, npcs.Npc1329.id)
end

function Quest40241:OnSubFinish4024104(arg1)
    print("OnSubFinish4024104")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
end

function Quest40241:OnSubStart4024102(arg1)
    print("OnSubStart4024102")
    this:NpcCreateWithNpcTrigger(npcs.Npc16604.id, 0, 15, 4024102)
    this:GetQuestNpcActor(npcs.Npc16604.alias, 40241):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16604.alias, 40241):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16608.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16606.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16606.alias, 40241):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16606.alias, 40241):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4024102Trigger", "Actor/Gadget/Q4024102Trigger", 70900002, 0, points._Q4024102TriggerPoint_.pos, points._Q4024102TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:BanCrowdNpc(3220, 1, datas.InstanceIDList, true, true)
    this:BanCrowdNpc(3220, 17, datas.InstanceIDList_1, true, true)
end

function Quest40241:OnSubFinish4024102(arg1)
    print("OnSubFinish4024102")
    this:NpcDestroyImmediately(3, npcs.Npc16606.alias)
    this:ClearNarratorTask()
end

function Quest40241:OnSubStart4024105(arg1)
    print("OnSubStart4024105")
    this:NpcCreateWithNpcTrigger(npcs.Npc16604.id, 0, 5, 4024105)
    this:GetQuestNpcActor(npcs.Npc16604.alias, 40241):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16604.alias, 40241):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16608.id, 0, false, 0)
    this:BanCrowdNpc(3220, 1, datas.InstanceIDList, true, true)
    this:BanCrowdNpc(3220, 17, datas.InstanceIDList_1, true, true)
end

function Quest40241:OnSubFinish4024105(arg1)
    print("OnSubFinish4024105")
end

function Quest40241:OnSubStart4024103(arg1)
    print("OnSubStart4024103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024103, 0, 10, 1, npcs.Npc1329.id)
    this:CreateQuestNpc(arg1, npcs.Npc16604.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16604.alias, 40241):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16608.id, 0, false, 0)
    this:BanCrowdNpc(3220, 1, datas.InstanceIDList, true, true)
    this:BanCrowdNpc(3220, 17, datas.InstanceIDList_1, true, true)
    local actor = actorMgr:GetActor("40241")
    local realAlias = actor.GetRealAlias(actor, "Npc16608")
    actor.WaitEntityReadyCall(actor, {realAlias}, function()
        actor:GetQuestNpcActor("Npc16604"):LookAtTarget(realAlias, {yaw = 0, pitch = 0, lookAtPointName = "View", useNeckoffset = true})
    end)
end

function Quest40241:OnSubFinish4024103(arg1)
    print("OnSubFinish4024103")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16604.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16608.alias)
    this:BanCrowdNpc(3220, 1, datas.InstanceIDList, false, true)
    this:BanCrowdNpc(3220, 17, datas.InstanceIDList_1, false, true)
end

function Quest40241:OnSubStart4024106(arg1)
    print("OnSubStart4024106")
    this:DeployStoryByQuest(134024102)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024106, 0, 25, 1, npcs.Npc16260.id)
end

function Quest40241:OnSubFinish4024106(arg1)
    print("OnSubFinish4024106")
    this:NpcDestroyImmediately(3, npcs.Npc16260.alias)
    this:CancelStoryByQuest(134024102)
    this:DeployStoryByQuest(134024101)
end

function Quest40241:OnSubStart4024107(arg1)
    print("OnSubStart4024107")
end

function Quest40241:OnSubFinish4024107(arg1)
    print("OnSubFinish4024107")
end

function Quest40241:OnSubStart4024108(arg1)
    print("OnSubStart4024108")
end

function Quest40241:OnSubFinish4024108(arg1)
    print("OnSubFinish4024108")
end

return Quest40241
