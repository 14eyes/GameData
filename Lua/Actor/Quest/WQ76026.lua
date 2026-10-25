require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76026 = class("Quest76026", QuestActorProxy)
Quest76026.defaultAlias = "Quest76026"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76026:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602601"] = self.OnSubStart7602601,
        ["7602611"] = self.OnSubStart7602611,
        ["7602602"] = self.OnSubStart7602602,
        ["7602603"] = self.OnSubStart7602603,
        ["7602614"] = self.OnSubStart7602614,
        ["7602604"] = self.OnSubStart7602604,
        ["7602605"] = self.OnSubStart7602605,
        ["7602613"] = self.OnSubStart7602613,
        ["7602606"] = self.OnSubStart7602606,
        ["7602612"] = self.OnSubStart7602612,
        ["7602607"] = self.OnSubStart7602607,
        ["7602608"] = self.OnSubStart7602608,
        ["7602609"] = self.OnSubStart7602609,
        ["7602610"] = self.OnSubStart7602610
    }
end

function Quest76026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602601"] = self.OnSubFinish7602601,
        ["7602611"] = self.OnSubFinish7602611,
        ["7602602"] = self.OnSubFinish7602602,
        ["7602603"] = self.OnSubFinish7602603,
        ["7602614"] = self.OnSubFinish7602614,
        ["7602604"] = self.OnSubFinish7602604,
        ["7602605"] = self.OnSubFinish7602605,
        ["7602613"] = self.OnSubFinish7602613,
        ["7602606"] = self.OnSubFinish7602606,
        ["7602612"] = self.OnSubFinish7602612,
        ["7602607"] = self.OnSubFinish7602607,
        ["7602608"] = self.OnSubFinish7602608,
        ["7602609"] = self.OnSubFinish7602609,
        ["7602610"] = self.OnSubFinish7602610
    }
end

function Quest76026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76026:Start()
    print("Start")
end

function Quest76026:OnDestroy()
    print("OnDestroy")
end

function Quest76026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76026:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7602602Trigger")
    this:ActorDestroy("Q76026Trigger")
    this:ActorDestroy("Q7602610Trigger")
end

function Quest76026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76026:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76026:OnSubStart7602601(arg1)
    print("OnSubStart7602601")
end

function Quest76026:OnSubFinish7602601(arg1)
    print("OnSubFinish7602601")
end

function Quest76026:OnSubStart7602611(arg1)
    print("OnSubStart7602611")
end

function Quest76026:OnSubFinish7602611(arg1)
    print("OnSubFinish7602611")
end

function Quest76026:OnSubStart7602602(arg1)
    print("OnSubStart7602602")
    actorMgr:CreateActorWithPos("Q7602602Trigger", "Actor/Gadget/Q7602602Trigger", 70900002, 0, points._Q7602602TriggerPoint_.pos, points._Q7602602TriggerPoint_.rot, true, false, 3)
end

function Quest76026:OnSubFinish7602602(arg1)
    print("OnSubFinish7602602")
end

function Quest76026:OnSubStart7602603(arg1)
    print("OnSubStart7602603")
end

function Quest76026:OnSubFinish7602603(arg1)
    print("OnSubFinish7602603")
end

function Quest76026:OnSubStart7602614(arg1)
    print("OnSubStart7602614")
end

function Quest76026:OnSubFinish7602614(arg1)
    print("OnSubFinish7602614")
end

function Quest76026:OnSubStart7602604(arg1)
    print("OnSubStart7602604")
end

function Quest76026:OnSubFinish7602604(arg1)
    print("OnSubFinish7602604")
end

function Quest76026:OnSubStart7602605(arg1)
    print("OnSubStart7602605")
end

function Quest76026:OnSubFinish7602605(arg1)
    print("OnSubFinish7602605")
end

function Quest76026:OnSubStart7602613(arg1)
    print("OnSubStart7602613")
end

function Quest76026:OnSubFinish7602613(arg1)
    print("OnSubFinish7602613")
end

function Quest76026:OnSubStart7602606(arg1)
    print("OnSubStart7602606")
end

function Quest76026:OnSubFinish7602606(arg1)
    print("OnSubFinish7602606")
end

function Quest76026:OnSubStart7602612(arg1)
    print("OnSubStart7602612")
end

function Quest76026:OnSubFinish7602612(arg1)
    print("OnSubFinish7602612")
end

function Quest76026:OnSubStart7602607(arg1)
    print("OnSubStart7602607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602607, 0, 50, 0, npcs.Paimon.id)
end

function Quest76026:OnSubFinish7602607(arg1)
    print("OnSubFinish7602607")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    if this:GetQuestVar(7602607, 1) == 1 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, function(arg1)
            this:SetNavigationByMainId(76027, true)
        end, nil)
    end
end

function Quest76026:OnSubStart7602608(arg1)
    print("OnSubStart7602608")
    actorMgr:CreateActorWithPos("Q76026Trigger", "Actor/Gadget/Q76026Trigger", 70900002, 0, points._Q76026TriggerPoint_.pos, points._Q76026TriggerPoint_.rot, true, false, 3)
end

function Quest76026:OnSubFinish7602608(arg1)
    print("OnSubFinish7602608")
end

function Quest76026:OnSubStart7602609(arg1)
    print("OnSubStart7602609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602609, 0, 50, 0.5, npcs.Paimon.id)
end

function Quest76026:OnSubFinish7602609(arg1)
    print("OnSubFinish7602609")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    if this:GetQuestVar(7602609, 1) == 1 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, function(arg1)
            this:SetNavigationByMainId(76027, true)
        end, nil)
    end
end

function Quest76026:OnSubStart7602610(arg1)
    print("OnSubStart7602610")
    actorUtils.FinishQuestID(false, 7602610)
end

function Quest76026:OnSubFinish7602610(arg1)
    print("OnSubFinish7602610")
end

return Quest76026
