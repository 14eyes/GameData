require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20034 = class("Quest20034", QuestActorProxy)
Quest20034.defaultAlias = "Quest20034"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest20034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest20034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2003401"] = self.OnSubStart2003401,
        ["2003402"] = self.OnSubStart2003402,
        ["2003403"] = self.OnSubStart2003403,
        ["2003404"] = self.OnSubStart2003404,
        ["2003405"] = self.OnSubStart2003405,
        ["2003406"] = self.OnSubStart2003406,
        ["2003407"] = self.OnSubStart2003407
    }
end

function Quest20034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2003401"] = self.OnSubFinish2003401,
        ["2003402"] = self.OnSubFinish2003402,
        ["2003403"] = self.OnSubFinish2003403,
        ["2003404"] = self.OnSubFinish2003404,
        ["2003405"] = self.OnSubFinish2003405,
        ["2003406"] = self.OnSubFinish2003406,
        ["2003407"] = self.OnSubFinish2003407
    }
end

function Quest20034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20034:Start()
    print("Start")
end

function Quest20034:OnDestroy()
    print("OnDestroy")
end

function Quest20034:OnMainFinished(arg1)
    print("OnMainFinished")
    this:DestroyNpcTrigger("Q2003406N1700Trigger")
    this:DestroyNpcTrigger("Q2003407N1700Trigger")
    this:ActorDestroy("Q20034Trigger", 20034)
    this:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 3)
    this:RecycleAllRes()
end

function Quest20034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20034:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q2003406N1700Trigger")
    this:DestroyNpcTrigger("Q2003407N1700Trigger")
    this:ActorDestroy("Q20034Trigger", 20034)
    this:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 3)
    this:RecycleAllRes()
end

function Quest20034:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest20034:ActorDestroy(arg1, arg2)
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

function Quest20034:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest20034:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest20034:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest20034:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest20034:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest20034:OnSubStart2003401(arg1)
    print("OnSubStart2003401")
    this:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1700Data.id, 0, false, 0)
end

function Quest20034:OnSubFinish2003401(arg1)
    print("OnSubFinish2003401")
    this:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest20034:OnSubStart2003402(arg1)
    print("OnSubStart2003402")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc1700Data.alias, 1, true)
    end)
end

function Quest20034:OnSubFinish2003402(arg1)
    print("OnSubFinish2003402")
end

function Quest20034:OnSubStart2003403(arg1)
    print("OnSubStart2003403")
    self:NotifyTo(npcs.Npc1700Data.alias, 1, true)
end

function Quest20034:OnSubFinish2003403(arg1)
    print("OnSubFinish2003403")
end

function Quest20034:OnSubStart2003404(arg1)
    print("OnSubStart2003404")
    self:NotifyTo(npcs.Npc1700Data.alias, 1, true)
end

function Quest20034:OnSubFinish2003404(arg1)
    print("OnSubFinish2003404")
end

function Quest20034:OnSubStart2003405(arg1)
    print("OnSubStart2003405")
    actorMgr:CreateActorWithPos("Q20034Trigger", "Actor/Gadget/Q20034Trigger", 70900002, 0, points._Q20034TriggerPoint_.pos, points._Q20034TriggerPoint_.rot, true, false, 3, nil, 0, 20034)
    self:NotifyTo(npcs.Npc1700Data.alias, 1, true)
end

function Quest20034:OnSubFinish2003405(arg1)
    print("OnSubFinish2003405")
    this:ActorDestroy("Q20034Trigger", 0)
end

function Quest20034:OnSubStart2003406(arg1)
    print("OnSubStart2003406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2003406, 0, 30, 0, npcs.Npc1700Data.id)
    this:NpcCreateWithBlackscreen(0, npcs.Npc10011Data.id, arg1)
    this:NpcCreateWithBlackscreen(0, npcs.Npc10012Data.id, arg1)
    this:NpcCreateWithBlackscreen(0, npcs.Npc1024Data.id, arg1)
end

function Quest20034:OnSubFinish2003406(arg1)
    print("OnSubFinish2003406")
    this:NpcDestroyImmediately(3, npcs.Npc1024Data.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10011Data.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10012Data.alias)
end

function Quest20034:OnSubStart2003407(arg1)
    print("OnSubStart2003407")
    this:NpcCreateWithNpcTrigger(npcs.Npc1700Data.id, 0, 30, 2003407)
end

function Quest20034:OnSubFinish2003407(arg1)
    print("OnSubFinish2003407")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1700Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
end

return Quest20034
