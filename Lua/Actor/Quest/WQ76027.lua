require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76027 = class("Quest76027", QuestActorProxy)
Quest76027.defaultAlias = "Quest76027"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602701"] = self.OnSubStart7602701,
        ["7602712"] = self.OnSubStart7602712,
        ["7602702"] = self.OnSubStart7602702,
        ["7602703"] = self.OnSubStart7602703,
        ["7602704"] = self.OnSubStart7602704,
        ["7602705"] = self.OnSubStart7602705,
        ["7602714"] = self.OnSubStart7602714,
        ["7602706"] = self.OnSubStart7602706,
        ["7602707"] = self.OnSubStart7602707,
        ["7602713"] = self.OnSubStart7602713,
        ["7602708"] = self.OnSubStart7602708,
        ["7602709"] = self.OnSubStart7602709,
        ["7602710"] = self.OnSubStart7602710,
        ["7602711"] = self.OnSubStart7602711
    }
end

function Quest76027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602701"] = self.OnSubFinish7602701,
        ["7602712"] = self.OnSubFinish7602712,
        ["7602702"] = self.OnSubFinish7602702,
        ["7602703"] = self.OnSubFinish7602703,
        ["7602704"] = self.OnSubFinish7602704,
        ["7602705"] = self.OnSubFinish7602705,
        ["7602714"] = self.OnSubFinish7602714,
        ["7602706"] = self.OnSubFinish7602706,
        ["7602707"] = self.OnSubFinish7602707,
        ["7602713"] = self.OnSubFinish7602713,
        ["7602708"] = self.OnSubFinish7602708,
        ["7602709"] = self.OnSubFinish7602709,
        ["7602710"] = self.OnSubFinish7602710,
        ["7602711"] = self.OnSubFinish7602711
    }
end

function Quest76027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76027:Start()
    print("Start")
end

function Quest76027:OnDestroy()
    print("OnDestroy")
end

function Quest76027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76027:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7602704Trigger")
    this:ActorDestroy("Q7602702Trigger")
    this:ActorDestroy("Q76027Trigger")
    this:ActorDestroy("Q7602711Trigger")
end

function Quest76027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76027:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76027:OnSubStart7602701(arg1)
    print("OnSubStart7602701")
end

function Quest76027:OnSubFinish7602701(arg1)
    print("OnSubFinish7602701")
end

function Quest76027:OnSubStart7602712(arg1)
    print("OnSubStart7602712")
end

function Quest76027:OnSubFinish7602712(arg1)
    print("OnSubFinish7602712")
end

function Quest76027:OnSubStart7602702(arg1)
    print("OnSubStart7602702")
    actorMgr:CreateActorWithPos("Q7602702Trigger", "Actor/Gadget/Q7602702Trigger", 70900002, 0, points._Q7602702TriggerPoint_.pos, points._Q7602702TriggerPoint_.rot, true, false, 3)
end

function Quest76027:OnSubFinish7602702(arg1)
    print("OnSubFinish7602702")
end

function Quest76027:OnSubStart7602703(arg1)
    print("OnSubStart7602703")
end

function Quest76027:OnSubFinish7602703(arg1)
    print("OnSubFinish7602703")
end

function Quest76027:OnSubStart7602704(arg1)
    print("OnSubStart7602704")
    actorMgr:CreateActorWithPos("Q7602704Trigger", "Actor/Gadget/Q7602704Trigger", 70900002, 0, points._Q7602704TriggerPoint_.pos, points._Q7602704TriggerPoint_.rot, true, false, 3)
end

function Quest76027:OnSubFinish7602704(arg1)
    print("OnSubFinish7602704")
end

function Quest76027:OnSubStart7602705(arg1)
    print("OnSubStart7602705")
end

function Quest76027:OnSubFinish7602705(arg1)
    print("OnSubFinish7602705")
end

function Quest76027:OnSubStart7602714(arg1)
    print("OnSubStart7602714")
end

function Quest76027:OnSubFinish7602714(arg1)
    print("OnSubFinish7602714")
end

function Quest76027:OnSubStart7602706(arg1)
    print("OnSubStart7602706")
end

function Quest76027:OnSubFinish7602706(arg1)
    print("OnSubFinish7602706")
end

function Quest76027:OnSubStart7602707(arg1)
    print("OnSubStart7602707")
end

function Quest76027:OnSubFinish7602707(arg1)
    print("OnSubFinish7602707")
end

function Quest76027:OnSubStart7602713(arg1)
    print("OnSubStart7602713")
end

function Quest76027:OnSubFinish7602713(arg1)
    print("OnSubFinish7602713")
end

function Quest76027:OnSubStart7602708(arg1)
    print("OnSubStart7602708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602708, 0, 20, 0.5, npcs.Paimon.id)
end

function Quest76027:OnSubFinish7602708(arg1)
    print("OnSubFinish7602708")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    if this:GetQuestVar(7602708, 1) == 1 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, function(arg1)
            this:SetNavigationByMainId(76026, true)
        end, nil)
    end
end

function Quest76027:OnSubStart7602709(arg1)
    print("OnSubStart7602709")
    actorMgr:CreateActorWithPos("Q76027Trigger", "Actor/Gadget/Q76027Trigger", 70900002, 0, points._Q76027TriggerPoint_.pos, points._Q76027TriggerPoint_.rot, true, false, 3)
end

function Quest76027:OnSubFinish7602709(arg1)
    print("OnSubFinish7602709")
end

function Quest76027:OnSubStart7602710(arg1)
    print("OnSubStart7602710")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602710, 0, 20, 0.5, npcs.Paimon.id)
end

function Quest76027:OnSubFinish7602710(arg1)
    print("OnSubFinish7602710")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    if this:GetQuestVar(7602710, 1) == 1 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, function(arg1)
            this:SetNavigationByMainId(76026, true)
        end, nil)
    end
end

function Quest76027:OnSubStart7602711(arg1)
    print("OnSubStart7602711")
    actorUtils.FinishQuestID(false, 7602711)
end

function Quest76027:OnSubFinish7602711(arg1)
    print("OnSubFinish7602711")
end

return Quest76027
