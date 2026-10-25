require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76004 = class("Quest76004", QuestActorProxy)
Quest76004.defaultAlias = "Quest76004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600401"] = self.OnSubStart7600401,
        ["7600402"] = self.OnSubStart7600402,
        ["7600403"] = self.OnSubStart7600403,
        ["7600404"] = self.OnSubStart7600404,
        ["7600405"] = self.OnSubStart7600405,
        ["7600406"] = self.OnSubStart7600406,
        ["7600407"] = self.OnSubStart7600407,
        ["7600408"] = self.OnSubStart7600408,
        ["7600409"] = self.OnSubStart7600409,
        ["7600430"] = self.OnSubStart7600430,
        ["7600410"] = self.OnSubStart7600410,
        ["7600435"] = self.OnSubStart7600435,
        ["7600411"] = self.OnSubStart7600411,
        ["7600441"] = self.OnSubStart7600441,
        ["7600442"] = self.OnSubStart7600442,
        ["7600443"] = self.OnSubStart7600443,
        ["7600412"] = self.OnSubStart7600412,
        ["7600433"] = self.OnSubStart7600433,
        ["7600413"] = self.OnSubStart7600413,
        ["7600414"] = self.OnSubStart7600414,
        ["7600415"] = self.OnSubStart7600415,
        ["7600432"] = self.OnSubStart7600432,
        ["7600434"] = self.OnSubStart7600434,
        ["7600438"] = self.OnSubStart7600438,
        ["7600444"] = self.OnSubStart7600444,
        ["7600427"] = self.OnSubStart7600427,
        ["7600416"] = self.OnSubStart7600416,
        ["7600417"] = self.OnSubStart7600417,
        ["7600418"] = self.OnSubStart7600418,
        ["7600431"] = self.OnSubStart7600431,
        ["7600419"] = self.OnSubStart7600419,
        ["7600445"] = self.OnSubStart7600445,
        ["7600436"] = self.OnSubStart7600436,
        ["7600421"] = self.OnSubStart7600421,
        ["7600422"] = self.OnSubStart7600422,
        ["7600437"] = self.OnSubStart7600437,
        ["7600423"] = self.OnSubStart7600423,
        ["7600440"] = self.OnSubStart7600440,
        ["7600424"] = self.OnSubStart7600424,
        ["7600425"] = self.OnSubStart7600425,
        ["7600426"] = self.OnSubStart7600426,
        ["7600428"] = self.OnSubStart7600428,
        ["7600429"] = self.OnSubStart7600429,
        ["7600420"] = self.OnSubStart7600420,
        ["7600439"] = self.OnSubStart7600439
    }
end

function Quest76004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600401"] = self.OnSubFinish7600401,
        ["7600402"] = self.OnSubFinish7600402,
        ["7600403"] = self.OnSubFinish7600403,
        ["7600404"] = self.OnSubFinish7600404,
        ["7600405"] = self.OnSubFinish7600405,
        ["7600406"] = self.OnSubFinish7600406,
        ["7600407"] = self.OnSubFinish7600407,
        ["7600408"] = self.OnSubFinish7600408,
        ["7600409"] = self.OnSubFinish7600409,
        ["7600430"] = self.OnSubFinish7600430,
        ["7600410"] = self.OnSubFinish7600410,
        ["7600435"] = self.OnSubFinish7600435,
        ["7600411"] = self.OnSubFinish7600411,
        ["7600441"] = self.OnSubFinish7600441,
        ["7600442"] = self.OnSubFinish7600442,
        ["7600443"] = self.OnSubFinish7600443,
        ["7600412"] = self.OnSubFinish7600412,
        ["7600433"] = self.OnSubFinish7600433,
        ["7600413"] = self.OnSubFinish7600413,
        ["7600414"] = self.OnSubFinish7600414,
        ["7600415"] = self.OnSubFinish7600415,
        ["7600432"] = self.OnSubFinish7600432,
        ["7600434"] = self.OnSubFinish7600434,
        ["7600438"] = self.OnSubFinish7600438,
        ["7600444"] = self.OnSubFinish7600444,
        ["7600427"] = self.OnSubFinish7600427,
        ["7600416"] = self.OnSubFinish7600416,
        ["7600417"] = self.OnSubFinish7600417,
        ["7600418"] = self.OnSubFinish7600418,
        ["7600431"] = self.OnSubFinish7600431,
        ["7600419"] = self.OnSubFinish7600419,
        ["7600445"] = self.OnSubFinish7600445,
        ["7600436"] = self.OnSubFinish7600436,
        ["7600421"] = self.OnSubFinish7600421,
        ["7600422"] = self.OnSubFinish7600422,
        ["7600437"] = self.OnSubFinish7600437,
        ["7600423"] = self.OnSubFinish7600423,
        ["7600440"] = self.OnSubFinish7600440,
        ["7600424"] = self.OnSubFinish7600424,
        ["7600425"] = self.OnSubFinish7600425,
        ["7600426"] = self.OnSubFinish7600426,
        ["7600428"] = self.OnSubFinish7600428,
        ["7600429"] = self.OnSubFinish7600429,
        ["7600420"] = self.OnSubFinish7600420,
        ["7600439"] = self.OnSubFinish7600439
    }
end

function Quest76004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7600432"] = self.OnSubFailed7600432}
end

function Quest76004:Start()
    print("Start")
end

function Quest76004:OnDestroy()
    print("OnDestroy")
end

function Quest76004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76004:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76004:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76004:OnMainPaused(arg1)
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600402Trigger")
    this:ActorDestroy("Q7600401Trigger")
    this:ActorDestroy("Q76004Trigger_arrive02")
    this:ActorDestroy("Q7600415Trigger")
    this:ActorDestroy("Q7600419Trigger")
    this:ActorDestroy("Q76004Trigger_enter")
    this:ActorDestroy("Q7600431Trigger")
    this:ActorDestroy("Q7600432Trigger")
    this:ActorDestroy("Q7600429Trigger")
    this:ActorDestroy("Q7600438Trigger")
    this:ActorDestroy("Q7600427Trigger")
end

function Quest76004:OnSubStart7600401(arg1)
    print("OnSubStart7600401")
    this:NpcCreateWithNpcTrigger(npcs.Npc21828.id, 0, 10, 7600401)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600401(arg1)
    print("OnSubFinish7600401")
    this:SafeDestroyQuestNpc(npcs.Npc22162.alias, 3)
end

function Quest76004:OnSubStart7600402(arg1)
    print("OnSubStart7600402")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1171, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7600402Trigger", "Actor/Gadget/Q7600402Trigger", 70900002, 0, points._Q7600402TriggerPoint_.pos, points._Q7600402TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600402Trigger", "Actor/Gadget/Q7600402Trigger", 70900002, 0, points._Q7600402TriggerPoint_.pos, points._Q7600402TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600402Trigger", "Actor/Gadget/Q7600402Trigger", 70900002, 0, points._Q7600402TriggerPoint_.pos, points._Q7600402TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600402Trigger", "Actor/Gadget/Q7600402Trigger", 70900002, 0, points._Q7600402TriggerPoint_.pos, points._Q7600402TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600402(arg1)
    print("OnSubFinish7600402")
end

function Quest76004:OnSubStart7600403(arg1)
    print("OnSubStart7600403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600403, 0, 30, 0, npcs.Npc21828.id)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600403(arg1)
    print("OnSubFinish7600403")
end

function Quest76004:OnSubStart7600404(arg1)
    print("OnSubStart7600404")
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q76004Trigger_arrive02", "Actor/Gadget/Q76004Trigger_arrive02", 70900002, 0, points._Q76004Trigger_arrive02Point_.pos, points._Q76004Trigger_arrive02Point_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600404(arg1)
    print("OnSubFinish7600404")
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22162.alias, 3)
end

function Quest76004:OnSubStart7600405(arg1)
    print("OnSubStart7600405")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600405, 0, 20, 0, npcs.Npc21828.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600405, 0, 20, 0, npcs.Npc22162.id)
end

function Quest76004:OnSubFinish7600405(arg1)
    print("OnSubFinish7600405")
    this:SafeDestroyQuestNpc(npcs.Npc22162.alias, 3)
end

function Quest76004:OnSubStart7600406(arg1)
    print("OnSubStart7600406")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1172, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600406(arg1)
    print("OnSubFinish7600406")
end

function Quest76004:OnSubStart7600407(arg1)
    print("OnSubStart7600407")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600407, 0, 25, 0, npcs.Npc21828.id)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600407(arg1)
    print("OnSubFinish7600407")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21936.alias, 3)
end

function Quest76004:OnSubStart7600408(arg1)
    print("OnSubStart7600408")
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600408(arg1)
    print("OnSubFinish7600408")
end

function Quest76004:OnSubStart7600409(arg1)
    print("OnSubStart7600409")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7600409, 0, 60, 0, npcs.Npc21828.id)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600409(arg1)
    print("OnSubFinish7600409")
end

function Quest76004:OnSubStart7600430(arg1)
    print("OnSubStart7600430")
    this:CreateQuestNpc(arg1, npcs.Npc22209.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600430(arg1)
    print("OnSubFinish7600430")
    this:SafeDestroyQuestNpc(npcs.Npc22209.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22162.alias, 3)
    this:ShowBlackScreenWithDialogText(0.2, 1, 0.2, nil, nil, nil, 0, false, true)
end

function Quest76004:OnSubStart7600410(arg1)
    print("OnSubStart7600410")
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600410(arg1)
    print("OnSubFinish7600410")
end

function Quest76004:OnSubStart7600435(arg1)
    print("OnSubStart7600435")
    this:CreateQuestNpc(arg1, npcs.Npc22209.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1260, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600435(arg1)
    print("OnSubFinish7600435")
    this:SafeDestroyQuestNpc(npcs.Npc22209.alias, 3)
    this:ShowBlackScreenWithDialogText(0.2, 1, 0.2, nil, nil, nil, 0, false, true)
end

function Quest76004:OnSubStart7600411(arg1)
    print("OnSubStart7600411")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(9000, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600411(arg1)
    print("OnSubFinish7600411")
end

function Quest76004:OnSubStart7600441(arg1)
    print("OnSubStart7600441")
    actorMgr:CreateActorWithPos("Q7600441Trigger", "Actor/Gadget/Q7600441Trigger", 70900002, 0, points._Q7600441TriggerPoint_.pos, points._Q7600441TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600441(arg1)
    print("OnSubFinish7600441")
end

function Quest76004:OnSubStart7600442(arg1)
    print("OnSubStart7600442")
    this:QuestNarratorTask(datas.NarratorWithId_760044201, nil)
end

function Quest76004:OnSubFinish7600442(arg1)
    print("OnSubFinish7600442")
end

function Quest76004:OnSubStart7600443(arg1)
    print("OnSubStart7600443")
    this:CreateQuestNpc(arg1, npcs.Npc22209.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600443(arg1)
    print("OnSubFinish7600443")
    this:SafeDestroyQuestNpc(npcs.Npc22209.alias, 3)
    this:ShowBlackScreenWithDialogText(0.2, 1, 0.2, nil, nil, nil, 0, false, true)
end

function Quest76004:OnSubStart7600412(arg1)
    print("OnSubStart7600412")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600412(arg1)
    print("OnSubFinish7600412")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest76004:OnSubStart7600433(arg1)
    print("OnSubStart7600433")
end

function Quest76004:OnSubFinish7600433(arg1)
    print("OnSubFinish7600433")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 5, nil, nil, nil)
end

function Quest76004:OnSubStart7600413(arg1)
    print("OnSubStart7600413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600413, 0, 20, 0, npcs.Npc21828.id)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600413(arg1)
    print("OnSubFinish7600413")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

function Quest76004:OnSubStart7600414(arg1)
    print("OnSubStart7600414")
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
    end)
end

function Quest76004:OnSubFinish7600414(arg1)
    print("OnSubFinish7600414")
end

function Quest76004:OnSubStart7600415(arg1)
    print("OnSubStart7600415")
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600415Trigger", "Actor/Gadget/Q7600415Trigger", 70900002, 0, points._Q7600415TriggerPoint_.pos, points._Q7600415TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600415(arg1)
    print("OnSubFinish7600415")
end

function Quest76004:OnSubStart7600432(arg1)
    print("OnSubStart7600432")
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600432Trigger", "Actor/Gadget/Q7600432Trigger", 70900002, 0, points._Q7600432TriggerPoint_.pos, points._Q7600432TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600432(arg1)
    print("OnSubFinish7600432")
end

function Quest76004:OnSubFailed7600432(arg1)
    print("OnSubFailed7600432")
    this:ActorDestroy("Q7600432Trigger")
end

function Quest76004:OnSubStart7600434(arg1)
    print("OnSubStart7600434")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600434, 0, 30, 0, npcs.Npc7091.id)
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600434, 0, 30, 0, npcs.Npc21828.id)
end

function Quest76004:OnSubFinish7600434(arg1)
    print("OnSubFinish7600434")
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21936.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22162.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
end

function Quest76004:OnSubStart7600438(arg1)
    print("OnSubStart7600438")
    this:PlayCutsceneIndex(7600438, function(arg1)
        actorUtils.FinishQuestID(false, 7600438)
    end, nil, nil, false)
end

function Quest76004:OnSubFinish7600438(arg1)
    print("OnSubFinish7600438")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_760042701, nil)
    end)
end

function Quest76004:OnSubStart7600444(arg1)
    print("OnSubStart7600444")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600444, 0, 60, 0, npcs.Npc21936.id)
end

function Quest76004:OnSubFinish7600444(arg1)
    print("OnSubFinish7600444")
    this:SafeDestroyQuestNpc(npcs.Npc21936.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_760042701, nil)
end

function Quest76004:OnSubStart7600427(arg1)
    print("OnSubStart7600427")
    actorMgr:CreateActorWithPos("Q7600427Trigger", "Actor/Gadget/Q7600427Trigger", 70900002, 0, points._Q7600427TriggerPoint_.pos, points._Q7600427TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600427(arg1)
    print("OnSubFinish7600427")
end

function Quest76004:OnSubStart7600416(arg1)
    print("OnSubStart7600416")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600416, 0, 15, 0, npcs.Npc7091.id)
end

function Quest76004:OnSubFinish7600416(arg1)
    print("OnSubFinish7600416")
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

function Quest76004:OnSubStart7600417(arg1)
    print("OnSubStart7600417")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600417, 0, 30, 0, npcs.Npc21828.id)
end

function Quest76004:OnSubFinish7600417(arg1)
    print("OnSubFinish7600417")
end

function Quest76004:OnSubStart7600418(arg1)
    print("OnSubStart7600418")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(9000, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600418(arg1)
    print("OnSubFinish7600418")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

function Quest76004:OnSubStart7600431(arg1)
    print("OnSubStart7600431")
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21937.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600431Trigger", "Actor/Gadget/Q7600431Trigger", 70900002, 0, points._Q7600431TriggerPoint_.pos, points._Q7600431TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600431(arg1)
    print("OnSubFinish7600431")
end

function Quest76004:OnSubStart7600419(arg1)
    print("OnSubStart7600419")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600419, 0, 10, 0, npcs.Npc21828.id)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1283, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21936.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21937.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600419(arg1)
    print("OnSubFinish7600419")
    this:SafeDestroyQuestNpc(npcs.Npc21936.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21937.alias, 3)
end

function Quest76004:OnSubStart7600445(arg1)
    print("OnSubStart7600445")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1284, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1282, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600445(arg1)
    print("OnSubFinish7600445")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

function Quest76004:OnSubStart7600436(arg1)
    print("OnSubStart7600436")
end

function Quest76004:OnSubFinish7600436(arg1)
    print("OnSubFinish7600436")
end

function Quest76004:OnSubStart7600421(arg1)
    print("OnSubStart7600421")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600421, 0, 60, 0, npcs.Npc7091.id)
end

function Quest76004:OnSubFinish7600421(arg1)
    print("OnSubFinish7600421")
end

function Quest76004:OnSubStart7600422(arg1)
    print("OnSubStart7600422")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76004:OnSubFinish7600422(arg1)
    print("OnSubFinish7600422")
end

function Quest76004:OnSubStart7600437(arg1)
    print("OnSubStart7600437")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600437, 0, 20, 0, npcs.Npc22179.id)
end

function Quest76004:OnSubFinish7600437(arg1)
    print("OnSubFinish7600437")
    this:SafeDestroyQuestNpc(npcs.Npc22179.alias, 3)
end

function Quest76004:OnSubStart7600423(arg1)
    print("OnSubStart7600423")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76004):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22173.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600423(arg1)
    print("OnSubFinish7600423")
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22173.alias, 3)
end

function Quest76004:OnSubStart7600440(arg1)
    print("OnSubStart7600440")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600440, 0, 20, 0, npcs.Npc21828.id)
end

function Quest76004:OnSubFinish7600440(arg1)
    print("OnSubFinish7600440")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
end

function Quest76004:OnSubStart7600424(arg1)
    print("OnSubStart7600424")
end

function Quest76004:OnSubFinish7600424(arg1)
    print("OnSubFinish7600424")
end

function Quest76004:OnSubStart7600425(arg1)
    print("OnSubStart7600425")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600425, 0, 10, 0, npcs.Npc21828.id)
    this:CreateQuestNpc(arg1, npcs.Npc22149.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600425, 0, 10, 0, npcs.Npc7091.id)
end

function Quest76004:OnSubFinish7600425(arg1)
    print("OnSubFinish7600425")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22149.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

function Quest76004:OnSubStart7600426(arg1)
    print("OnSubStart7600426")
    actorMgr:CreateActorWithPos("Q7600426Trigger", "Actor/Gadget/Q7600426Trigger", 70900002, 0, points._Q7600426TriggerPoint_.pos, points._Q7600426TriggerPoint_.rot, true, false, 3)
end

function Quest76004:OnSubFinish7600426(arg1)
    print("OnSubFinish7600426")
end

function Quest76004:OnSubStart7600428(arg1)
    print("OnSubStart7600428")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600428, 0, 15, 0, npcs.Npc7091.id)
end

function Quest76004:OnSubFinish7600428(arg1)
    print("OnSubFinish7600428")
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

function Quest76004:OnSubStart7600429(arg1)
    print("OnSubStart7600429")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600429, 0, 20, 0, npcs.Npc7091.id)
    this:CreateQuestNpc(arg1, npcs.Npc22162.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600429(arg1)
    print("OnSubFinish7600429")
    this:SafeDestroyQuestNpc(npcs.Npc22162.alias, 3)
end

function Quest76004:OnSubStart7600420(arg1)
    print("OnSubStart7600420")
    this:PlayCutsceneIndex(7600439, function(arg1)
        actorUtils.FinishQuestID(false, 7600420)
    end, nil, nil, false)
end

function Quest76004:OnSubFinish7600420(arg1)
    print("OnSubFinish7600420")
end

function Quest76004:OnSubStart7600439(arg1)
    print("OnSubStart7600439")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600439, 0, 60, 0, npcs.Npc7091.id)
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
end

function Quest76004:OnSubFinish7600439(arg1)
    print("OnSubFinish7600439")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

return Quest76004
