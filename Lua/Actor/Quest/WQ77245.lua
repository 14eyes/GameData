require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77245 = class("Quest77245", QuestActorProxy)
Quest77245.defaultAlias = "Quest77245"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77245:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77245:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7724501"] = self.OnSubStart7724501, ["7724502"] = self.OnSubStart7724502}
end

function Quest77245:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7724501"] = self.OnSubFinish7724501, ["7724502"] = self.OnSubFinish7724502}
end

function Quest77245:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77245:Start()
    print("Start")
end

function Quest77245:OnDestroy()
    print("OnDestroy")
end

function Quest77245:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77245:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77245:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77245:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7724501Trigger", 77245)
    this:ActorDestroy("Q7724502Trigger", 77245)
end

function Quest77245:ActorDestroy(arg1, arg2)
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

function Quest77245:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77245:OnSubStart7724501(arg1)
    print("OnSubStart7724501")
    this:CreateQuestNpc(arg1, npcs.Npc17111.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7724501Trigger", "Actor/Gadget/Q7724501Trigger", 70900002, 0, points._Q7724501TriggerPoint_.pos, points._Q7724501TriggerPoint_.rot, true, false, 3, nil, 0, 77245)
end

function Quest77245:OnSubFinish7724501(arg1)
    print("OnSubFinish7724501")
    this:ActorDestroy("Q7724501Trigger", 77245)
end

function Quest77245:OnSubStart7724502(arg1)
    print("OnSubStart7724502")
    this:CreateQuestNpc(arg1, npcs.Npc17111.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7724502Trigger", "Actor/Gadget/Q7724502Trigger", 70900002, 0, points._Q7724502TriggerPoint_.pos, points._Q7724502TriggerPoint_.rot, true, false, 3, nil, 0, 77245)
end

function Quest77245:OnSubFinish7724502(arg1)
    print("OnSubFinish7724502")
    this:NpcDestroyWithDither(3, npcs.Npc17111.alias)
    this:ActorDestroy("Q7724502Trigger", 77245)
end

return Quest77245
