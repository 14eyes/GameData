require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77504 = class("Quest77504", QuestActorProxy)
Quest77504.defaultAlias = "Quest77504"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77504:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77504:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7750401"] = self.OnSubStart7750401,
        ["7750403"] = self.OnSubStart7750403,
        ["7750402"] = self.OnSubStart7750402
    }
end

function Quest77504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7750401"] = self.OnSubFinish7750401,
        ["7750403"] = self.OnSubFinish7750403,
        ["7750402"] = self.OnSubFinish7750402
    }
end

function Quest77504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77504:Start()
    print("Start")
end

function Quest77504:OnDestroy()
    print("OnDestroy")
end

function Quest77504:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77504:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77504:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750402N17182Trigger")
    this:ActorDestroy("Q7750401Trigger", 77504)
    this:ActorDestroy("Q7750403Trigger", 77504)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc17182.alias, 3)
    this:RecycleAllRes()
end

function Quest77504:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7750401Trigger", 77504)
    this:ActorDestroy("Q7750403Trigger", 77504)
end

function Quest77504:ActorDestroy(arg1, arg2)
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

function Quest77504:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77504:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77504:OnSubStart7750401(arg1)
    print("OnSubStart7750401")
    actorMgr:CreateActorWithPos("Q7750401Trigger", "Actor/Gadget/Q7750401Trigger", 70900002, 0, points.Q7750401Trigger.pos, points.Q7750401Trigger.rot, true, false, 3, nil, 0, 77504)
end

function Quest77504:OnSubFinish7750401(arg1)
    print("OnSubFinish7750401")
end

function Quest77504:OnSubStart7750403(arg1)
    print("OnSubStart7750403")
    actorMgr:CreateActorWithPos("Q7750403Trigger", "Actor/Gadget/Q7750403Trigger", 70900002, 0, points.Q7750403Trigger.pos, points.Q7750403Trigger.rot, true, false, 3, nil, 0, 77504)
end

function Quest77504:OnSubFinish7750403(arg1)
    print("OnSubFinish7750403")
end

function Quest77504:OnSubStart7750402(arg1)
    print("OnSubStart7750402")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7750402, 0, 15, 0.5, npcs.Npc17182.id)
    end)
end

function Quest77504:OnSubFinish7750402(arg1)
    print("OnSubFinish7750402")
    this:NpcDestroyImmediately(3, npcs.Npc17182.alias)
    this:ClearNarratorTask()
end

return Quest77504
