require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70687 = class("Quest70687", QuestActorProxy)
Quest70687.defaultAlias = "Quest70687"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70687:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70687:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068701"] = self.OnSubStart7068701}
end

function Quest70687:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068701"] = self.OnSubFinish7068701}
end

function Quest70687:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70687:Start()
    print("Start")
end

function Quest70687:OnDestroy()
    print("OnDestroy")
end

function Quest70687:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70687:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70687:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70687:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7068701Trigger")
end

function Quest70687:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70687:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70687:OnSubStart7068701(arg1)
    print("OnSubStart7068701")
    this:CreateQuestNpc(arg1, npcs.Npc9500.id, 0, false, 0)
    this:LevelLoadFinishSafeCall(nil)
    actorMgr:CreateActorWithPos("Q7068701Trigger", "Actor/Gadget/Q7068701Trigger", 70900002, 0, points._Q7068701TriggerPoint_.pos, points._Q7068701TriggerPoint_.rot, true, false, 48000)
end

function Quest70687:OnSubFinish7068701(arg1)
    print("OnSubFinish7068701")
    this:NpcDestroyWithBlackscreen(48000, npcs.Npc9500.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2349, nil)
        this:ActorDestroy("Q7068701Trigger")
    end)
end

return Quest70687
