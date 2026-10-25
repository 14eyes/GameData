require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70078 = class("Quest70078", QuestActorProxy)
Quest70078.defaultAlias = "Quest70078"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70078:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7007823"] = self.OnSubStart7007823,
        ["7007801"] = self.OnSubStart7007801,
        ["7007802"] = self.OnSubStart7007802,
        ["7007803"] = self.OnSubStart7007803,
        ["7007804"] = self.OnSubStart7007804,
        ["7007806"] = self.OnSubStart7007806,
        ["7007807"] = self.OnSubStart7007807,
        ["7007808"] = self.OnSubStart7007808,
        ["7007809"] = self.OnSubStart7007809,
        ["7007810"] = self.OnSubStart7007810,
        ["7007811"] = self.OnSubStart7007811,
        ["7007812"] = self.OnSubStart7007812,
        ["7007814"] = self.OnSubStart7007814,
        ["7007815"] = self.OnSubStart7007815,
        ["7007816"] = self.OnSubStart7007816,
        ["7007817"] = self.OnSubStart7007817,
        ["7007819"] = self.OnSubStart7007819,
        ["7007820"] = self.OnSubStart7007820
    }
end

function Quest70078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7007823"] = self.OnSubFinish7007823,
        ["7007801"] = self.OnSubFinish7007801,
        ["7007802"] = self.OnSubFinish7007802,
        ["7007803"] = self.OnSubFinish7007803,
        ["7007804"] = self.OnSubFinish7007804,
        ["7007806"] = self.OnSubFinish7007806,
        ["7007807"] = self.OnSubFinish7007807,
        ["7007808"] = self.OnSubFinish7007808,
        ["7007809"] = self.OnSubFinish7007809,
        ["7007810"] = self.OnSubFinish7007810,
        ["7007811"] = self.OnSubFinish7007811,
        ["7007812"] = self.OnSubFinish7007812,
        ["7007814"] = self.OnSubFinish7007814,
        ["7007815"] = self.OnSubFinish7007815,
        ["7007816"] = self.OnSubFinish7007816,
        ["7007817"] = self.OnSubFinish7007817,
        ["7007819"] = self.OnSubFinish7007819,
        ["7007820"] = self.OnSubFinish7007820
    }
end

function Quest70078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70078:Start()
    print("Start")
end

function Quest70078:OnDestroy()
    print("OnDestroy")
end

function Quest70078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70078:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7007802Trigger", nil)
    this:ActorDestroy("Q7007804Trigger", nil)
    this:ActorDestroy("Q7007806Trigger", nil)
    this:ActorDestroy("Q7007809Trigger", nil)
    this:ActorDestroy("Q7007811Trigger", nil)
    this:ActorDestroy("Q7007815Trigger", nil)
    this:ActorDestroy("Q7007819Trigger", nil)
    this:ActorDestroy("Q7007823Trigger", nil)
end

function Quest70078:ActorDestroy(arg1, arg2)
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

function Quest70078:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70078:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70078:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70078:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70078:OnSubStart7007823(arg1)
    print("OnSubStart7007823")
    this:CreateQuestNpc(arg1, npcs.Npc22377.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22377.alias, 70078):DoFreeStyle(8073, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22419.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22419.alias, 70078):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22444.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7007823Trigger", "Actor/Gadget/Q7007823Trigger", 70900002, 0, points._Q7007823TriggerPoint_.pos, points._Q7007823TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007823(arg1)
    print("OnSubFinish7007823")
end

function Quest70078:OnSubStart7007801(arg1)
    print("OnSubStart7007801")
    this:CreateQuestNpc(arg1, npcs.Npc22377.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22377.alias, 70078):DoFreeStyle(8073, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22377.alias, 70078):DisableInteeHeadCtrl(false)
    this:NpcCreateWithNpcTrigger(npcs.Npc22419.id, 0, 5, 7007801)
    this:GetQuestNpcActor(npcs.Npc22419.alias, 70078):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22419.alias, 70078):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc22444.id, 0, false, 0)
end

function Quest70078:OnSubFinish7007801(arg1)
    print("OnSubFinish7007801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22444.alias)
end

function Quest70078:OnSubStart7007802(arg1)
    print("OnSubStart7007802")
    this:CreateQuestNpc(arg1, npcs.Npc22419.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22419.alias, 70078):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22377.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22377.alias, 70078):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7007802Trigger", "Actor/Gadget/Q7007802Trigger", 70900002, 0, points._Q7007802TriggerPoint_.pos, points._Q7007802TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007802(arg1)
    print("OnSubFinish7007802")
    this:SafeDestroyQuestNpc(npcs.Npc22419.alias, 3)
end

function Quest70078:OnSubStart7007803(arg1)
    print("OnSubStart7007803")
    this:NpcCreateWithNpcTrigger(npcs.Npc22377.id, 0, 5, 7007803)
    this:GetQuestNpcActor(npcs.Npc22377.alias, 70078):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest70078:OnSubFinish7007803(arg1)
    print("OnSubFinish7007803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22377.alias)
end

function Quest70078:OnSubStart7007804(arg1)
    print("OnSubStart7007804")
    actorMgr:CreateActorWithPos("Q7007804Trigger", "Actor/Gadget/Q7007804Trigger", 70900002, 0, points._Q7007804TriggerPoint_.pos, points._Q7007804TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007804(arg1)
    print("OnSubFinish7007804")
    this:QuestNarratorTask(datas.NarratorWithId_7007899, nil)
end

function Quest70078:OnSubStart7007806(arg1)
    print("OnSubStart7007806")
    this:CreateQuestNpc(arg1, npcs.Npc1749.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1749.alias, 70078):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7007806Trigger", "Actor/Gadget/Q7007806Trigger", 70900002, 0, points._Q7007806TriggerPoint_.pos, points._Q7007806TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007806(arg1)
    print("OnSubFinish7007806")
end

function Quest70078:OnSubStart7007807(arg1)
    print("OnSubStart7007807")
    this:NpcCreateWithNpcTrigger(npcs.Npc1749.id, 0, 10, 7007807)
    this:GetQuestNpcActor(npcs.Npc1749.alias, 70078):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22377.id, 0, false, 0)
end

function Quest70078:OnSubFinish7007807(arg1)
    print("OnSubFinish7007807")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1749.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22377.alias)
end

function Quest70078:OnSubStart7007808(arg1)
    print("OnSubStart7007808")
end

function Quest70078:OnSubFinish7007808(arg1)
    print("OnSubFinish7007808")
end

function Quest70078:OnSubStart7007809(arg1)
    print("OnSubStart7007809")
    actorMgr:CreateActorWithPos("Q7007809Trigger", "Actor/Gadget/Q7007809Trigger", 70900002, 0, points._Q7007809TriggerPoint_.pos, points._Q7007809TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007809(arg1)
    print("OnSubFinish7007809")
end

function Quest70078:OnSubStart7007810(arg1)
    print("OnSubStart7007810")
end

function Quest70078:OnSubFinish7007810(arg1)
    print("OnSubFinish7007810")
end

function Quest70078:OnSubStart7007811(arg1)
    print("OnSubStart7007811")
    actorMgr:CreateActorWithPos("Q7007811Trigger", "Actor/Gadget/Q7007811Trigger", 70900002, 0, points._Q7007811TriggerPoint_.pos, points._Q7007811TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007811(arg1)
    print("OnSubFinish7007811")
end

function Quest70078:OnSubStart7007812(arg1)
    print("OnSubStart7007812")
end

function Quest70078:OnSubFinish7007812(arg1)
    print("OnSubFinish7007812")
end

function Quest70078:OnSubStart7007814(arg1)
    print("OnSubStart7007814")
end

function Quest70078:OnSubFinish7007814(arg1)
    print("OnSubFinish7007814")
end

function Quest70078:OnSubStart7007815(arg1)
    print("OnSubStart7007815")
    actorMgr:CreateActorWithPos("Q7007815Trigger", "Actor/Gadget/Q7007815Trigger", 70900002, 0, points._Q7007815TriggerPoint_.pos, points._Q7007815TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007815(arg1)
    print("OnSubFinish7007815")
end

function Quest70078:OnSubStart7007816(arg1)
    print("OnSubStart7007816")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7007816, 0, 5, 0, npcs.Paimon.id)
end

function Quest70078:OnSubFinish7007816(arg1)
    print("OnSubFinish7007816")
    this:NpcDestroyWithDither(3, npcs.Paimon.alias)
end

function Quest70078:OnSubStart7007817(arg1)
    print("OnSubStart7007817")
end

function Quest70078:OnSubFinish7007817(arg1)
    print("OnSubFinish7007817")
end

function Quest70078:OnSubStart7007819(arg1)
    print("OnSubStart7007819")
    this:CreateQuestNpc(arg1, npcs.Npc1749.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22377.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7007819Trigger", "Actor/Gadget/Q7007819Trigger", 70900002, 0, points._Q7007819TriggerPoint_.pos, points._Q7007819TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70078:OnSubFinish7007819(arg1)
    print("OnSubFinish7007819")
end

function Quest70078:OnSubStart7007820(arg1)
    print("OnSubStart7007820")
    this:NpcCreateWithNpcTrigger(npcs.Npc22377.id, 0, 5, 7007820)
    this:CreateQuestNpc(arg1, npcs.Npc1749.id, 0, false, 0)
end

function Quest70078:OnSubFinish7007820(arg1)
    print("OnSubFinish7007820")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22377.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1749.alias)
end

return Quest70078
