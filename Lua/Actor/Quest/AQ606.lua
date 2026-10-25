require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest606 = class("Quest606", QuestActorProxy)
Quest606.defaultAlias = "Quest606"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest606:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest606:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60604"] = self.OnSubStart60604,
        ["60601"] = self.OnSubStart60601,
        ["60602"] = self.OnSubStart60602,
        ["60603"] = self.OnSubStart60603,
        ["60605"] = self.OnSubStart60605
    }
end

function Quest606:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60604"] = self.OnSubFinish60604,
        ["60601"] = self.OnSubFinish60601,
        ["60602"] = self.OnSubFinish60602,
        ["60603"] = self.OnSubFinish60603,
        ["60605"] = self.OnSubFinish60605
    }
end

function Quest606:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["60603"] = self.OnSubFailed60603}
end

function Quest606:Start()
    print("Start")
end

function Quest606:OnDestroy()
    print("OnDestroy")
end

function Quest606:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest606:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest606:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest606:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q60601Trigger")
end

function Quest606:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest606:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest606:OnSubStart60604(arg1)
    print("OnSubStart60604")
end

function Quest606:OnSubFinish60604(arg1)
    print("OnSubFinish60604")
    this:SafeDestroyQuestNpc(npcs.Npc1062.alias, 20260)
    this:UnCallDelayByQuest("Q60603N1062CallDelay")
    this:ActorDestroy("Q60603N1062Trigger")
    this:ActorDestroy("Q60601Trigger")
end

function Quest606:OnSubStart60601(arg1)
    print("OnSubStart60601")
    this:CreateQuestNpc(arg1, npcs.Npc1062.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q60601Trigger", "Actor/Gadget/Q60601Trigger", 70900002, 0, points._Q60601TriggerPoint_.pos, points._Q60601TriggerPoint_.rot, true, false, 20260)
end

function Quest606:OnSubFinish60601(arg1)
    print("OnSubFinish60601")
    this:SafeDestroyQuestNpc(npcs.Npc1062.alias, 20260)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest606:OnSubStart60602(arg1)
    print("OnSubStart60602")
end

function Quest606:OnSubFinish60602(arg1)
    print("OnSubFinish60602")
end

function Quest606:OnSubStart60603(arg1)
    print("OnSubStart60603")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60603, 0, 30, 1, npcs.Npc1062.id)
    this:GetQuestNpcActor(npcs.Npc1062.alias, 606):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest606:OnSubFinish60603(arg1)
    print("OnSubFinish60603")
end

function Quest606:OnSubFailed60603(arg1)
    print("OnSubFailed60603")
    this:UnCallDelayByQuest("Q60603N1062CallDelay")
    this:ActorDestroy("Q60603N1062Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1062.alias, 20260)
end

function Quest606:OnSubStart60605(arg1)
    print("OnSubStart60605")
    this:GetQuestNpcActor(npcs.Npc1062.alias, 606):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest606:OnSubFinish60605(arg1)
    print("OnSubFinish60605")
end

return Quest606
