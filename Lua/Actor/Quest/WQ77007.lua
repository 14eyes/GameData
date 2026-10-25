require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77007 = class("Quest77007", QuestActorProxy)
Quest77007.defaultAlias = "Quest77007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77007:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700701"] = self.OnSubStart7700701, ["7700702"] = self.OnSubStart7700702}
end

function Quest77007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700701"] = self.OnSubFinish7700701, ["7700702"] = self.OnSubFinish7700702}
end

function Quest77007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77007:Start()
    print("Start")
end

function Quest77007:OnDestroy()
    print("OnDestroy")
end

function Quest77007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77007:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7700701Trigger", 77007)
end

function Quest77007:ActorDestroy(arg1, arg2)
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

function Quest77007:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77007:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77007:OnSubStart7700701(arg1)
    print("OnSubStart7700701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700701, 15, true)
    actorMgr:CreateActorWithPos("Q7700701Trigger", "Actor/Gadget/Q7700701Trigger", 70900002, 0, points._Q7700701TriggerPoint_.pos, points._Q7700701TriggerPoint_.rot, true, false, 1159, nil, 0, 77007)
end

function Quest77007:OnSubFinish7700701(arg1)
    print("OnSubFinish7700701")
    this:NpcDestroyImmediately(3, npcs.Npc17094.alias)
    this:ActorDestroy("Q7700701Trigger", 77007)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77007:OnSubStart7700702(arg1)
    print("OnSubStart7700702")
    actorUtils.FinishQuestWithParam({false}, {7700702})
end

function Quest77007:OnSubFinish7700702(arg1)
    print("OnSubFinish7700702")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77007
