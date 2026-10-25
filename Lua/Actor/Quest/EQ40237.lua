require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40237 = class("Quest40237", QuestActorProxy)
Quest40237.defaultAlias = "Quest40237"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40237:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40237:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4023701"] = self.OnSubStart4023701,
        ["4023702"] = self.OnSubStart4023702,
        ["4023703"] = self.OnSubStart4023703,
        ["4023710"] = self.OnSubStart4023710,
        ["4023704"] = self.OnSubStart4023704,
        ["4023705"] = self.OnSubStart4023705,
        ["4023706"] = self.OnSubStart4023706,
        ["4023707"] = self.OnSubStart4023707,
        ["4023708"] = self.OnSubStart4023708,
        ["4023709"] = self.OnSubStart4023709
    }
end

function Quest40237:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4023701"] = self.OnSubFinish4023701,
        ["4023702"] = self.OnSubFinish4023702,
        ["4023703"] = self.OnSubFinish4023703,
        ["4023710"] = self.OnSubFinish4023710,
        ["4023704"] = self.OnSubFinish4023704,
        ["4023705"] = self.OnSubFinish4023705,
        ["4023706"] = self.OnSubFinish4023706,
        ["4023707"] = self.OnSubFinish4023707,
        ["4023708"] = self.OnSubFinish4023708,
        ["4023709"] = self.OnSubFinish4023709
    }
end

function Quest40237:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4023706"] = self.OnSubFailed4023706}
end

function Quest40237:Start()
    print("Start")
end

function Quest40237:OnDestroy()
    print("OnDestroy")
end

function Quest40237:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40237:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40237:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 1204)
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 1205)
    this:RecycleAllRes()
    this:DestroyNpcTrigger("Q4023703N16350Trigger")
    this:DestroyNpcTrigger("Q4023704N16350Trigger")
    this:DestroyNpcTrigger("Q4023706N16350Trigger")
    this:DestroyNpcTrigger("Q4023707N16350Trigger")
    this:DestroyNpcTrigger("Q4023708N16350Trigger")
    this:DestroyNpcTrigger("Q4023709N16350Trigger")
    this:DestroyNpcTrigger("Q4023710N16350Trigger")
    this:ActorDestroy("Q4023705Trigger", nil)
end

function Quest40237:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4023705Trigger", nil)
end

function Quest40237:ActorDestroy(arg1, arg2)
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

function Quest40237:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40237:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40237:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40237:OnSubStart4023701(arg1)
    print("OnSubStart4023701")
end

function Quest40237:OnSubFinish4023701(arg1)
    print("OnSubFinish4023701")
end

function Quest40237:OnSubStart4023702(arg1)
    print("OnSubStart4023702")
    this:QuestNarratorTask(datas.NarratorWithId_4023702, nil)
    actorUtils.FinishQuestWithParam({false}, {4023702})
end

function Quest40237:OnSubFinish4023702(arg1)
    print("OnSubFinish4023702")
end

function Quest40237:OnSubStart4023703(arg1)
    print("OnSubStart4023703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023703, 0, 10, 2, npcs.Npc16350.id)
end

function Quest40237:OnSubFinish4023703(arg1)
    print("OnSubFinish4023703")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ClearNarratorTask()
end

function Quest40237:OnSubStart4023710(arg1)
    print("OnSubStart4023710")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16350.id, 0, 4023710, 30, true)
end

function Quest40237:OnSubFinish4023710(arg1)
    print("OnSubFinish4023710")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40237:OnSubStart4023704(arg1)
    print("OnSubStart4023704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023704, 0, 30, 2, npcs.Npc16350.id)
end

function Quest40237:OnSubFinish4023704(arg1)
    print("OnSubFinish4023704")
    this:NpcDestroyImmediately(1204, npcs.Npc16350.alias)
    this:TransmitPlayerByData(arg1, 6, datas.TransmitData_BlackScreen, nil, nil, nil)
end

function Quest40237:OnSubStart4023705(arg1)
    print("OnSubStart4023705")
    actorMgr:CreateActorWithPos("Q4023705Trigger", "Actor/Gadget/Q4023705Trigger", 70900002, 0, points._Q4023705TriggerPoint_.pos, points._Q4023705TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40237:OnSubFinish4023705(arg1)
    print("OnSubFinish4023705")
end

function Quest40237:OnSubStart4023706(arg1)
    print("OnSubStart4023706")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023706, 0, 20, 1, npcs.Npc16350.id)
end

function Quest40237:OnSubFinish4023706(arg1)
    print("OnSubFinish4023706")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40237:OnSubFailed4023706(arg1)
    print("OnSubFailed4023706")
    this:RecycleAllRes()
end

function Quest40237:OnSubStart4023707(arg1)
    print("OnSubStart4023707")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023707, 0, 30, 2, npcs.Npc16350.id)
end

function Quest40237:OnSubFinish4023707(arg1)
    print("OnSubFinish4023707")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40237:OnSubStart4023708(arg1)
    print("OnSubStart4023708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023708, 0, 20, 2, npcs.Npc16350.id)
end

function Quest40237:OnSubFinish4023708(arg1)
    print("OnSubFinish4023708")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40237:OnSubStart4023709(arg1)
    print("OnSubStart4023709")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023709, 0, 30, 2, npcs.Npc16350.id)
end

function Quest40237:OnSubFinish4023709(arg1)
    print("OnSubFinish4023709")
    this:NpcDestroyImmediately(1205, npcs.Npc16350.alias)
end

return Quest40237
