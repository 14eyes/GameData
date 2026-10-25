require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77106 = class("Quest77106", QuestActorProxy)
Quest77106.defaultAlias = "Quest77106"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77106:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77106:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7710601"] = self.OnSubStart7710601, ["7710602"] = self.OnSubStart7710602}
end

function Quest77106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7710601"] = self.OnSubFinish7710601, ["7710602"] = self.OnSubFinish7710602}
end

function Quest77106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7710601"] = self.OnSubFailed7710601}
end

function Quest77106:Start()
    print("Start")
end

function Quest77106:OnDestroy()
    print("OnDestroy")
end

function Quest77106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77106:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77106:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7710601Trigger", 77106)
    this:ActorDestroy("Q7710602Trigger_1", 77106)
end

function Quest77106:ActorDestroy(arg1, arg2)
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

function Quest77106:OnSubStart7710601(arg1)
    print("OnSubStart7710601")
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710601Trigger", "Actor/Gadget/Q7710601Trigger", 70900002, 0, points._Q7710601TriggerPoint_.pos, points._Q7710601TriggerPoint_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710601Trigger_1", "Actor/Gadget/Q7710601Trigger_1", 70900002, 0, points._Q7710601Trigger_1Point_.pos, points._Q7710601Trigger_1Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710601Trigger_2", "Actor/Gadget/Q7710601Trigger_2", 70900002, 0, points._Q7710601Trigger_2Point_.pos, points._Q7710601Trigger_2Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710601Trigger_3", "Actor/Gadget/Q7710601Trigger_3", 70900002, 0, points._Q7710601Trigger_3Point_.pos, points._Q7710601Trigger_3Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710601Trigger_4", "Actor/Gadget/Q7710601Trigger_4", 70900002, 0, points._Q7710601Trigger_4Point_.pos, points._Q7710601Trigger_4Point_.rot, true, false, 3, nil, 0, 77106)
end

function Quest77106:OnSubFinish7710601(arg1)
    print("OnSubFinish7710601")
    this:SafeDestroyQuestNpc(npcs.Npc7653.alias, 3)
end

function Quest77106:OnSubFailed7710601(arg1)
    print("OnSubFailed7710601")
    this:RecycleAllRes()
    this:SafeDestroyQuestNpc(npcs.Npc7653.alias, 3)
end

function Quest77106:OnSubStart7710602(arg1)
    print("OnSubStart7710602")
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710602Trigger_1", "Actor/Gadget/Q7710602Trigger_1", 70900002, 0, points._Q7710602Trigger_1Point_.pos, points._Q7710602Trigger_1Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710602Trigger_2", "Actor/Gadget/Q7710602Trigger_2", 70900002, 0, points._Q7710602Trigger_2Point_.pos, points._Q7710602Trigger_2Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710602Trigger_3", "Actor/Gadget/Q7710602Trigger_3", 70900002, 0, points._Q7710602Trigger_3Point_.pos, points._Q7710602Trigger_3Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710602Trigger_4", "Actor/Gadget/Q7710602Trigger_4", 70900002, 0, points._Q7710602Trigger_4Point_.pos, points._Q7710602Trigger_4Point_.rot, true, false, 3, nil, 0, 77106)
    actorMgr:CreateActorWithPos("Q7710602Trigger_5", "Actor/Gadget/Q7710602Trigger_5", 70900002, 0, points._Q7710602Trigger_5Point_.pos, points._Q7710602Trigger_5Point_.rot, true, false, 3, nil, 0, 77106)
end

function Quest77106:OnSubFinish7710602(arg1)
    print("OnSubFinish7710602")
end

return Quest77106
