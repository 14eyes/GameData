require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75500 = class("Quest75500", QuestActorProxy)
Quest75500.defaultAlias = "Quest75500"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75500:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75500:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550001"] = self.OnSubStart7550001}
end

function Quest75500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550001"] = self.OnSubFinish7550001}
end

function Quest75500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75500:Start()
    print("Start")
end

function Quest75500:OnDestroy()
    print("OnDestroy")
end

function Quest75500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75500:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30609.alias, 3)
    this:ActorDestroy("Q75500trigger")
end

function Quest75500:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75500:OnSubStart7550001(arg1)
    print("OnSubStart7550001")
    this:CreateQuestNpc(arg1, npcs.Npc30609.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30609.alias, 75500):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q75500trigger", "Actor/Gadget/Q75500trigger", 70900002, 0, points._Q75500triggerPoint_.pos, points._Q75500triggerPoint_.rot, true, false, 3)
end

function Quest75500:OnSubFinish7550001(arg1)
    print("OnSubFinish7550001")
    this:SafeDestroyQuestNpc(npcs.Npc30609.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("NatlanTourDetailPage", 0)
    end)
end

return Quest75500
