require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75166 = class("Quest75166", QuestActorProxy)
Quest75166.defaultAlias = "Quest75166"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75166:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75166:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7516601"] = self.OnSubStart7516601,
        ["7516602"] = self.OnSubStart7516602,
        ["7516603"] = self.OnSubStart7516603,
        ["7516604"] = self.OnSubStart7516604,
        ["7516605"] = self.OnSubStart7516605,
        ["7516606"] = self.OnSubStart7516606,
        ["7516608"] = self.OnSubStart7516608,
        ["7516609"] = self.OnSubStart7516609,
        ["7516607"] = self.OnSubStart7516607
    }
end

function Quest75166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7516601"] = self.OnSubFinish7516601,
        ["7516602"] = self.OnSubFinish7516602,
        ["7516603"] = self.OnSubFinish7516603,
        ["7516604"] = self.OnSubFinish7516604,
        ["7516605"] = self.OnSubFinish7516605,
        ["7516606"] = self.OnSubFinish7516606,
        ["7516608"] = self.OnSubFinish7516608,
        ["7516609"] = self.OnSubFinish7516609,
        ["7516607"] = self.OnSubFinish7516607
    }
end

function Quest75166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75166:Start()
    print("Start")
end

function Quest75166:OnDestroy()
    print("OnDestroy")
end

function Quest75166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75166:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75166:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7516601Trigger")
end

function Quest75166:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75166:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75166:OnSubStart7516601(arg1)
    print("OnSubStart7516601")
    actorMgr:CreateActorWithPos("Q7516601Trigger", "Actor/Gadget/Q7516601Trigger", 70900002, 0, points._Q7516601TriggerPoint_.pos, points._Q7516601TriggerPoint_.rot, true, false, 101)
end

function Quest75166:OnSubFinish7516601(arg1)
    print("OnSubFinish7516601")
end

function Quest75166:OnSubStart7516602(arg1)
    print("OnSubStart7516602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7516602, 0, 50, 1, npcs.Npc21795.id)
    this:RequestInteraction(npcs.Npc21795.alias, "", true)
end

function Quest75166:OnSubFinish7516602(arg1)
    print("OnSubFinish7516602")
    this:SafeDestroyQuestNpc(npcs.Npc21795.alias, 101)
end

function Quest75166:OnSubStart7516603(arg1)
    print("OnSubStart7516603")
end

function Quest75166:OnSubFinish7516603(arg1)
    print("OnSubFinish7516603")
end

function Quest75166:OnSubStart7516604(arg1)
    print("OnSubStart7516604")
end

function Quest75166:OnSubFinish7516604(arg1)
    print("OnSubFinish7516604")
end

function Quest75166:OnSubStart7516605(arg1)
    print("OnSubStart7516605")
end

function Quest75166:OnSubFinish7516605(arg1)
    print("OnSubFinish7516605")
end

function Quest75166:OnSubStart7516606(arg1)
    print("OnSubStart7516606")
end

function Quest75166:OnSubFinish7516606(arg1)
    print("OnSubFinish7516606")
end

function Quest75166:OnSubStart7516608(arg1)
    print("OnSubStart7516608")
end

function Quest75166:OnSubFinish7516608(arg1)
    print("OnSubFinish7516608")
end

function Quest75166:OnSubStart7516609(arg1)
    print("OnSubStart7516609")
end

function Quest75166:OnSubFinish7516609(arg1)
    print("OnSubFinish7516609")
end

function Quest75166:OnSubStart7516607(arg1)
    print("OnSubStart7516607")
    this:PlayCutsceneIndex(7515106, function(arg1)
        actorUtils.FinishQuestID(false, 7516607)
    end, nil, nil, false)
end

function Quest75166:OnSubFinish7516607(arg1)
    print("OnSubFinish7516607")
end

return Quest75166
