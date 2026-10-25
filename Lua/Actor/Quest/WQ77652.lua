require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77652 = class("Quest77652", QuestActorProxy)
Quest77652.defaultAlias = "Quest77652"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77652:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77652:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7765201"] = self.OnSubStart7765201}
end

function Quest77652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7765201"] = self.OnSubFinish7765201}
end

function Quest77652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77652:Start()
    print("Start")
end

function Quest77652:OnDestroy()
    print("OnDestroy")
end

function Quest77652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77652:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77652:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77652Trigger", 77652)
end

function Quest77652:ActorDestroy(arg1, arg2)
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

function Quest77652:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77652:OnSubStart7765201(arg1)
    print("OnSubStart7765201")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q77652Trigger", "Actor/Gadget/Q77652Trigger", 70900002, 0, points._Q77652TriggerPoint_.pos, points._Q77652TriggerPoint_.rot, true, false, 3, nil, 0, 77652)
    end, true)
end

function Quest77652:OnSubFinish7765201(arg1)
    print("OnSubFinish7765201")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

return Quest77652
