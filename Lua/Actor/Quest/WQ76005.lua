require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76005 = class("Quest76005", QuestActorProxy)
Quest76005.defaultAlias = "Quest76005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600501"] = self.OnSubStart7600501,
        ["7600502"] = self.OnSubStart7600502,
        ["7600521"] = self.OnSubStart7600521,
        ["7600504"] = self.OnSubStart7600504,
        ["7600526"] = self.OnSubStart7600526,
        ["7600505"] = self.OnSubStart7600505,
        ["7600506"] = self.OnSubStart7600506,
        ["7600508"] = self.OnSubStart7600508,
        ["7600509"] = self.OnSubStart7600509,
        ["7600527"] = self.OnSubStart7600527,
        ["7600503"] = self.OnSubStart7600503,
        ["7600510"] = self.OnSubStart7600510,
        ["7600511"] = self.OnSubStart7600511,
        ["7600512"] = self.OnSubStart7600512,
        ["7600513"] = self.OnSubStart7600513,
        ["7600531"] = self.OnSubStart7600531,
        ["7600529"] = self.OnSubStart7600529,
        ["7600525"] = self.OnSubStart7600525,
        ["7600517"] = self.OnSubStart7600517,
        ["7600534"] = self.OnSubStart7600534,
        ["7600530"] = self.OnSubStart7600530,
        ["7600523"] = self.OnSubStart7600523,
        ["7600524"] = self.OnSubStart7600524,
        ["7600515"] = self.OnSubStart7600515,
        ["7600522"] = self.OnSubStart7600522,
        ["7600514"] = self.OnSubStart7600514,
        ["7600532"] = self.OnSubStart7600532,
        ["7600516"] = self.OnSubStart7600516,
        ["7600518"] = self.OnSubStart7600518,
        ["7600528"] = self.OnSubStart7600528,
        ["7600533"] = self.OnSubStart7600533,
        ["7600519"] = self.OnSubStart7600519,
        ["7600520"] = self.OnSubStart7600520,
        ["7600507"] = self.OnSubStart7600507
    }
end

function Quest76005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600501"] = self.OnSubFinish7600501,
        ["7600502"] = self.OnSubFinish7600502,
        ["7600521"] = self.OnSubFinish7600521,
        ["7600504"] = self.OnSubFinish7600504,
        ["7600526"] = self.OnSubFinish7600526,
        ["7600505"] = self.OnSubFinish7600505,
        ["7600506"] = self.OnSubFinish7600506,
        ["7600508"] = self.OnSubFinish7600508,
        ["7600509"] = self.OnSubFinish7600509,
        ["7600527"] = self.OnSubFinish7600527,
        ["7600503"] = self.OnSubFinish7600503,
        ["7600510"] = self.OnSubFinish7600510,
        ["7600511"] = self.OnSubFinish7600511,
        ["7600512"] = self.OnSubFinish7600512,
        ["7600513"] = self.OnSubFinish7600513,
        ["7600531"] = self.OnSubFinish7600531,
        ["7600529"] = self.OnSubFinish7600529,
        ["7600525"] = self.OnSubFinish7600525,
        ["7600517"] = self.OnSubFinish7600517,
        ["7600534"] = self.OnSubFinish7600534,
        ["7600530"] = self.OnSubFinish7600530,
        ["7600523"] = self.OnSubFinish7600523,
        ["7600524"] = self.OnSubFinish7600524,
        ["7600515"] = self.OnSubFinish7600515,
        ["7600522"] = self.OnSubFinish7600522,
        ["7600514"] = self.OnSubFinish7600514,
        ["7600532"] = self.OnSubFinish7600532,
        ["7600516"] = self.OnSubFinish7600516,
        ["7600518"] = self.OnSubFinish7600518,
        ["7600528"] = self.OnSubFinish7600528,
        ["7600533"] = self.OnSubFinish7600533,
        ["7600519"] = self.OnSubFinish7600519,
        ["7600520"] = self.OnSubFinish7600520,
        ["7600507"] = self.OnSubFinish7600507
    }
end

function Quest76005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7600527"] = self.OnSubFailed7600527, ["7600503"] = self.OnSubFailed7600503}
end

function Quest76005:Start()
    print("Start")
end

function Quest76005:OnDestroy()
    print("OnDestroy")
end

function Quest76005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76005:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7600529 then
        actorUtils.FinishQuestID(false, 7600529)
    elseif arg1 == 7600530 then
        actorUtils.FinishQuestID(false, 7600530)
    elseif arg1 == 7600531 then
        actorUtils.FinishQuestID(false, 7600531)
    elseif arg1 == 7600534 then
        actorUtils.FinishQuestID(false, 7600534)
    end
end

function Quest76005:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76005:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76005:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76005:OnMainPaused(arg1)
    this:ActorDestroy("Q7600502Trigger")
    this:ActorDestroy("Q7600501Trigger")
    this:ActorDestroy("Q7600505Trigger")
    this:ActorDestroy("Q7600506Trigger")
    this:ActorDestroy("Q7600508Trigger")
    this:ActorDestroy("Q7600509Trigger")
    this:ActorDestroy("Q7600510Trigger")
    this:ActorDestroy("Q7600513Trigger")
    this:ActorDestroy("Q7600515Trigger")
    this:ActorDestroy("Q7600516Trigger")
    this:ActorDestroy("Q7600517Trigger")
    this:ActorDestroy("Q7600518Trigger")
    this:ActorDestroy("Q7600503Trigger_1")
    this:ActorDestroy("Q7600521Trigger")
end

function Quest76005:OnSubStart7600501(arg1)
    print("OnSubStart7600501")
    this:CreateQuestNpc(arg1, npcs.Npc22137.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7600501Trigger", "Actor/Gadget/Q7600501Trigger", 70900002, 0, points._Q7600501TriggerPoint_.pos, points._Q7600501TriggerPoint_.rot, true, false, 3)
end

function Quest76005:OnSubFinish7600501(arg1)
    print("OnSubFinish7600501")
    this:SetNavigationByMainId(76005, true)
end

function Quest76005:OnSubStart7600502(arg1)
    print("OnSubStart7600502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600502, 0, 20, 0, npcs.Paimon.id)
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest76005:OnSubFinish7600502(arg1)
    print("OnSubFinish7600502")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76005:OnSubStart7600521(arg1)
    print("OnSubStart7600521")
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7600521Trigger", "Actor/Gadget/Q7600521Trigger", 70900002, 0, points._Q7600521TriggerPoint_.pos, points._Q7600521TriggerPoint_.rot, true, false, 3)
end

function Quest76005:OnSubFinish7600521(arg1)
    print("OnSubFinish7600521")
end

function Quest76005:OnSubStart7600504(arg1)
    print("OnSubStart7600504")
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7600504Trigger", "Actor/Gadget/Q7600504Trigger", 70900002, 0, points._Q7600504TriggerPoint_.pos, points._Q7600504TriggerPoint_.rot, true, false, 3)
end

function Quest76005:OnSubFinish7600504(arg1)
    print("OnSubFinish7600504")
end

function Quest76005:OnSubStart7600526(arg1)
    print("OnSubStart7600526")
    this:CreateQuestNpc(arg1, npcs.Npc22137.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):EnableInteractionWithUIEx(false)
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):WalkToRouteTask(datas.RoutePointsData, function(arg1)
        this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):EnableInteractionWithUIEx(true)
    end, nil, nil)
end

function Quest76005:OnSubFinish7600526(arg1)
    print("OnSubFinish7600526")
end

function Quest76005:OnSubStart7600505(arg1)
    print("OnSubStart7600505")
    actorMgr:CreateActorWithPos("Q7600505Trigger", "Actor/Gadget/Q7600505Trigger", 70900002, 0, points._Q7600505TriggerPoint_.pos, points._Q7600505TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc22137.alias, 76005):DoFreeStateTrigger()
end

function Quest76005:OnSubFinish7600505(arg1)
    print("OnSubFinish7600505")
end

function Quest76005:OnSubStart7600506(arg1)
    print("OnSubStart7600506")
    actorMgr:CreateActorWithPos("Q7600506Trigger", "Actor/Gadget/Q7600506Trigger", 70900002, 0, points._Q7600506TriggerPoint_.pos, points._Q7600506TriggerPoint_.rot, true, false, 3)
end

function Quest76005:OnSubFinish7600506(arg1)
    print("OnSubFinish7600506")
end

function Quest76005:OnSubStart7600508(arg1)
    print("OnSubStart7600508")
end

function Quest76005:OnSubFinish7600508(arg1)
    print("OnSubFinish7600508")
end

function Quest76005:OnSubStart7600509(arg1)
    print("OnSubStart7600509")
    this:ClearNpcTriggerByQuestId(7600527)
    this:ClearNpcTriggerByQuestId(7600503)
end

function Quest76005:OnSubFinish7600509(arg1)
    print("OnSubFinish7600509")
end

function Quest76005:OnSubStart7600527(arg1)
    print("OnSubStart7600527")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600527, 0, 30, 0, npcs.Paimon.id)
end

function Quest76005:OnSubFinish7600527(arg1)
    print("OnSubFinish7600527")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76005:OnSubFailed7600527(arg1)
    print("OnSubFailed7600527")
    this:ClearNpcTriggerByQuestId(7600527)
end

function Quest76005:OnSubStart7600503(arg1)
    print("OnSubStart7600503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600503, 0, 10, 0, npcs.Npc22137.id)
end

function Quest76005:OnSubFinish7600503(arg1)
    print("OnSubFinish7600503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22137.alias)
end

function Quest76005:OnSubFailed7600503(arg1)
    print("OnSubFailed7600503")
    this:ClearNpcTriggerByQuestId(7600503)
end

function Quest76005:OnSubStart7600510(arg1)
    print("OnSubStart7600510")
end

function Quest76005:OnSubFinish7600510(arg1)
    print("OnSubFinish7600510")
end

function Quest76005:OnSubStart7600511(arg1)
    print("OnSubStart7600511")
    this:PlayCutsceneIndex(7600511, function(arg1)
        actorUtils.FinishQuestID(false, 7600511)
    end, nil, nil, false)
end

function Quest76005:OnSubFinish7600511(arg1)
    print("OnSubFinish7600511")
end

function Quest76005:OnSubStart7600512(arg1)
    print("OnSubStart7600512")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600512, 0, 20, 0, npcs.Npc22137.id)
end

function Quest76005:OnSubFinish7600512(arg1)
    print("OnSubFinish7600512")
end

function Quest76005:OnSubStart7600513(arg1)
    print("OnSubStart7600513")
    this:CreateQuestNpc(arg1, npcs.Npc21843.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600513, 0, 10, 0, npcs.Npc22137.id)
end

function Quest76005:OnSubFinish7600513(arg1)
    print("OnSubFinish7600513")
    this:SafeDestroyQuestNpc(npcs.Npc21843.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22137.alias)
end

function Quest76005:OnSubStart7600531(arg1)
    print("OnSubStart7600531")
end

function Quest76005:OnSubFinish7600531(arg1)
    print("OnSubFinish7600531")
end

function Quest76005:OnSubStart7600529(arg1)
    print("OnSubStart7600529")
end

function Quest76005:OnSubFinish7600529(arg1)
    print("OnSubFinish7600529")
end

function Quest76005:OnSubStart7600525(arg1)
    print("OnSubStart7600525")
end

function Quest76005:OnSubFinish7600525(arg1)
    print("OnSubFinish7600525")
end

function Quest76005:OnSubStart7600517(arg1)
    print("OnSubStart7600517")
    this:CreateQuestNpc(arg1, npcs.Npc21843.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600517, 0, 5, 0, npcs.Npc22137.id)
end

function Quest76005:OnSubFinish7600517(arg1)
    print("OnSubFinish7600517")
    this:SafeDestroyQuestNpc(npcs.Npc21843.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22137.alias, 3)
end

function Quest76005:OnSubStart7600534(arg1)
    print("OnSubStart7600534")
end

function Quest76005:OnSubFinish7600534(arg1)
    print("OnSubFinish7600534")
end

function Quest76005:OnSubStart7600530(arg1)
    print("OnSubStart7600530")
end

function Quest76005:OnSubFinish7600530(arg1)
    print("OnSubFinish7600530")
end

function Quest76005:OnSubStart7600523(arg1)
    print("OnSubStart7600523")
end

function Quest76005:OnSubFinish7600523(arg1)
    print("OnSubFinish7600523")
end

function Quest76005:OnSubStart7600524(arg1)
    print("OnSubStart7600524")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600524, 0, 30, 0, npcs.Npc22137.id)
end

function Quest76005:OnSubFinish7600524(arg1)
    print("OnSubFinish7600524")
end

function Quest76005:OnSubStart7600515(arg1)
    print("OnSubStart7600515")
end

function Quest76005:OnSubFinish7600515(arg1)
    print("OnSubFinish7600515")
end

function Quest76005:OnSubStart7600522(arg1)
    print("OnSubStart7600522")
end

function Quest76005:OnSubFinish7600522(arg1)
    print("OnSubFinish7600522")
end

function Quest76005:OnSubStart7600514(arg1)
    print("OnSubStart7600514")
end

function Quest76005:OnSubFinish7600514(arg1)
    print("OnSubFinish7600514")
end

function Quest76005:OnSubStart7600532(arg1)
    print("OnSubStart7600532")
    this:CreateQuestNpc(arg1, npcs.Npc22137.id, 0, false, 0)
end

function Quest76005:OnSubFinish7600532(arg1)
    print("OnSubFinish7600532")
    this:SafeDestroyQuestNpc(npcs.Npc22137.alias, 3)
end

function Quest76005:OnSubStart7600516(arg1)
    print("OnSubStart7600516")
end

function Quest76005:OnSubFinish7600516(arg1)
    print("OnSubFinish7600516")
end

function Quest76005:OnSubStart7600518(arg1)
    print("OnSubStart7600518")
end

function Quest76005:OnSubFinish7600518(arg1)
    print("OnSubFinish7600518")
end

function Quest76005:OnSubStart7600528(arg1)
    print("OnSubStart7600528")
end

function Quest76005:OnSubFinish7600528(arg1)
    print("OnSubFinish7600528")
end

function Quest76005:OnSubStart7600533(arg1)
    print("OnSubStart7600533")
end

function Quest76005:OnSubFinish7600533(arg1)
    print("OnSubFinish7600533")
end

function Quest76005:OnSubStart7600519(arg1)
    print("OnSubStart7600519")
    this:PlayCutsceneIndex(7600519, function(arg1)
        actorUtils.FinishQuestID(false, 7600519)
    end, nil, nil, false)
end

function Quest76005:OnSubFinish7600519(arg1)
    print("OnSubFinish7600519")
end

function Quest76005:OnSubStart7600520(arg1)
    print("OnSubStart7600520")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600520, 0, 20, 0, npcs.Npc22137.id)
end

function Quest76005:OnSubFinish7600520(arg1)
    print("OnSubFinish7600520")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22137.alias)
end

function Quest76005:OnSubStart7600507(arg1)
    print("OnSubStart7600507")
end

function Quest76005:OnSubFinish7600507(arg1)
    print("OnSubFinish7600507")
end

return Quest76005
