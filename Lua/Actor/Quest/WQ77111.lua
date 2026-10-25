require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77111 = class("Quest77111", QuestActorProxy)
Quest77111.defaultAlias = "Quest77111"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77111:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7711105"] = self.OnSubStart7711105,
        ["7711101"] = self.OnSubStart7711101,
        ["7711106"] = self.OnSubStart7711106,
        ["7711103"] = self.OnSubStart7711103,
        ["7711104"] = self.OnSubStart7711104,
        ["7711102"] = self.OnSubStart7711102
    }
end

function Quest77111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7711105"] = self.OnSubFinish7711105,
        ["7711101"] = self.OnSubFinish7711101,
        ["7711106"] = self.OnSubFinish7711106,
        ["7711103"] = self.OnSubFinish7711103,
        ["7711104"] = self.OnSubFinish7711104,
        ["7711102"] = self.OnSubFinish7711102
    }
end

function Quest77111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7711101"] = self.OnSubFailed7711101,
        ["7711106"] = self.OnSubFailed7711106,
        ["7711103"] = self.OnSubFailed7711103
    }
end

function Quest77111:Start()
    print("Start")
end

function Quest77111:OnDestroy()
    print("OnDestroy")
end

function Quest77111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77111:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7711102N22308Trigger")
    this:DestroyNpcTrigger("Q7711102N12404Trigger")
    this:DestroyNpcTrigger("Q7711104N12404Trigger")
    this:ActorDestroy("Q7711101Trigger", 77111)
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
    this:RecycleAllRes()
end

function Quest77111:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7711101Trigger", 77111)
    this:ActorDestroy("Q7710224Trigger", 0)
    this:ActorDestroy("Q7711106Trigger", 77111)
end

function Quest77111:ActorDestroy(arg1, arg2)
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

function Quest77111:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77111:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77111:OnSubStart7711105(arg1)
    print("OnSubStart7711105")
    actorMgr:CreateActorWithPos("Q7710224Trigger", "Actor/Gadget/Q7710224Trigger", 70900002, 0, points._Q7710224TriggerPoint_.pos, points._Q7710224TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147710206)
end

function Quest77111:OnSubFinish7711105(arg1)
    print("OnSubFinish7711105")
end

function Quest77111:OnSubStart7711101(arg1)
    print("OnSubStart7711101")
    actorMgr:CreateActorWithPos("Q7711101Trigger", "Actor/Gadget/Q7711101Trigger", 70900002, 0, points._Q7711101TriggerPoint_.pos, points._Q7711101TriggerPoint_.rot, true, false, 3, nil, 0, 77111)
end

function Quest77111:OnSubFinish7711101(arg1)
    print("OnSubFinish7711101")
    this:CancelStoryByQuest(147710206)
end

function Quest77111:OnSubFailed7711101(arg1)
    print("OnSubFailed7711101")
    this:RecycleAllRes()
end

function Quest77111:OnSubStart7711106(arg1)
    print("OnSubStart7711106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711106, 0, 20, 0.5, npcs.Npc12404.id)
end

function Quest77111:OnSubFinish7711106(arg1)
    print("OnSubFinish7711106")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77111:OnSubFailed7711106(arg1)
    print("OnSubFailed7711106")
    this:RecycleAllRes()
end

function Quest77111:OnSubStart7711103(arg1)
    print("OnSubStart7711103")
end

function Quest77111:OnSubFinish7711103(arg1)
    print("OnSubFinish7711103")
    this:SetNavigationByMainId(77112, true)
end

function Quest77111:OnSubFailed7711103(arg1)
    print("OnSubFailed7711103")
    this:RecycleAllRes()
end

function Quest77111:OnSubStart7711104(arg1)
    print("OnSubStart7711104")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 50, 7711104)
end

function Quest77111:OnSubFinish7711104(arg1)
    print("OnSubFinish7711104")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77111:OnSubStart7711102(arg1)
    print("OnSubStart7711102")
end

function Quest77111:OnSubFinish7711102(arg1)
    print("OnSubFinish7711102")
end

return Quest77111
