require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73708 = class("Quest73708", QuestActorProxy)
Quest73708.defaultAlias = "Quest73708"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest73708:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73708:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7370801"] = self.OnSubStart7370801,
        ["7370802"] = self.OnSubStart7370802,
        ["7370803"] = self.OnSubStart7370803
    }
end

function Quest73708:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7370801"] = self.OnSubFinish7370801,
        ["7370802"] = self.OnSubFinish7370802,
        ["7370803"] = self.OnSubFinish7370803
    }
end

function Quest73708:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73708:Start()
    print("Start")
end

function Quest73708:OnDestroy()
    print("OnDestroy")
end

function Quest73708:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73708:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73708:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7370801N30983Trigger")
    this:DestroyNpcTrigger("Q7370803N30969Trigger")
    this:ActorDestroy("Q7370802Trigger", 0)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30983_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30981.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30982.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30984.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30980.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30969.alias, 3)
    this:RecycleAllRes()
end

function Quest73708:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7370802Trigger", 0)
end

function Quest73708:ActorDestroy(arg1, arg2)
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

function Quest73708:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest73708:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest73708:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest73708:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73708:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73708:OnSubStart7370801(arg1)
    print("OnSubStart7370801")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc30983_1.id, 0, 7370801, 30, true)
    if this:GetQuestVar(7370801, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7370801, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest73708:OnSubFinish7370801(arg1)
    print("OnSubFinish7370801")
    this:NpcDestroyImmediately(3, npcs.Npc30983_1.alias)
end

function Quest73708:OnSubStart7370802(arg1)
    print("OnSubStart7370802")
    this:CreateQuestNpc(arg1, npcs.Npc30981.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30982.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30984.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30980.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30983_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7370802Trigger", "Actor/Gadget/Q7370802Trigger", 70900002, 0, points._Q7370802TriggerPoint_.pos, points._Q7370802TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest73708:OnSubFinish7370802(arg1)
    print("OnSubFinish7370802")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc30981.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc30982.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc30984.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc30980.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30983_1.alias)
    this:QuestNarratorTask(datas.NarratorWithId_7370802, nil)
    this:ActorDestroy("", 0)
    this:DestroyQuestTrigger("Q7370802Trigger", false)
end

function Quest73708:OnSubStart7370803(arg1)
    print("OnSubStart7370803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7370803, 0, 10, 1, npcs.Npc30969.id)
end

function Quest73708:OnSubFinish7370803(arg1)
    print("OnSubFinish7370803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30969.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2562, nil)
    end)
end

return Quest73708
