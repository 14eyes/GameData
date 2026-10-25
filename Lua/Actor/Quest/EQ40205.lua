require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40205 = class("Quest40205", QuestActorProxy)
Quest40205.defaultAlias = "Quest40205"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40205:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40205:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4020505"] = self.OnSubStart4020505,
        ["4020506"] = self.OnSubStart4020506,
        ["4020507"] = self.OnSubStart4020507,
        ["4020501"] = self.OnSubStart4020501,
        ["4020508"] = self.OnSubStart4020508,
        ["4020502"] = self.OnSubStart4020502,
        ["4020509"] = self.OnSubStart4020509,
        ["4020503"] = self.OnSubStart4020503,
        ["4020504"] = self.OnSubStart4020504
    }
end

function Quest40205:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4020505"] = self.OnSubFinish4020505,
        ["4020506"] = self.OnSubFinish4020506,
        ["4020507"] = self.OnSubFinish4020507,
        ["4020501"] = self.OnSubFinish4020501,
        ["4020508"] = self.OnSubFinish4020508,
        ["4020502"] = self.OnSubFinish4020502,
        ["4020509"] = self.OnSubFinish4020509,
        ["4020503"] = self.OnSubFinish4020503,
        ["4020504"] = self.OnSubFinish4020504
    }
end

function Quest40205:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4020502"] = self.OnSubFailed4020502}
end

function Quest40205:Start()
    print("Start")
end

function Quest40205:OnDestroy()
    print("OnDestroy")
end

function Quest40205:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40205:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40205:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7103.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15467.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15538.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15540.alias, 3)
    this:LightNotifyTo(npcs.Npc7096.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7098.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7105.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7103.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7100.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7099.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:ActorDestroy("Q4020502Trigger")
    this:DestroyNpcTrigger("Q4020501N1315Trigger")
    this:DestroyNpcTrigger("Q4020504N1313Trigger")
    this:DestroyNpcTrigger("Q4020506N1313Trigger")
    this:DestroyNpcTrigger("Q4020507N15467Trigger")
    this:DestroyNpcTrigger("Q4020508N15538Trigger")
    this:DestroyNpcTrigger("Q4020509N1313Trigger")
    this:BanCrowdNpc(3607, 1, {10132}, false, true)
end

function Quest40205:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4020502Trigger")
    this:BanCrowdNpc(3607, 1, {10132}, false, true)
end

function Quest40205:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40205:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40205:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40205:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40205:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40205:OnSubStart4020505(arg1)
    print("OnSubStart4020505")
end

function Quest40205:OnSubFinish4020505(arg1)
    print("OnSubFinish4020505")
end

function Quest40205:OnSubStart4020506(arg1)
    print("OnSubStart4020506")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1313.id, 0, 4020506, 20, true)
    this:BanCrowdNpc(3607, 1, {10132}, true, true)
end

function Quest40205:OnSubFinish4020506(arg1)
    print("OnSubFinish4020506")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest40205:OnSubStart4020507(arg1)
    print("OnSubStart4020507")
    this:NpcCreateWithNpcTrigger(npcs.Npc15467.id, 0, 10, 4020507)
    this:GetQuestNpcActor(npcs.Npc15467.alias, 40205):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:BanCrowdNpc(3607, 1, {10132}, true, true)
end

function Quest40205:OnSubFinish4020507(arg1)
    print("OnSubFinish4020507")
end

function Quest40205:OnSubStart4020501(arg1)
    print("OnSubStart4020501")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 10, 4020501)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 40205):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7103.id, 0, false, 0)
    this:BanCrowdNpc(3607, 1, {10132}, true, true)
end

function Quest40205:OnSubFinish4020501(arg1)
    print("OnSubFinish4020501")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15467.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7103.alias, 3)
    this:BanCrowdNpc(3607, 1, {10132}, false, true)
end

function Quest40205:OnSubStart4020508(arg1)
    print("OnSubStart4020508")
    this:NpcCreateWithNpcTrigger(npcs.Npc15538.id, 0, 10, 4020508)
    this:GetQuestNpcActor(npcs.Npc15538.alias, 40205):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15540.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15540.alias, 40205):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40205:OnSubFinish4020508(arg1)
    print("OnSubFinish4020508")
    this:SafeDestroyQuestNpc(npcs.Npc15538.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15540.alias, 3)
end

function Quest40205:OnSubStart4020502(arg1)
    print("OnSubStart4020502")
    this:DailyNpcSafeHideSelf(npcs.Npc7096.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7097.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7098.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7099.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7100.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7104.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7105.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7103.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4020502Trigger", "Actor/Gadget/Q4020502Trigger", 70900002, 0, points._Q4020502TriggerPoint_.pos, points._Q4020502TriggerPoint_.rot, true, false, 3)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4020502, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_4020501, nil)
        end)
    end)
end

function Quest40205:OnSubFinish4020502(arg1)
    print("OnSubFinish4020502")
    this:ActorDestroy("Q4020502Trigger")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest40205:OnSubFailed4020502(arg1)
    print("OnSubFailed4020502")
    this:ActorDestroy("Q4020502Trigger")
    this:LightNotifyTo(npcs.Npc7096.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7098.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7105.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7100.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7099.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:ClearNarratorTask()
end

function Quest40205:OnSubStart4020509(arg1)
    print("OnSubStart4020509")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020509, 0, 15, 0, npcs.Npc1313.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7096.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7097.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7098.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7099.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7100.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7104.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7105.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7103.alias, true, 1)
end

function Quest40205:OnSubFinish4020509(arg1)
    print("OnSubFinish4020509")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:TransmitPlayerByQuestId(4020509, 1, nil, nil, nil)
end

function Quest40205:OnSubStart4020503(arg1)
    print("OnSubStart4020503")
    this:DailyNpcSafeHideSelf(npcs.Npc7096.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7098.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7105.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7100.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7099.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7104.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7097.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7103.alias, true, 1)
end

function Quest40205:OnSubFinish4020503(arg1)
    print("OnSubFinish4020503")
    this:LightNotifyTo(npcs.Npc7096.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7098.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7105.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7100.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7099.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7104.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7097.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7103.alias, 0, true)
end

function Quest40205:OnSubStart4020504(arg1)
    print("OnSubStart4020504")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020504, 0, 22, 0, npcs.Npc1313.id)
end

function Quest40205:OnSubFinish4020504(arg1)
    print("OnSubFinish4020504")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

return Quest40205
