require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77010 = class("Quest77010", QuestActorProxy)
Quest77010.defaultAlias = "Quest77010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77010:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7701001"] = self.OnSubStart7701001, ["7701002"] = self.OnSubStart7701002}
end

function Quest77010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7701001"] = self.OnSubFinish7701001, ["7701002"] = self.OnSubFinish7701002}
end

function Quest77010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77010:Start()
    print("Start")
end

function Quest77010:OnDestroy()
    print("OnDestroy")
end

function Quest77010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77010:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7701001Trigger", 77010)
end

function Quest77010:ActorDestroy(arg1, arg2)
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

function Quest77010:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77010:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77010:OnSubStart7701001(arg1)
    print("OnSubStart7701001")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7701001, 15, true)
    actorMgr:CreateActorWithPos("Q7701001Trigger", "Actor/Gadget/Q7701001Trigger", 70900002, 0, points._Q7701001TriggerPoint_.pos, points._Q7701001TriggerPoint_.rot, true, false, 1159, nil, 0, 77010)
end

function Quest77010:OnSubFinish7701001(arg1)
    print("OnSubFinish7701001")
    this:NpcDestroyImmediately(3, npcs.Npc17094.alias)
    this:ActorDestroy("Q7701001Trigger", 77010)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77010:OnSubStart7701002(arg1)
    print("OnSubStart7701002")
    actorUtils.FinishQuestWithParam({false}, {7701002})
end

function Quest77010:OnSubFinish7701002(arg1)
    print("OnSubFinish7701002")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77010
