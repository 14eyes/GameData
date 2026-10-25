require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77004 = class("Quest77004", QuestActorProxy)
Quest77004.defaultAlias = "Quest77004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77004:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700401"] = self.OnSubStart7700401, ["7700402"] = self.OnSubStart7700402}
end

function Quest77004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700401"] = self.OnSubFinish7700401, ["7700402"] = self.OnSubFinish7700402}
end

function Quest77004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77004:Start()
    print("Start")
end

function Quest77004:OnDestroy()
    print("OnDestroy")
end

function Quest77004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77004:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7700401Trigger", 77004)
end

function Quest77004:ActorDestroy(arg1, arg2)
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

function Quest77004:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77004:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77004:OnSubStart7700401(arg1)
    print("OnSubStart7700401")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700401, 20, true)
    actorMgr:CreateActorWithPos("Q7700401Trigger", "Actor/Gadget/Q7700401Trigger", 70900002, 0, points._Q7700401TriggerPoint_.pos, points._Q7700401TriggerPoint_.rot, true, false, 1159, nil, 0, 77004)
end

function Quest77004:OnSubFinish7700401(arg1)
    print("OnSubFinish7700401")
    this:NpcDestroyImmediately(1158, npcs.Npc17094.alias)
    this:ActorDestroy("Q7700401Trigger", 77004)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77004:OnSubStart7700402(arg1)
    print("OnSubStart7700402")
    actorUtils.FinishQuestWithParam({false}, {7700402})
end

function Quest77004:OnSubFinish7700402(arg1)
    print("OnSubFinish7700402")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77004
