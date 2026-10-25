require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77013 = class("Quest77013", QuestActorProxy)
Quest77013.defaultAlias = "Quest77013"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7701301"] = self.OnSubStart7701301,
        ["7701302"] = self.OnSubStart7701302,
        ["7701303"] = self.OnSubStart7701303,
        ["7701304"] = self.OnSubStart7701304,
        ["7701305"] = self.OnSubStart7701305,
        ["7701306"] = self.OnSubStart7701306,
        ["7701307"] = self.OnSubStart7701307
    }
end

function Quest77013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7701301"] = self.OnSubFinish7701301,
        ["7701302"] = self.OnSubFinish7701302,
        ["7701303"] = self.OnSubFinish7701303,
        ["7701304"] = self.OnSubFinish7701304,
        ["7701305"] = self.OnSubFinish7701305,
        ["7701306"] = self.OnSubFinish7701306,
        ["7701307"] = self.OnSubFinish7701307
    }
end

function Quest77013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77013:Start()
    print("Start")
end

function Quest77013:OnDestroy()
    print("OnDestroy")
end

function Quest77013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77013:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7701301Trigger", 77013)
    this:ActorDestroy("Q7701303Trigger", 77013)
    this:ActorDestroy("Q7701305Trigger", 77013)
end

function Quest77013:ActorDestroy(arg1, arg2)
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

function Quest77013:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77013:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77013:OnSubStart7701301(arg1)
    print("OnSubStart7701301")
    actorMgr:CreateActorWithPos("Q7701301Trigger", "Actor/Gadget/Q7701301Trigger", 70900002, 0, points._Q7701301TriggerPoint_.pos, points._Q7701301TriggerPoint_.rot, true, false, 1159, nil, 0, 77013)
end

function Quest77013:OnSubFinish7701301(arg1)
    print("OnSubFinish7701301")
    this:ActorDestroy("Q7701301Trigger", 77013)
end

function Quest77013:OnSubStart7701302(arg1)
    print("OnSubStart7701302")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 7701302, 30, true)
end

function Quest77013:OnSubFinish7701302(arg1)
    print("OnSubFinish7701302")
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
end

function Quest77013:OnSubStart7701303(arg1)
    print("OnSubStart7701303")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 7701303, 15, true)
    actorMgr:CreateActorWithPos("Q7701303Trigger", "Actor/Gadget/Q7701303Trigger", 70900002, 0, points._Q7701303TriggerPoint_.pos, points._Q7701303TriggerPoint_.rot, true, false, 1159, nil, 0, 77013)
end

function Quest77013:OnSubFinish7701303(arg1)
    print("OnSubFinish7701303")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:ActorDestroy("Q7701303Trigger", 77013)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77013:OnSubStart7701304(arg1)
    print("OnSubStart7701304")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 7701304, 15, true)
end

function Quest77013:OnSubFinish7701304(arg1)
    print("OnSubFinish7701304")
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
end

function Quest77013:OnSubStart7701305(arg1)
    print("OnSubStart7701305")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1332.id, 0, 7701305, 15, true)
    actorMgr:CreateActorWithPos("Q7701305Trigger", "Actor/Gadget/Q7701305Trigger", 70900002, 0, points._Q7701305TriggerPoint_.pos, points._Q7701305TriggerPoint_.rot, true, false, 1159, nil, 0, 77013)
end

function Quest77013:OnSubFinish7701305(arg1)
    print("OnSubFinish7701305")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:ActorDestroy("Q7701305Trigger", 77013)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77013:OnSubStart7701306(arg1)
    print("OnSubStart7701306")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 7701306, 15, true)
end

function Quest77013:OnSubFinish7701306(arg1)
    print("OnSubFinish7701306")
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
end

function Quest77013:OnSubStart7701307(arg1)
    print("OnSubStart7701307")
    actorUtils.FinishQuestWithParam({false}, {7701307})
end

function Quest77013:OnSubFinish7701307(arg1)
    print("OnSubFinish7701307")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77013
