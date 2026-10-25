require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77209 = class("Quest77209", QuestActorProxy)
Quest77209.defaultAlias = "Quest77209"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77209:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77209:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720908"] = self.OnSubStart7720908,
        ["7720909"] = self.OnSubStart7720909,
        ["7720913"] = self.OnSubStart7720913,
        ["7720906"] = self.OnSubStart7720906,
        ["7720905"] = self.OnSubStart7720905,
        ["7720901"] = self.OnSubStart7720901,
        ["7720907"] = self.OnSubStart7720907,
        ["7720902"] = self.OnSubStart7720902,
        ["7720904"] = self.OnSubStart7720904,
        ["7720911"] = self.OnSubStart7720911,
        ["7720912"] = self.OnSubStart7720912,
        ["7720910"] = self.OnSubStart7720910,
        ["7720903"] = self.OnSubStart7720903
    }
end

function Quest77209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720908"] = self.OnSubFinish7720908,
        ["7720909"] = self.OnSubFinish7720909,
        ["7720913"] = self.OnSubFinish7720913,
        ["7720906"] = self.OnSubFinish7720906,
        ["7720905"] = self.OnSubFinish7720905,
        ["7720901"] = self.OnSubFinish7720901,
        ["7720907"] = self.OnSubFinish7720907,
        ["7720902"] = self.OnSubFinish7720902,
        ["7720904"] = self.OnSubFinish7720904,
        ["7720911"] = self.OnSubFinish7720911,
        ["7720912"] = self.OnSubFinish7720912,
        ["7720910"] = self.OnSubFinish7720910,
        ["7720903"] = self.OnSubFinish7720903
    }
end

function Quest77209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77209:Start()
    print("Start")
end

function Quest77209:OnDestroy()
    print("OnDestroy")
end

function Quest77209:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77209:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77209:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77209:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7720906Trigger", 77209)
    this:ActorDestroy("Q7720909Trigger", 77209)
end

function Quest77209:ActorDestroy(arg1, arg2)
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

function Quest77209:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77209:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77209:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77209:OnSubStart7720908(arg1)
    print("OnSubStart7720908")
end

function Quest77209:OnSubFinish7720908(arg1)
    print("OnSubFinish7720908")
    this:SetNavigationByMainId(77209, true)
end

function Quest77209:OnSubStart7720909(arg1)
    print("OnSubStart7720909")
    actorMgr:CreateActorWithPos("Q7720909Trigger", "Actor/Gadget/Q7720909Trigger", 70900002, 0, points._Q7720909TriggerPoint_.pos, points._Q7720909TriggerPoint_.rot, true, false, 3, nil, 0, 77209)
end

function Quest77209:OnSubFinish7720909(arg1)
    print("OnSubFinish7720909")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77209:OnSubStart7720913(arg1)
    print("OnSubStart7720913")
end

function Quest77209:OnSubFinish7720913(arg1)
    print("OnSubFinish7720913")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77209:OnSubStart7720906(arg1)
    print("OnSubStart7720906")
    actorMgr:CreateActorWithPos("Q7720906Trigger", "Actor/Gadget/Q7720906Trigger", 70900002, 0, points._Q7720906TriggerPoint_.pos, points._Q7720906TriggerPoint_.rot, true, false, 3, nil, 0, 77209)
end

function Quest77209:OnSubFinish7720906(arg1)
    print("OnSubFinish7720906")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77209:OnSubStart7720905(arg1)
    print("OnSubStart7720905")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc22715.id, 0, 7720905, 20, true)
end

function Quest77209:OnSubFinish7720905(arg1)
    print("OnSubFinish7720905")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22715.alias)
end

function Quest77209:OnSubStart7720901(arg1)
    print("OnSubStart7720901")
end

function Quest77209:OnSubFinish7720901(arg1)
    print("OnSubFinish7720901")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77209:OnSubStart7720907(arg1)
    print("OnSubStart7720907")
    this:NpcCreateWithNpcTrigger(npcs.Npc22733.id, 0, 20, 7720907)
end

function Quest77209:OnSubFinish7720907(arg1)
    print("OnSubFinish7720907")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22733.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77209:OnSubStart7720902(arg1)
    print("OnSubStart7720902")
end

function Quest77209:OnSubFinish7720902(arg1)
    print("OnSubFinish7720902")
end

function Quest77209:OnSubStart7720904(arg1)
    print("OnSubStart7720904")
    this:NpcCreateWithNpcTrigger(npcs.Npc22733.id, 0, 20, 7720904)
end

function Quest77209:OnSubFinish7720904(arg1)
    print("OnSubFinish7720904")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22733.alias)
end

function Quest77209:OnSubStart7720911(arg1)
    print("OnSubStart7720911")
end

function Quest77209:OnSubFinish7720911(arg1)
    print("OnSubFinish7720911")
end

function Quest77209:OnSubStart7720912(arg1)
    print("OnSubStart7720912")
end

function Quest77209:OnSubFinish7720912(arg1)
    print("OnSubFinish7720912")
end

function Quest77209:OnSubStart7720910(arg1)
    print("OnSubStart7720910")
end

function Quest77209:OnSubFinish7720910(arg1)
    print("OnSubFinish7720910")
end

function Quest77209:OnSubStart7720903(arg1)
    print("OnSubStart7720903")
end

function Quest77209:OnSubFinish7720903(arg1)
    print("OnSubFinish7720903")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

return Quest77209
