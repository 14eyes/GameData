require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76024 = class("Quest76024", QuestActorProxy)
Quest76024.defaultAlias = "Quest76024"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76024:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602406"] = self.OnSubStart7602406,
        ["7602414"] = self.OnSubStart7602414,
        ["7602401"] = self.OnSubStart7602401,
        ["7602402"] = self.OnSubStart7602402,
        ["7602403"] = self.OnSubStart7602403,
        ["7602404"] = self.OnSubStart7602404,
        ["7602405"] = self.OnSubStart7602405,
        ["7602411"] = self.OnSubStart7602411,
        ["7602423"] = self.OnSubStart7602423,
        ["7602419"] = self.OnSubStart7602419,
        ["7602412"] = self.OnSubStart7602412,
        ["7602413"] = self.OnSubStart7602413,
        ["7602415"] = self.OnSubStart7602415,
        ["7602416"] = self.OnSubStart7602416,
        ["7602417"] = self.OnSubStart7602417,
        ["7602418"] = self.OnSubStart7602418,
        ["7602422"] = self.OnSubStart7602422
    }
end

function Quest76024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602406"] = self.OnSubFinish7602406,
        ["7602414"] = self.OnSubFinish7602414,
        ["7602401"] = self.OnSubFinish7602401,
        ["7602402"] = self.OnSubFinish7602402,
        ["7602403"] = self.OnSubFinish7602403,
        ["7602404"] = self.OnSubFinish7602404,
        ["7602405"] = self.OnSubFinish7602405,
        ["7602411"] = self.OnSubFinish7602411,
        ["7602423"] = self.OnSubFinish7602423,
        ["7602419"] = self.OnSubFinish7602419,
        ["7602412"] = self.OnSubFinish7602412,
        ["7602413"] = self.OnSubFinish7602413,
        ["7602415"] = self.OnSubFinish7602415,
        ["7602416"] = self.OnSubFinish7602416,
        ["7602417"] = self.OnSubFinish7602417,
        ["7602418"] = self.OnSubFinish7602418,
        ["7602422"] = self.OnSubFinish7602422
    }
end

function Quest76024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76024:Start()
    print("Start")
end

function Quest76024:OnDestroy()
    print("OnDestroy")
end

function Quest76024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76024:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7602412Trigger")
    this:ActorDestroy("Q7602414Trigger")
    this:ActorDestroy("Q7602401Trigger")
    this:ActorDestroy("Q7602417Trigger")
    this:ActorDestroy("Q7602421Trigger")
    this:ActorDestroy("Q76024Trigger_FIRST")
    this:ActorDestroy("Q7602419Trigger_RobotHead")
    this:ActorDestroy("Q7602421Trigger_intro")
    this:ActorDestroy("Q7602405Trigger")
    this:ActorDestroy("Q7602421Trigger_1")
end

function Quest76024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76024:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76024:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76024:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76024:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76024:OnSubStart7602406(arg1)
    print("OnSubStart7602406")
    this:CreateQuestNpc(arg1, npcs.Npc21837.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21837.alias, 76024):DoFreeStyle(1060, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7602421Trigger_1", "Actor/Gadget/Q7602421Trigger_1", 70900002, 0, points._Q7602421Trigger_1Point_.pos, points._Q7602421Trigger_1Point_.rot, true, false, 3)
end

function Quest76024:OnSubFinish7602406(arg1)
    print("OnSubFinish7602406")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76024:OnSubStart7602414(arg1)
    print("OnSubStart7602414")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc21837.id, 0, 7602414, 20, true)
    this:GetQuestNpcActor(npcs.Npc21837.alias, 76024):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest76024:OnSubFinish7602414(arg1)
    print("OnSubFinish7602414")
    this:QuestNarratorTask(datas.NarratorWithId_760240124, nil)
end

function Quest76024:OnSubStart7602401(arg1)
    print("OnSubStart7602401")
    this:CreateQuestNpc(arg1, npcs.Npc21837.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21837.alias, 76024):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest76024:OnSubFinish7602401(arg1)
    print("OnSubFinish7602401")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76024:OnSubStart7602402(arg1)
    print("OnSubStart7602402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602402, 0, 30, 0, npcs.Npc21837.id)
end

function Quest76024:OnSubFinish7602402(arg1)
    print("OnSubFinish7602402")
    this:NpcDestroyImmediately(3, npcs.Npc21837.alias)
end

function Quest76024:OnSubStart7602403(arg1)
    print("OnSubStart7602403")
end

function Quest76024:OnSubFinish7602403(arg1)
    print("OnSubFinish7602403")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76024:OnSubStart7602404(arg1)
    print("OnSubStart7602404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc21837.id, 0, 7602404, 25, true)
end

function Quest76024:OnSubFinish7602404(arg1)
    print("OnSubFinish7602404")
    this:SafeDestroyQuestNpc(npcs.Npc21837.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_760240125, nil)
end

function Quest76024:OnSubStart7602405(arg1)
    print("OnSubStart7602405")
    actorMgr:CreateActorWithPos("Q7602405Trigger", "Actor/Gadget/Q7602405Trigger", 70900002, 0, points._Q7602405TriggerPoint_.pos, points._Q7602405TriggerPoint_.rot, true, false, 36)
end

function Quest76024:OnSubFinish7602405(arg1)
    print("OnSubFinish7602405")
end

function Quest76024:OnSubStart7602411(arg1)
    print("OnSubStart7602411")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602411, 0, 20, 1, npcs.Paimon.id)
    this:CreateQuestNpc(arg1, npcs.Npc21837.id, 0, false, 0)
end

function Quest76024:OnSubFinish7602411(arg1)
    print("OnSubFinish7602411")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21941.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_760241101, nil)
end

function Quest76024:OnSubStart7602423(arg1)
    print("OnSubStart7602423")
    this:NpcCreateWithNpcTrigger(npcs.Npc21837.id, 0, 10, 7602423)
    this:GetQuestNpcActor(npcs.Npc21837.alias, 76024):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21837.alias, 76024):DisableInteeHeadCtrl(true)
end

function Quest76024:OnSubFinish7602423(arg1)
    print("OnSubFinish7602423")
end

function Quest76024:OnSubStart7602419(arg1)
    print("OnSubStart7602419")
    this:CreateQuestNpc(arg1, npcs.Npc21941.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602419, 0, 8, 0, npcs.Npc21837.id)
    this:CreateQuestNpc(arg1, npcs.Npc21940.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21939.id, 0, false, 0)
end

function Quest76024:OnSubFinish7602419(arg1)
    print("OnSubFinish7602419")
    this:SafeDestroyQuestNpc(npcs.Npc21941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21837.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21940.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21939.alias, 3)
end

function Quest76024:OnSubStart7602412(arg1)
    print("OnSubStart7602412")
    actorMgr:CreateActorWithPos("Q7602412Trigger", "Actor/Gadget/Q7602412Trigger", 70900002, 0, points._Q7602412TriggerPoint_.pos, points._Q7602412TriggerPoint_.rot, true, false, 3)
end

function Quest76024:OnSubFinish7602412(arg1)
    print("OnSubFinish7602412")
    this:QuestNarratorTask(datas.NarratorWithId_790240111, nil)
end

function Quest76024:OnSubStart7602413(arg1)
    print("OnSubStart7602413")
end

function Quest76024:OnSubFinish7602413(arg1)
    print("OnSubFinish7602413")
    this:QuestNarratorTask(datas.NarratorWithId_7602413, nil)
end

function Quest76024:OnSubStart7602415(arg1)
    print("OnSubStart7602415")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602415, 0, 10, 0, npcs.Npc21837.id)
    this:CreateQuestNpc(arg1, npcs.Npc21941.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21939.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21940.id, 0, false, 0)
end

function Quest76024:OnSubFinish7602415(arg1)
    print("OnSubFinish7602415")
    this:SafeDestroyQuestNpc(npcs.Npc21941.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21939.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21940.alias, 3)
end

function Quest76024:OnSubStart7602416(arg1)
    print("OnSubStart7602416")
end

function Quest76024:OnSubFinish7602416(arg1)
    print("OnSubFinish7602416")
    this:QuestNarratorTask(datas.NarratorWithId_760240112, nil)
end

function Quest76024:OnSubStart7602417(arg1)
    print("OnSubStart7602417")
    actorMgr:CreateActorWithPos("Q7602417Trigger", "Actor/Gadget/Q7602417Trigger", 70900002, 0, points._Q7602417TriggerPoint_.pos, points._Q7602417TriggerPoint_.rot, true, false, 3)
end

function Quest76024:OnSubFinish7602417(arg1)
    print("OnSubFinish7602417")
end

function Quest76024:OnSubStart7602418(arg1)
    print("OnSubStart7602418")
end

function Quest76024:OnSubFinish7602418(arg1)
    print("OnSubFinish7602418")
    this:QuestNarratorTask(datas.NarratorWithId_760241801, nil)
end

function Quest76024:OnSubStart7602422(arg1)
    print("OnSubStart7602422")
end

function Quest76024:OnSubFinish7602422(arg1)
    print("OnSubFinish7602422")
end

return Quest76024
