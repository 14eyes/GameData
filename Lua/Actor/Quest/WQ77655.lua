require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77655 = class("Quest77655", QuestActorProxy)
Quest77655.defaultAlias = "Quest77655"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77655:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77655:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765505"] = self.OnSubStart7765505,
        ["7765501"] = self.OnSubStart7765501,
        ["7765503"] = self.OnSubStart7765503,
        ["7765504"] = self.OnSubStart7765504,
        ["7765502"] = self.OnSubStart7765502
    }
end

function Quest77655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765505"] = self.OnSubFinish7765505,
        ["7765501"] = self.OnSubFinish7765501,
        ["7765503"] = self.OnSubFinish7765503,
        ["7765504"] = self.OnSubFinish7765504,
        ["7765502"] = self.OnSubFinish7765502
    }
end

function Quest77655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77655:Start()
    print("Start")
end

function Quest77655:OnDestroy()
    print("OnDestroy")
end

function Quest77655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77655:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77655:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77655Trigger", 77655)
end

function Quest77655:ActorDestroy(arg1, arg2)
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

function Quest77655:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77655:OnSubStart7765505(arg1)
    print("OnSubStart7765505")
end

function Quest77655:OnSubFinish7765505(arg1)
    print("OnSubFinish7765505")
end

function Quest77655:OnSubStart7765501(arg1)
    print("OnSubStart7765501")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q77655Trigger", "Actor/Gadget/Q77655Trigger", 70900002, 0, points._Q77655TriggerPoint_.pos, points._Q77655TriggerPoint_.rot, true, false, 3, nil, 0, 77655)
    end)
end

function Quest77655:OnSubFinish7765501(arg1)
    print("OnSubFinish7765501")
    this:NpcDestroyImmediately(3, npcs.Npc7580.alias)
end

function Quest77655:OnSubStart7765503(arg1)
    print("OnSubStart7765503")
end

function Quest77655:OnSubFinish7765503(arg1)
    print("OnSubFinish7765503")
end

function Quest77655:OnSubStart7765504(arg1)
    print("OnSubStart7765504")
end

function Quest77655:OnSubFinish7765504(arg1)
    print("OnSubFinish7765504")
end

function Quest77655:OnSubStart7765502(arg1)
    print("OnSubStart7765502")
end

function Quest77655:OnSubFinish7765502(arg1)
    print("OnSubFinish7765502")
end

return Quest77655
