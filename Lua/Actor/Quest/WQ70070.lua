require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70070 = class("Quest70070", QuestActorProxy)
Quest70070.defaultAlias = "Quest70070"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70070:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70070:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7007001"] = self.OnSubStart7007001}
end

function Quest70070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7007001"] = self.OnSubFinish7007001}
end

function Quest70070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70070:Start()
    print("Start")
end

function Quest70070:OnDestroy()
    print("OnDestroy")
end

function Quest70070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70070:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7007001Trigger")
end

function Quest70070:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70070:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest70070:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70070:OnSubStart7007001(arg1)
    print("OnSubStart7007001")
    this:NpcCreateWithActionSafeCall(0, npcs.Lisa.id, arg1)
    actorMgr:CreateActorWithPos("Q7007001Trigger", "Actor/Gadget/Q7007001Trigger", 70900002, 0, points._Q7007001TriggerPoint_.pos, points._Q7007001TriggerPoint_.rot, true, false, 1004)
end

function Quest70070:OnSubFinish7007001(arg1)
    print("OnSubFinish7007001")
    this:NpcDestroyWithBlackscreen(1004, npcs.Lisa.alias)
    this:ActorDestroy("Q7007001Trigger")
end

return Quest70070
