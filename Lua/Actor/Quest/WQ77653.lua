require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77653 = class("Quest77653", QuestActorProxy)
Quest77653.defaultAlias = "Quest77653"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77653:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77653:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7765301"] = self.OnSubStart7765301}
end

function Quest77653:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7765301"] = self.OnSubFinish7765301}
end

function Quest77653:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77653:Start()
    print("Start")
end

function Quest77653:OnDestroy()
    print("OnDestroy")
end

function Quest77653:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77653:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77653:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77653:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77653Trigger", 77653)
end

function Quest77653:ActorDestroy(arg1, arg2)
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

function Quest77653:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77653:OnSubStart7765301(arg1)
    print("OnSubStart7765301")
    actorMgr:CreateActorWithPos("Q77653Trigger", "Actor/Gadget/Q77653Trigger", 70900002, 0, points._Q77653TriggerPoint_.pos, points._Q77653TriggerPoint_.rot, true, false, 3, nil, 0, 77653)
end

function Quest77653:OnSubFinish7765301(arg1)
    print("OnSubFinish7765301")
    this:NpcDestroyImmediately(3, npcs.Npc7580.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowReminder(1005300007)
    end, true)
end

return Quest77653
