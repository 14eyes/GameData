require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70054 = class("Quest70054", QuestActorProxy)
Quest70054.defaultAlias = "Quest70054"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70054:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7005401"] = self.OnSubStart7005401,
        ["7005402"] = self.OnSubStart7005402,
        ["7005403"] = self.OnSubStart7005403
    }
end

function Quest70054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7005401"] = self.OnSubFinish7005401,
        ["7005402"] = self.OnSubFinish7005402,
        ["7005403"] = self.OnSubFinish7005403
    }
end

function Quest70054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70054:Start()
    print("Start")
end

function Quest70054:OnDestroy()
    print("OnDestroy")
end

function Quest70054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70054:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70054:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7005402Trigger")
    this:ActorDestroy("Q7005403Trigger")
end

function Quest70054:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70054:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70054:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70054:OnSubStart7005401(arg1)
    print("OnSubStart7005401")
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
end

function Quest70054:OnSubFinish7005401(arg1)
    print("OnSubFinish7005401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1092.alias)
end

function Quest70054:OnSubStart7005402(arg1)
    print("OnSubStart7005402")
    actorMgr:CreateActorWithPos("Q7005402Trigger", "Actor/Gadget/Q7005402Trigger", 70900002, 0, points._Q7005402TriggerPoint_.pos, points._Q7005402TriggerPoint_.rot, true, false, 3)
end

function Quest70054:OnSubFinish7005402(arg1)
    print("OnSubFinish7005402")
end

function Quest70054:OnSubStart7005403(arg1)
    print("OnSubStart7005403")
    this:NpcCreateWithNpcTrigger(npcs.Npc6311.id, 0, 10, 7005403)
    actorMgr:CreateActorWithPos("Q7005403Trigger", "Actor/Gadget/Q7005403Trigger", 70900002, 0, points._Q7005403TriggerPoint_.pos, points._Q7005403TriggerPoint_.rot, true, false, 3)
end

function Quest70054:OnSubFinish7005403(arg1)
    print("OnSubFinish7005403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6311.alias)
end

return Quest70054
