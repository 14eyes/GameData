require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77011 = class("Quest77011", QuestActorProxy)
Quest77011.defaultAlias = "Quest77011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77011:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7701101"] = self.OnSubStart7701101, ["7701102"] = self.OnSubStart7701102}
end

function Quest77011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7701101"] = self.OnSubFinish7701101, ["7701102"] = self.OnSubFinish7701102}
end

function Quest77011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77011:Start()
    print("Start")
end

function Quest77011:OnDestroy()
    print("OnDestroy")
end

function Quest77011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77011:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7701101Trigger", 77011)
end

function Quest77011:ActorDestroy(arg1, arg2)
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

function Quest77011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77011:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77011:OnSubStart7701101(arg1)
    print("OnSubStart7701101")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7701101, 15, true)
    actorMgr:CreateActorWithPos("Q7701101Trigger", "Actor/Gadget/Q7701101Trigger", 70900002, 0, points._Q7701101TriggerPoint_.pos, points._Q7701101TriggerPoint_.rot, true, false, 1159, nil, 0, 77011)
end

function Quest77011:OnSubFinish7701101(arg1)
    print("OnSubFinish7701101")
    this:NpcDestroyImmediately(1158, npcs.Npc17094.alias)
    this:ActorDestroy("Q7701101Trigger", 77011)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77011:OnSubStart7701102(arg1)
    print("OnSubStart7701102")
    actorUtils.FinishQuestWithParam({false}, {7701102})
end

function Quest77011:OnSubFinish7701102(arg1)
    print("OnSubFinish7701102")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77011
