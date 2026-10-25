require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77665 = class("Quest77665", QuestActorProxy)
Quest77665.defaultAlias = "Quest77665"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77665:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77665:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766501"] = self.OnSubStart7766501,
        ["7766502"] = self.OnSubStart7766502,
        ["7766504"] = self.OnSubStart7766504,
        ["7766505"] = self.OnSubStart7766505,
        ["7766503"] = self.OnSubStart7766503
    }
end

function Quest77665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766501"] = self.OnSubFinish7766501,
        ["7766502"] = self.OnSubFinish7766502,
        ["7766504"] = self.OnSubFinish7766504,
        ["7766505"] = self.OnSubFinish7766505,
        ["7766503"] = self.OnSubFinish7766503
    }
end

function Quest77665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77665:Start()
    print("Start")
end

function Quest77665:OnDestroy()
    print("OnDestroy")
end

function Quest77665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77665:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7766501N1339Trigger")
    this:DestroyNpcTrigger("Q7766502N1332Trigger")
    this:DestroyNpcTrigger("Q7766504N16639Trigger")
    this:DestroyNpcTrigger("Q7766505N1339Trigger")
    this:ActorDestroy("Q77665Trigger", 77665)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1339.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1332.alias, 1159)
    this:SafeDestroyQuestNpc(npcs.Npc16639.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1336_2.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16569.alias, 3)
    this:RemoveLocalGadget(74051022, "1")
    this:RemoveLocalGadget(74051021, "1")
    this:RecycleAllRes()
end

function Quest77665:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77665Trigger", 77665)
    this:BanCrowdNpc(3712, 12, datas.InstanceIDList, false, true)
end

function Quest77665:ActorDestroy(arg1, arg2)
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

function Quest77665:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77665:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest77665:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77665:OnSubStart7766501(arg1)
    print("OnSubStart7766501")
    this:AfterInterCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Npc133877664")
        actorMgr:DestroyNpcActorByAlias("Npc134177664")
        actorMgr:DestroyNpcActorByAlias("Npc780877664")
        actorMgr:DestroyNpcActorByAlias("Npc1339_177664")
    end)

    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1339.id, 0, 7766501, 200, true)
    if this:GetQuestVar(7766501, 1) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7766501, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest77665:OnSubFinish7766501(arg1)
    print("OnSubFinish7766501")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:ClearNarratorTask()
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7766502, nil)
        this:SetNavigationByMainId(77665, true)
    end, true)
end

function Quest77665:OnSubStart7766502(arg1)
    print("OnSubStart7766502")
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 15, 7766502)
end

function Quest77665:OnSubFinish7766502(arg1)
    print("OnSubFinish7766502")
    this:ClearNarratorTask()
end

function Quest77665:OnSubStart7766504(arg1)
    print("OnSubStart7766504")
    this:NpcCreateWithNpcTrigger(npcs.Npc1080.id, 0, 15, 7766504)
    this:CreateQuestNpc(arg1, npcs.Npc1336_2.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1336_2.alias, 77665):SitOnChair(8010, true)
    this:NotifyTo(npcs.Npc7428.alias, 1, true)
    this:CreateLocalGadget(74051022, "1", points.Q7766504_Gadget74051022_1_Point.pos, points.Q7766504_Gadget74051022_1_Point.rot, 1159, nil, nil, false, 0, true, nil)
    this:BanCrowdNpc(3712, 12, datas.InstanceIDList, true, true)
end

function Quest77665:OnSubFinish7766504(arg1)
    print("OnSubFinish7766504")
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc3480.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1335.alias)
    this:RemoveLocalGadget(74051022, "1")
end

function Quest77665:OnSubStart7766505(arg1)
    print("OnSubStart7766505")
    this:NpcCreateWithNpcTrigger(npcs.Npc1339.id, 0, 200, 7766505)
    this:GetQuestNpcActor(npcs.Npc1080.alias, 77665):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc7428.alias, 1, true)
    this:CreateLocalGadget(74051021, "1", points.Q7766504_Gadget74051021_1_Point.pos, points.Q7766504_Gadget74051021_1_Point.rot, 3, nil, nil, false, 0, true, nil)
    this:BanCrowdNpc(3712, 12, datas.InstanceIDList, true, true)
end

function Quest77665:OnSubFinish7766505(arg1)
    print("OnSubFinish7766505")
    this:NpcDestroyImmediately(3, npcs.Npc16639.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1336_2.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16569.alias)
    this:LightNotifyTo(npcs.Npc7428.alias, 0, true)
    this:RemoveLocalGadget(74051021, "1")
    this:ActionSafeCall(function(arg1_2)
        actorUtils.ShowContext("ReputationSnezhnayaPage", 0, "0;1;0;1;1")
        this:CreateQuestOrphanNpc(arg1, npcs.Npc7808.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1339_1.id, 2, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q77665Trigger", "Actor/Gadget/Q77665Trigger", 70900002, 0, points._Q77665TriggerPoint_.pos, points._Q77665TriggerPoint_.rot, true, false, 1162, nil, 0, 77665)
        this:GetQuestNpcActor(npcs.Npc1339_1.alias, 77665):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc7808.alias, 77665):DoFreeStyle(1201, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1339_1.alias, 77665):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc7808.alias, 77665):DisableInteeHeadCtrl(true)
        this:BanCrowdNpc(3712, 12, datas.InstanceIDList, false, true)
        this:DeployStoryByQuest(147766500)
    end)
end

function Quest77665:OnSubStart7766503(arg1)
    print("OnSubStart7766503")
end

function Quest77665:OnSubFinish7766503(arg1)
    print("OnSubFinish7766503")
    this:QuestNarratorTask(datas.NarratorWithId_7766502, nil)
end

return Quest77665
