require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70685 = class("Quest70685", QuestActorProxy)
Quest70685.defaultAlias = "Quest70685"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70685:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70685:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068501"] = self.OnSubStart7068501}
end

function Quest70685:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068501"] = self.OnSubFinish7068501}
end

function Quest70685:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70685:Start()
    print("Start")
end

function Quest70685:OnDestroy()
    print("OnDestroy")
end

function Quest70685:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70685:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70685:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70685:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70685:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70685:OnSubStart7068501(arg1)
    print("OnSubStart7068501")
    this:CreateQuestNpc(arg1, npcs.Npc1645.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7068501Trigger", "Actor/Gadget/Q7068501Trigger", 70900002, 0, points._Q7068501TriggerPoint_.pos, points._Q7068501TriggerPoint_.rot, true, false, 3)
end

function Quest70685:OnSubFinish7068501(arg1)
    print("OnSubFinish7068501")
    this:NpcDestroyWithDither(3, npcs.Npc1645.alias)
    this:ActorDestroy("Q7068501Trigger")
end

return Quest70685
