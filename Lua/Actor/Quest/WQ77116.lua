require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77116 = class("Quest77116", QuestActorProxy)
Quest77116.defaultAlias = "Quest77116"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77116:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7711601"] = self.OnSubStart7711601,
        ["7711602"] = self.OnSubStart7711602,
        ["7711604"] = self.OnSubStart7711604,
        ["7711605"] = self.OnSubStart7711605,
        ["7711606"] = self.OnSubStart7711606,
        ["7711611"] = self.OnSubStart7711611,
        ["7711607"] = self.OnSubStart7711607,
        ["7711609"] = self.OnSubStart7711609,
        ["7711610"] = self.OnSubStart7711610,
        ["7711603"] = self.OnSubStart7711603,
        ["7711608"] = self.OnSubStart7711608
    }
end

function Quest77116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7711601"] = self.OnSubFinish7711601,
        ["7711602"] = self.OnSubFinish7711602,
        ["7711604"] = self.OnSubFinish7711604,
        ["7711605"] = self.OnSubFinish7711605,
        ["7711606"] = self.OnSubFinish7711606,
        ["7711611"] = self.OnSubFinish7711611,
        ["7711607"] = self.OnSubFinish7711607,
        ["7711609"] = self.OnSubFinish7711609,
        ["7711610"] = self.OnSubFinish7711610,
        ["7711603"] = self.OnSubFinish7711603,
        ["7711608"] = self.OnSubFinish7711608
    }
end

function Quest77116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7711606"] = self.OnSubFailed7711606,
        ["7711607"] = self.OnSubFailed7711607,
        ["7711609"] = self.OnSubFailed7711609
    }
end

function Quest77116:Start()
    print("Start")
end

function Quest77116:OnDestroy()
    print("OnDestroy")
end

function Quest77116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77116:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7711611N22308Trigger")
    this:DestroyNpcTrigger("Q7711609N22308Trigger")
    this:DestroyNpcTrigger("Q7711602N22308Trigger")
    this:DestroyNpcTrigger("Q7711601N22308Trigger")
    this:ActorDestroy("Q7711609Trigger", 0)
    this:ActorDestroy("Q7711607Trigger", 0)
    this:ActorDestroy("Q7711606Trigger", 0)
    this:ActorDestroy("Q7711605Trigger", 0)
    this:ActorDestroy("Q7711603Trigger", 0)
    this:ActorDestroy("Q7711608Trigger", 0)
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
    this:CancelStoryByQuest(147711603)
    this:CancelStoryByQuest(117711601)
    this:CancelStoryByQuest(147711600)
    this:RecycleAllRes()
end

function Quest77116:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7711609Trigger", 0)
    this:ActorDestroy("Q7711607Trigger", 0)
    this:ActorDestroy("Q7711606Trigger", 0)
    this:ActorDestroy("Q7711605Trigger", 0)
    this:ActorDestroy("Q7711603Trigger", 0)
    this:ActorDestroy("Q7711608Trigger", 0)
end

function Quest77116:ActorDestroy(arg1, arg2)
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

function Quest77116:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77116:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77116:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77116:OnSubStart7711601(arg1)
    print("OnSubStart7711601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711601, 0, 10, 0, npcs.Npc22308.id)
end

function Quest77116:OnSubFinish7711601(arg1)
    print("OnSubFinish7711601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22308.alias)
end

function Quest77116:OnSubStart7711602(arg1)
    print("OnSubStart7711602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711602, 0, 20, 0, npcs.Npc22308.id)
end

function Quest77116:OnSubFinish7711602(arg1)
    print("OnSubFinish7711602")
end

function Quest77116:OnSubStart7711604(arg1)
    print("OnSubStart7711604")
    this:DeployStoryByQuest(147711600)
end

function Quest77116:OnSubFinish7711604(arg1)
    print("OnSubFinish7711604")
end

function Quest77116:OnSubStart7711605(arg1)
    print("OnSubStart7711605")
    actorMgr:CreateActorWithPos("Q7711605Trigger", "Actor/Gadget/Q7711605Trigger", 70900002, 0, points._Q7711605TriggerPoint_.pos, points._Q7711605TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77116:OnSubFinish7711605(arg1)
    print("OnSubFinish7711605")
end

function Quest77116:OnSubStart7711606(arg1)
    print("OnSubStart7711606")
    actorMgr:CreateActorWithPos("Q7711606Trigger", "Actor/Gadget/Q7711606Trigger", 70900002, 0, points._Q7711606TriggerPoint_.pos, points._Q7711606TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(117711601)
    this:CancelStoryByQuest(147711600)
end

function Quest77116:OnSubFinish7711606(arg1)
    print("OnSubFinish7711606")
    this:CancelStoryByQuest(117711601)
end

function Quest77116:OnSubFailed7711606(arg1)
    print("OnSubFailed7711606")
    this:RecycleAllRes()
end

function Quest77116:OnSubStart7711611(arg1)
    print("OnSubStart7711611")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711611, 0, 15, 0, npcs.Npc22308.id)
end

function Quest77116:OnSubFinish7711611(arg1)
    print("OnSubFinish7711611")
    this:CancelStoryByQuest(117711601)
end

function Quest77116:OnSubStart7711607(arg1)
    print("OnSubStart7711607")
    actorMgr:CreateActorWithPos("Q7711607Trigger", "Actor/Gadget/Q7711607Trigger", 70900002, 0, points._Q7711607TriggerPoint_.pos, points._Q7711607TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147711603)
end

function Quest77116:OnSubFinish7711607(arg1)
    print("OnSubFinish7711607")
end

function Quest77116:OnSubFailed7711607(arg1)
    print("OnSubFailed7711607")
    this:RecycleAllRes()
end

function Quest77116:OnSubStart7711609(arg1)
    print("OnSubStart7711609")
    this:NpcCreateWithNpcTrigger(npcs.Npc22518.id, 0, 10, 7711609)
    this:NpcCreateWithNpcTrigger(npcs.Npc22517.id, 0, 10, 7711609)
end

function Quest77116:OnSubFinish7711609(arg1)
    print("OnSubFinish7711609")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22308.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22518.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22517.alias, 3)
    this:CancelStoryByQuest(147711603)
end

function Quest77116:OnSubFailed7711609(arg1)
    print("OnSubFailed7711609")
    this:RecycleAllRes()
end

function Quest77116:OnSubStart7711610(arg1)
    print("OnSubStart7711610")
    this:PlayCutsceneIndex(7711610, function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
        actorUtils.FinishQuestID(false, 7711610)
    end, nil, function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
        actorUtils.FinishQuestID(false, 7711610)
    end, false)
end

function Quest77116:OnSubFinish7711610(arg1)
    print("OnSubFinish7711610")
    this:SetNavigationByMainId(77103, true)
end

function Quest77116:OnSubStart7711603(arg1)
    print("OnSubStart7711603")
    actorMgr:CreateActorWithPos("Q7711603Trigger", "Actor/Gadget/Q7711603Trigger", 70900002, 0, points._Q7711603TriggerPoint_.pos, points._Q7711603TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77116:OnSubFinish7711603(arg1)
    print("OnSubFinish7711603")
end

function Quest77116:OnSubStart7711608(arg1)
    print("OnSubStart7711608")
    actorMgr:CreateActorWithPos("Q7711608Trigger", "Actor/Gadget/Q7711608Trigger", 70900002, 0, points._Q7711608TriggerPoint_.pos, points._Q7711608TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77116:OnSubFinish7711608(arg1)
    print("OnSubFinish7711608")
end

return Quest77116
