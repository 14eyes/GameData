require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76032 = class("Quest76032", QuestActorProxy)
Quest76032.defaultAlias = "Quest76032"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7603201"] = self.OnSubStart7603201, ["7603202"] = self.OnSubStart7603202}
end

function Quest76032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7603201"] = self.OnSubFinish7603201, ["7603202"] = self.OnSubFinish7603202}
end

function Quest76032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76032:Start()
    print("Start")
end

function Quest76032:OnDestroy()
    print("OnDestroy")
end

function Quest76032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76032:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7603201Trigger")
end

function Quest76032:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76032:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76032:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76032:OnSubStart7603201(arg1)
    print("OnSubStart7603201")
    this:CreateQuestNpc(arg1, npcs.Npc22115_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22112_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22113_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22114_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7603201Trigger", "Actor/Gadget/Q7603201Trigger", 70900002, 0, points._Q7603201TriggerPoint_.pos, points._Q7603201TriggerPoint_.rot, true, false, 3)
end

function Quest76032:OnSubFinish7603201(arg1)
    print("OnSubFinish7603201")
end

function Quest76032:OnSubStart7603202(arg1)
    print("OnSubStart7603202")
    this:NpcCreateWithNpcTrigger(npcs.Npc22115_1.id, 0, 40, 7603202)
end

function Quest76032:OnSubFinish7603202(arg1)
    print("OnSubFinish7603202")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22115_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22112_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22113_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22114_1.alias)
end

return Quest76032
