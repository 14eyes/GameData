require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77144 = class("Quest77144", QuestActorProxy)
Quest77144.defaultAlias = "Quest77144"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77144:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7714401"] = self.OnSubStart7714401,
        ["7714402"] = self.OnSubStart7714402,
        ["7714403"] = self.OnSubStart7714403,
        ["7714404"] = self.OnSubStart7714404
    }
end

function Quest77144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7714401"] = self.OnSubFinish7714401,
        ["7714402"] = self.OnSubFinish7714402,
        ["7714403"] = self.OnSubFinish7714403,
        ["7714404"] = self.OnSubFinish7714404
    }
end

function Quest77144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77144:Start()
    print("Start")
end

function Quest77144:OnDestroy()
    print("OnDestroy")
end

function Quest77144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77144:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7714401Trigger", 77144)
end

function Quest77144:ActorDestroy(arg1, arg2)
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

function Quest77144:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77144:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77144:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest77144:OnSubStart7714401(arg1)
    print("OnSubStart7714401")
    actorMgr:CreateActorWithPos("Q7714401Trigger", "Actor/Gadget/Q7714401Trigger", 70900002, 0, points._Q7714401TriggerPoint_.pos, points._Q7714401TriggerPoint_.rot, true, false, 3, nil, 0, 77144)
end

function Quest77144:OnSubFinish7714401(arg1)
    print("OnSubFinish7714401")
    this:ActorDestroy("Q7714401Trigger", 77144)
end

function Quest77144:OnSubStart7714402(arg1)
    print("OnSubStart7714402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714402, 0, 15, 0.5, npcs.Npc1335.id)
end

function Quest77144:OnSubFinish7714402(arg1)
    print("OnSubFinish7714402")
end

function Quest77144:OnSubStart7714403(arg1)
    print("OnSubStart7714403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1335.id, 0, 7714403, 15, true)
end

function Quest77144:OnSubFinish7714403(arg1)
    print("OnSubFinish7714403")
end

function Quest77144:OnSubStart7714404(arg1)
    print("OnSubStart7714404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1335.id, 0, 7714404, 20, true)
end

function Quest77144:OnSubFinish7714404(arg1)
    print("OnSubFinish7714404")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1335.alias)
end

return Quest77144
