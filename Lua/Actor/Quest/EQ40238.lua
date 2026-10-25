require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40238 = class("Quest40238", QuestActorProxy)
Quest40238.defaultAlias = "Quest40238"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40238:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40238:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4023801"] = self.OnSubStart4023801,
        ["4023802"] = self.OnSubStart4023802,
        ["4023803"] = self.OnSubStart4023803,
        ["4023804"] = self.OnSubStart4023804,
        ["4023806"] = self.OnSubStart4023806,
        ["4023807"] = self.OnSubStart4023807,
        ["4023808"] = self.OnSubStart4023808,
        ["4023810"] = self.OnSubStart4023810,
        ["4023809"] = self.OnSubStart4023809,
        ["4023805"] = self.OnSubStart4023805,
        ["4023812"] = self.OnSubStart4023812,
        ["4023811"] = self.OnSubStart4023811,
        ["4023813"] = self.OnSubStart4023813,
        ["4023814"] = self.OnSubStart4023814
    }
end

function Quest40238:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4023801"] = self.OnSubFinish4023801,
        ["4023802"] = self.OnSubFinish4023802,
        ["4023803"] = self.OnSubFinish4023803,
        ["4023804"] = self.OnSubFinish4023804,
        ["4023806"] = self.OnSubFinish4023806,
        ["4023807"] = self.OnSubFinish4023807,
        ["4023808"] = self.OnSubFinish4023808,
        ["4023810"] = self.OnSubFinish4023810,
        ["4023809"] = self.OnSubFinish4023809,
        ["4023805"] = self.OnSubFinish4023805,
        ["4023812"] = self.OnSubFinish4023812,
        ["4023811"] = self.OnSubFinish4023811,
        ["4023813"] = self.OnSubFinish4023813,
        ["4023814"] = self.OnSubFinish4023814
    }
end

function Quest40238:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40238:Start()
    print("Start")
end

function Quest40238:OnDestroy()
    print("OnDestroy")
end

function Quest40238:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40238:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40238:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16357.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16712.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16713.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081.alias, 3)
    this:RecycleAllRes()
    this:DestroyNpcTrigger("Q4023803N16350Trigger")
    this:DestroyNpcTrigger("Q4023804N16350Trigger")
    this:DestroyNpcTrigger("Q4023805N16350Trigger")
    this:DestroyNpcTrigger("Q4023809N16350Trigger")
    this:DestroyNpcTrigger("Q4023811N16350Trigger")
    this:DestroyNpcTrigger("Q4023812N16350Trigger")
    this:DestroyNpcTrigger("Q4023814N16350Trigger")
    this:ActorDestroy("Q4023813Trigger", 40238)
end

function Quest40238:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4023813Trigger", 40238)
end

function Quest40238:ActorDestroy(arg1, arg2)
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

function Quest40238:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40238:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40238:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40238:OnSubStart4023801(arg1)
    print("OnSubStart4023801")
end

function Quest40238:OnSubFinish4023801(arg1)
    print("OnSubFinish4023801")
end

function Quest40238:OnSubStart4023802(arg1)
    print("OnSubStart4023802")
    this:QuestNarratorTask(datas.NarratorWithId_4023802, nil)
    actorUtils.FinishQuestWithParam({false}, {4023802})
end

function Quest40238:OnSubFinish4023802(arg1)
    print("OnSubFinish4023802")
end

function Quest40238:OnSubStart4023803(arg1)
    print("OnSubStart4023803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023803, 0, 20, 2, npcs.Npc16350.id)
end

function Quest40238:OnSubFinish4023803(arg1)
    print("OnSubFinish4023803")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ClearNarratorTask()
end

function Quest40238:OnSubStart4023804(arg1)
    print("OnSubStart4023804")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023804, 0, 10, 2, npcs.Npc16350.id)
end

function Quest40238:OnSubFinish4023804(arg1)
    print("OnSubFinish4023804")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40238:OnSubStart4023806(arg1)
    print("OnSubStart4023806")
    this:CreateQuestNpc(arg1, npcs.Npc16357.id, 0, false, 0)
end

function Quest40238:OnSubFinish4023806(arg1)
    print("OnSubFinish4023806")
    this:NpcDestroyImmediately(3, npcs.Npc16357.alias)
end

function Quest40238:OnSubStart4023807(arg1)
    print("OnSubStart4023807")
    this:CreateQuestNpc(arg1, npcs.Npc16712.id, 0, false, 0)
end

function Quest40238:OnSubFinish4023807(arg1)
    print("OnSubFinish4023807")
    this:NpcDestroyImmediately(3, npcs.Npc16712.alias)
end

function Quest40238:OnSubStart4023808(arg1)
    print("OnSubStart4023808")
    this:CreateQuestNpc(arg1, npcs.Npc16713.id, 0, false, 0)
end

function Quest40238:OnSubFinish4023808(arg1)
    print("OnSubFinish4023808")
    this:NpcDestroyImmediately(3, npcs.Npc16713.alias)
end

function Quest40238:OnSubStart4023810(arg1)
    print("OnSubStart4023810")
    this:CreateQuestNpc(arg1, npcs.Npc1081.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1081.alias, 40238):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2613.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2613.alias, 40238):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40238:OnSubFinish4023810(arg1)
    print("OnSubFinish4023810")
    this:NpcDestroyImmediately(3, npcs.Npc1081.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2613.alias)
end

function Quest40238:OnSubStart4023809(arg1)
    print("OnSubStart4023809")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023809, 0, 20, 2, npcs.Npc16350.id)
end

function Quest40238:OnSubFinish4023809(arg1)
    print("OnSubFinish4023809")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_BlackScreen, nil, nil, nil)
end

function Quest40238:OnSubStart4023805(arg1)
    print("OnSubStart4023805")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16350.id, 0, 4023805, 10, true)
end

function Quest40238:OnSubFinish4023805(arg1)
    print("OnSubFinish4023805")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_BlackScreen, nil, nil, nil)
end

function Quest40238:OnSubStart4023812(arg1)
    print("OnSubStart4023812")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023812, 0, 20, 2, npcs.Npc16350.id)
end

function Quest40238:OnSubFinish4023812(arg1)
    print("OnSubFinish4023812")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40238:OnSubStart4023811(arg1)
    print("OnSubStart4023811")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023811, 0, 20, 2, npcs.Npc16350.id)
end

function Quest40238:OnSubFinish4023811(arg1)
    print("OnSubFinish4023811")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40238:OnSubStart4023813(arg1)
    print("OnSubStart4023813")
    actorMgr:CreateActorWithPos("Q4023813Trigger", "Actor/Gadget/Q4023813Trigger", 70900002, 0, points._Q4023813TriggerPoint_.pos, points._Q4023813TriggerPoint_.rot, true, false, 3, nil, 0, 40238)
end

function Quest40238:OnSubFinish4023813(arg1)
    print("OnSubFinish4023813")
end

function Quest40238:OnSubStart4023814(arg1)
    print("OnSubStart4023814")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023814, 0, 30, 2, npcs.Npc16350.id)
end

function Quest40238:OnSubFinish4023814(arg1)
    print("OnSubFinish4023814")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

return Quest40238
