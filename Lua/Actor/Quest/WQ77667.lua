require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77667 = class("Quest77667", QuestActorProxy)
Quest77667.defaultAlias = "Quest77667"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77667:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77667:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766701"] = self.OnSubStart7766701,
        ["7766702"] = self.OnSubStart7766702,
        ["7766704"] = self.OnSubStart7766704,
        ["7766703"] = self.OnSubStart7766703
    }
end

function Quest77667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766701"] = self.OnSubFinish7766701,
        ["7766702"] = self.OnSubFinish7766702,
        ["7766704"] = self.OnSubFinish7766704,
        ["7766703"] = self.OnSubFinish7766703
    }
end

function Quest77667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77667:Start()
    print("Start")
end

function Quest77667:OnDestroy()
    print("OnDestroy")
end

function Quest77667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77667:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7766701N1339Trigger")
    this:DestroyNpcTrigger("Q7766702N10200Trigger")
    this:DestroyNpcTrigger("Q7766703N1339Trigger")
    this:ActorDestroy("Q77667Trigger", 77667)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1339.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc10200.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7558.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7559.alias, 3)
    this:LightNotifyTo(npcs.Npc7558.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7559.alias, 0, true)
    this:RemoveLocalGadget(74051004, "1")
    this:RecycleAllRes()
end

function Quest77667:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77667Trigger", 77667)
end

function Quest77667:ActorDestroy(arg1, arg2)
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

function Quest77667:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77667:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77667:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77667:OnSubStart7766701(arg1)
    print("OnSubStart7766701")
    this:AfterInterCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Npc133877666")
        actorMgr:DestroyNpcActorByAlias("Npc134177666")
    end)

    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1339.id, 0, 7766701, 200, true)
    this:CreateLocalGadget(74051004, "1", points.Q7766701_Gadget73196055_1_Point.pos, points.Q7766701_Gadget73196055_1_Point.rot, 1162, nil, nil, false, 0, true, nil)
    if this:GetQuestVar(7766701, 1) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7766701, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest77667:OnSubFinish7766701(arg1)
    print("OnSubFinish7766701")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:SetNavigationByMainId(77667, true)
end

function Quest77667:OnSubStart7766702(arg1)
    print("OnSubStart7766702")
    this:NpcCreateWithNpcTrigger(npcs.Npc10200.id, 0, 10, 7766702)
    this:CreateQuestNpc(arg1, npcs.Npc7558.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7559.id, 0, false, 0)
    this:CreateLocalGadget(74051004, "1", points.Q7766701_Gadget73196055_1_Point.pos, points.Q7766701_Gadget73196055_1_Point.rot, 1162, nil, nil, false, 0, true, nil)
    this:ClearNarratorTask()
end

function Quest77667:OnSubFinish7766702(arg1)
    print("OnSubFinish7766702")
    this:RemoveLocalGadget(74051004, "1")
    this:ClearNarratorTask()
end

function Quest77667:OnSubStart7766704(arg1)
    print("OnSubStart7766704")
end

function Quest77667:OnSubFinish7766704(arg1)
    print("OnSubFinish7766704")
    this:NpcDestroyImmediately(3, npcs.Npc7558.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7559.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10200.alias)
    this:QuestNarratorTask(datas.NarratorWithId_7766702, nil)
end

function Quest77667:OnSubStart7766703(arg1)
    print("OnSubStart7766703")
    this:NpcCreateWithNpcTrigger(npcs.Npc1339.id, 0, 200, 7766703)
    this:NotifyTo(npcs.Npc7558.alias, 1, true)
    this:NotifyTo(npcs.Npc7559.alias, 1, true)
end

function Quest77667:OnSubFinish7766703(arg1)
    print("OnSubFinish7766703")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:LightNotifyTo(npcs.Npc7558.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7559.alias, 0, true)
    this:ActionSafeCall(function(arg1_2)
        actorUtils.ShowContext("ReputationSnezhnayaPage", 0, "0;1;0;3;1")
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1339_1.id, 4, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q77667Trigger", "Actor/Gadget/Q77667Trigger", 70900002, 0, points._Q77667TriggerPoint_.pos, points._Q77667TriggerPoint_.rot, true, false, 1162, nil, 0, 77667)
        this:ClearNarratorTask()
    end)
end

return Quest77667
