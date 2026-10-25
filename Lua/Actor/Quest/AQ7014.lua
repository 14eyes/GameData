require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7014 = class("Quest7014", QuestActorProxy)
Quest7014.defaultAlias = "Quest7014"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701412"] = self.OnSubStart701412,
        ["701401"] = self.OnSubStart701401,
        ["701413"] = self.OnSubStart701413,
        ["701402"] = self.OnSubStart701402,
        ["701403"] = self.OnSubStart701403,
        ["701414"] = self.OnSubStart701414,
        ["701404"] = self.OnSubStart701404,
        ["701405"] = self.OnSubStart701405,
        ["701406"] = self.OnSubStart701406,
        ["701407"] = self.OnSubStart701407,
        ["701408"] = self.OnSubStart701408,
        ["701409"] = self.OnSubStart701409,
        ["701410"] = self.OnSubStart701410,
        ["701411"] = self.OnSubStart701411
    }
end

function Quest7014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701412"] = self.OnSubFinish701412,
        ["701401"] = self.OnSubFinish701401,
        ["701413"] = self.OnSubFinish701413,
        ["701402"] = self.OnSubFinish701402,
        ["701403"] = self.OnSubFinish701403,
        ["701414"] = self.OnSubFinish701414,
        ["701404"] = self.OnSubFinish701404,
        ["701405"] = self.OnSubFinish701405,
        ["701406"] = self.OnSubFinish701406,
        ["701407"] = self.OnSubFinish701407,
        ["701408"] = self.OnSubFinish701408,
        ["701409"] = self.OnSubFinish701409,
        ["701410"] = self.OnSubFinish701410,
        ["701411"] = self.OnSubFinish701411
    }
end

function Quest7014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7014:Start()
    print("Start")
end

function Quest7014:OnDestroy()
    print("OnDestroy")
end

function Quest7014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7014:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701408Trigger", 7014)
    this:ActorDestroy("Q701413Trigger", 7014)
end

function Quest7014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 701403 then
        actorUtils.FinishQuestWithParam({false}, {701414})
    end
end

function Quest7014:ActorDestroy(arg1, arg2)
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

function Quest7014:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7014:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7014:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7014:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7014:OnSubStart701412(arg1)
    print("OnSubStart701412")
end

function Quest7014:OnSubFinish701412(arg1)
    print("OnSubFinish701412")
end

function Quest7014:OnSubStart701401(arg1)
    print("OnSubStart701401")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7014):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7501.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7501.alias, 7014):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7505.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16646.alias, 7014):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7507.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7502.alias, 1, true)
    this:NotifyTo(npcs.Npc7503.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc7508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7508.alias, 7014):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(701401, 0, 12, 1, npcs.Npc16888.id)
    this:NotifyTo(npcs.Npc7504.alias, 1, true)
end

function Quest7014:OnSubFinish701401(arg1)
    print("OnSubFinish701401")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7505.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16646.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7507.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
end

function Quest7014:OnSubStart701413(arg1)
    print("OnSubStart701413")
    this:NotifyTo(npcs.Npc7505.alias, 1, true)
    this:NotifyTo(npcs.Npc7502.alias, 1, true)
    this:NotifyTo(npcs.Npc7503.alias, 1, true)
    this:NotifyTo(npcs.Npc7504.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701413Trigger", "Actor/Gadget/Q701413Trigger", 70900002, 0, points._Q701413TriggerPoint_.pos, points._Q701413TriggerPoint_.rot, true, false, 3, nil, 0, 7014)
end

function Quest7014:OnSubFinish701413(arg1)
    print("OnSubFinish701413")
    this:NpcDestroyImmediately(3, npcs.Npc7501.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16646.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7508.alias)
    this:ActorDestroy("Q701413Trigger", 7014)
end

function Quest7014:OnSubStart701402(arg1)
    print("OnSubStart701402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1331.id, 0, 701402, 40, true)
    this:NotifyTo(npcs.Npc7501.alias, 1, true)
    this:NotifyTo(npcs.Npc7502.alias, 1, true)
    this:NotifyTo(npcs.Npc7503.alias, 1, true)
    this:NotifyTo(npcs.Npc7504.alias, 1, true)
    this:NotifyTo(npcs.Npc7505.alias, 1, true)
    this:NotifyTo(npcs.Npc7507.alias, 1, true)
    this:NotifyTo(npcs.Npc7508.alias, 1, true)
end

function Quest7014:OnSubFinish701402(arg1)
    print("OnSubFinish701402")
    this:NpcDestroyImmediately(1159, npcs.Npc1331.alias)
    this:LightNotifyTo(npcs.Npc7501.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7502.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7503.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7504.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7505.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7507.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7508.alias, 0, true)
end

function Quest7014:OnSubStart701403(arg1)
    print("OnSubStart701403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701403, 0, 17, 1, npcs.Npc1335.id)
end

function Quest7014:OnSubFinish701403(arg1)
    print("OnSubFinish701403")
    this:NpcDestroyImmediately(1159, npcs.Npc1335.alias)
end

function Quest7014:OnSubStart701414(arg1)
    print("OnSubStart701414")
end

function Quest7014:OnSubFinish701414(arg1)
    print("OnSubFinish701414")
end

function Quest7014:OnSubStart701404(arg1)
    print("OnSubStart701404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701404, 0, 40, 1, npcs.Npc1335.id)
end

function Quest7014:OnSubFinish701404(arg1)
    print("OnSubFinish701404")
    this:NpcDestroyImmediately(1158, npcs.Npc1335.alias)
end

function Quest7014:OnSubStart701405(arg1)
    print("OnSubStart701405")
    this:NpcCreateWithNpcTrigger(npcs.Paimon.id, 0, 5, 701405)
end

function Quest7014:OnSubFinish701405(arg1)
    print("OnSubFinish701405")
    this:NpcDestroyImmediately(1158, npcs.Paimon.alias)
end

function Quest7014:OnSubStart701406(arg1)
    print("OnSubStart701406")
end

function Quest7014:OnSubFinish701406(arg1)
    print("OnSubFinish701406")
    this:QuestNarratorTask(datas.NarratorWithId_701401, nil)
end

function Quest7014:OnSubStart701407(arg1)
    print("OnSubStart701407")
    this:NpcCreateWithNpcTrigger(npcs.Npc1335.id, 0, 10, 701407)
    this:CreateQuestNpc(arg1, npcs.Npc16865.id, 0, false, 0)
end

function Quest7014:OnSubFinish701407(arg1)
    print("OnSubFinish701407")
    this:NpcDestroyImmediately(3, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16865.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackData, nil, nil, nil)
    this:ClearNarratorTask()
end

function Quest7014:OnSubStart701408(arg1)
    print("OnSubStart701408")
    actorMgr:CreateActorWithPos("Q701408Trigger", "Actor/Gadget/Q701408Trigger", 70900002, 0, points._Q701408TriggerPoint_.pos, points._Q701408TriggerPoint_.rot, true, false, 1157, nil, 0, 7014)
    this:DeployStoryByQuest(110701402)
end

function Quest7014:OnSubFinish701408(arg1)
    print("OnSubFinish701408")
end

function Quest7014:OnSubStart701409(arg1)
    print("OnSubStart701409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701409, 0, 40, 1, npcs.Npc1335.id)
    this:DeployStoryByQuest(110701402)
end

function Quest7014:OnSubFinish701409(arg1)
    print("OnSubFinish701409")
    this:NpcDestroyImmediately(1157, npcs.Npc1335.alias)
end

function Quest7014:OnSubStart701410(arg1)
    print("OnSubStart701410")
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:DeployStoryByQuest(110701402)
end

function Quest7014:OnSubFinish701410(arg1)
    print("OnSubFinish701410")
    this:NpcDestroyImmediately(1157, npcs.Npc1335.alias)
    this:CancelStoryByQuest(110701402)
end

function Quest7014:OnSubStart701411(arg1)
    print("OnSubStart701411")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701411, 0, 6.4, 1, npcs.Paimon.id)
end

function Quest7014:OnSubFinish701411(arg1)
    print("OnSubFinish701411")
    this:NpcDestroyImmediately(1158, npcs.Paimon.alias)
end

return Quest7014
