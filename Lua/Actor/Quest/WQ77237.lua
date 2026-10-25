require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77237 = class("Quest77237", QuestActorProxy)
Quest77237.defaultAlias = "Quest77237"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77237:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77237:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7723701"] = self.OnSubStart7723701, ["7723702"] = self.OnSubStart7723702}
end

function Quest77237:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7723701"] = self.OnSubFinish7723701, ["7723702"] = self.OnSubFinish7723702}
end

function Quest77237:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77237:Start()
    print("Start")
end

function Quest77237:OnDestroy()
    print("OnDestroy")
end

function Quest77237:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77237:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77237:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77237:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7723701Trigger", 77237)
end

function Quest77237:ActorDestroy(arg1, arg2)
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

function Quest77237:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77237:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77237:OnSubStart7723701(arg1)
    print("OnSubStart7723701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7723701, 15, true)
    actorMgr:CreateActorWithPos("Q7723701Trigger", "Actor/Gadget/Q7723701Trigger", 70900002, 0, points._Q7723701TriggerPoint_.pos, points._Q7723701TriggerPoint_.rot, true, false, 1159, nil, 0, 77237)
end

function Quest77237:OnSubFinish7723701(arg1)
    print("OnSubFinish7723701")
    this:NpcDestroyImmediately(3, npcs.Npc17094.alias)
    this:ActorDestroy("Q7723701Trigger", 77237)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77237:OnSubStart7723702(arg1)
    print("OnSubStart7723702")
    actorUtils.FinishQuestWithParam({false}, {7723702})
end

function Quest77237:OnSubFinish7723702(arg1)
    print("OnSubFinish7723702")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77237
