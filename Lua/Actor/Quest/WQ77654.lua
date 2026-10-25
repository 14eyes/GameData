require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77654 = class("Quest77654", QuestActorProxy)
Quest77654.defaultAlias = "Quest77654"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77654:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77654:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765402"] = self.OnSubStart7765402,
        ["7765403"] = self.OnSubStart7765403,
        ["7765401"] = self.OnSubStart7765401,
        ["7765404"] = self.OnSubStart7765404,
        ["7765405"] = self.OnSubStart7765405,
        ["7765406"] = self.OnSubStart7765406
    }
end

function Quest77654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765402"] = self.OnSubFinish7765402,
        ["7765403"] = self.OnSubFinish7765403,
        ["7765401"] = self.OnSubFinish7765401,
        ["7765404"] = self.OnSubFinish7765404,
        ["7765405"] = self.OnSubFinish7765405,
        ["7765406"] = self.OnSubFinish7765406
    }
end

function Quest77654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77654:Start()
    print("Start")
end

function Quest77654:OnDestroy()
    print("OnDestroy")
end

function Quest77654:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77654:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77654:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77654Trigger", 77654)
end

function Quest77654:ActorDestroy(arg1, arg2)
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

function Quest77654:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77654:OnSubStart7765402(arg1)
    print("OnSubStart7765402")
end

function Quest77654:OnSubFinish7765402(arg1)
    print("OnSubFinish7765402")
end

function Quest77654:OnSubStart7765403(arg1)
    print("OnSubStart7765403")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q77654Trigger", "Actor/Gadget/Q77654Trigger", 70900002, 0, points._Q77654TriggerPoint_.pos, points._Q77654TriggerPoint_.rot, true, false, 3, nil, 0, 77654)
    end)
end

function Quest77654:OnSubFinish7765403(arg1)
    print("OnSubFinish7765403")
    this:NpcDestroyImmediately(3, npcs.Npc7580.alias)
end

function Quest77654:OnSubStart7765401(arg1)
    print("OnSubStart7765401")
end

function Quest77654:OnSubFinish7765401(arg1)
    print("OnSubFinish7765401")
end

function Quest77654:OnSubStart7765404(arg1)
    print("OnSubStart7765404")
end

function Quest77654:OnSubFinish7765404(arg1)
    print("OnSubFinish7765404")
end

function Quest77654:OnSubStart7765405(arg1)
    print("OnSubStart7765405")
end

function Quest77654:OnSubFinish7765405(arg1)
    print("OnSubFinish7765405")
end

function Quest77654:OnSubStart7765406(arg1)
    print("OnSubStart7765406")
end

function Quest77654:OnSubFinish7765406(arg1)
    print("OnSubFinish7765406")
end

return Quest77654
