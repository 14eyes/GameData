require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70069 = class("Quest70069", QuestActorProxy)
Quest70069.defaultAlias = "Quest70069"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70069:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7006901"] = self.OnSubStart7006901,
        ["7006902"] = self.OnSubStart7006902,
        ["7006903"] = self.OnSubStart7006903,
        ["7006904"] = self.OnSubStart7006904
    }
end

function Quest70069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7006901"] = self.OnSubFinish7006901,
        ["7006902"] = self.OnSubFinish7006902,
        ["7006903"] = self.OnSubFinish7006903,
        ["7006904"] = self.OnSubFinish7006904
    }
end

function Quest70069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70069:Start()
    print("Start")
end

function Quest70069:OnDestroy()
    print("OnDestroy")
end

function Quest70069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70069:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7006712Trigger", nil)
end

function Quest70069:ActorDestroy(arg1, arg2)
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

function Quest70069:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest70069:OnSubStart7006901(arg1)
    print("OnSubStart7006901")
    this:CreateQuestNpc(arg1, npcs.Npc22296.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22296.alias, 70069):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7006712Trigger", "Actor/Gadget/Q7006712Trigger", 70900002, 0, points._Q7006712TriggerPoint_.pos, points._Q7006712TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70069:OnSubFinish7006901(arg1)
    print("OnSubFinish7006901")
    this:TransmitPlayerByQuestId(7006901, 4, nil, nil, nil)
end

function Quest70069:OnSubStart7006902(arg1)
    print("OnSubStart7006902")
    this:GetQuestNpcActor(npcs.Npc22296.alias, 70069):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest70069:OnSubFinish7006902(arg1)
    print("OnSubFinish7006902")
end

function Quest70069:OnSubStart7006903(arg1)
    print("OnSubStart7006903")
    this:CreateQuestNpc(arg1, npcs.Npc22296.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22296.alias, 70069):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:QuestNarratorTask(datas.NarratorWithId_7006903, function(arg1)
        this:SetNavigationByMainId(70069, true)
    end)
end

function Quest70069:OnSubFinish7006903(arg1)
    print("OnSubFinish7006903")
    this:SafeDestroyQuestNpc(npcs.Npc22296.alias, 103)
end

function Quest70069:OnSubStart7006904(arg1)
    print("OnSubStart7006904")
    this:TransmitPlayerWithQuestIdByData(7006904, 7, nil, nil, nil, nil)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(3, npcs.Npc22296.id, 0, 7006904, 7.5, true)
end

function Quest70069:OnSubFinish7006904(arg1)
    print("OnSubFinish7006904")
    this:SafeDestroyQuestNpc(npcs.Npc22296.alias, 103)
    this:SetNavigationByMainId(70067, true)
end

return Quest70069
