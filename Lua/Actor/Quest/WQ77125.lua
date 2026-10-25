require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77125 = class("Quest77125", QuestActorProxy)
Quest77125.defaultAlias = "Quest77125"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77125:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77125:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712508"] = self.OnSubStart7712508,
        ["7712503"] = self.OnSubStart7712503,
        ["7712510"] = self.OnSubStart7712510,
        ["7712501"] = self.OnSubStart7712501,
        ["7712502"] = self.OnSubStart7712502,
        ["7712504"] = self.OnSubStart7712504,
        ["7712517"] = self.OnSubStart7712517,
        ["7712519"] = self.OnSubStart7712519,
        ["7712518"] = self.OnSubStart7712518,
        ["7712522"] = self.OnSubStart7712522,
        ["7712505"] = self.OnSubStart7712505,
        ["7712521"] = self.OnSubStart7712521,
        ["7712506"] = self.OnSubStart7712506,
        ["7712527"] = self.OnSubStart7712527,
        ["7712507"] = self.OnSubStart7712507,
        ["7712530"] = self.OnSubStart7712530,
        ["7712528"] = self.OnSubStart7712528,
        ["7712529"] = self.OnSubStart7712529,
        ["7712514"] = self.OnSubStart7712514,
        ["7712509"] = self.OnSubStart7712509,
        ["7712520"] = self.OnSubStart7712520,
        ["7712523"] = self.OnSubStart7712523,
        ["7712516"] = self.OnSubStart7712516,
        ["7712524"] = self.OnSubStart7712524,
        ["7712513"] = self.OnSubStart7712513,
        ["7712511"] = self.OnSubStart7712511,
        ["7712515"] = self.OnSubStart7712515,
        ["7712525"] = self.OnSubStart7712525,
        ["7712526"] = self.OnSubStart7712526,
        ["7712512"] = self.OnSubStart7712512
    }
end

function Quest77125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712508"] = self.OnSubFinish7712508,
        ["7712503"] = self.OnSubFinish7712503,
        ["7712510"] = self.OnSubFinish7712510,
        ["7712501"] = self.OnSubFinish7712501,
        ["7712502"] = self.OnSubFinish7712502,
        ["7712504"] = self.OnSubFinish7712504,
        ["7712517"] = self.OnSubFinish7712517,
        ["7712519"] = self.OnSubFinish7712519,
        ["7712518"] = self.OnSubFinish7712518,
        ["7712522"] = self.OnSubFinish7712522,
        ["7712505"] = self.OnSubFinish7712505,
        ["7712521"] = self.OnSubFinish7712521,
        ["7712506"] = self.OnSubFinish7712506,
        ["7712527"] = self.OnSubFinish7712527,
        ["7712507"] = self.OnSubFinish7712507,
        ["7712530"] = self.OnSubFinish7712530,
        ["7712528"] = self.OnSubFinish7712528,
        ["7712529"] = self.OnSubFinish7712529,
        ["7712514"] = self.OnSubFinish7712514,
        ["7712509"] = self.OnSubFinish7712509,
        ["7712520"] = self.OnSubFinish7712520,
        ["7712523"] = self.OnSubFinish7712523,
        ["7712516"] = self.OnSubFinish7712516,
        ["7712524"] = self.OnSubFinish7712524,
        ["7712513"] = self.OnSubFinish7712513,
        ["7712511"] = self.OnSubFinish7712511,
        ["7712515"] = self.OnSubFinish7712515,
        ["7712525"] = self.OnSubFinish7712525,
        ["7712526"] = self.OnSubFinish7712526,
        ["7712512"] = self.OnSubFinish7712512
    }
end

function Quest77125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7712508"] = self.OnSubFailed7712508,
        ["7712503"] = self.OnSubFailed7712503,
        ["7712510"] = self.OnSubFailed7712510,
        ["7712501"] = self.OnSubFailed7712501,
        ["7712502"] = self.OnSubFailed7712502,
        ["7712519"] = self.OnSubFailed7712519,
        ["7712521"] = self.OnSubFailed7712521,
        ["7712528"] = self.OnSubFailed7712528,
        ["7712529"] = self.OnSubFailed7712529,
        ["7712509"] = self.OnSubFailed7712509,
        ["7712520"] = self.OnSubFailed7712520,
        ["7712523"] = self.OnSubFailed7712523,
        ["7712513"] = self.OnSubFailed7712513,
        ["7712511"] = self.OnSubFailed7712511,
        ["7712526"] = self.OnSubFailed7712526
    }
end

function Quest77125:Start()
    print("Start")
end

function Quest77125:OnDestroy()
    print("OnDestroy")
end

function Quest77125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77125:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77125:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7712502Trigger", nil)
    this:ActorDestroy("Q7712512Trigger", nil)
    this:ActorDestroy("Q7712504Trigger", 77125)
    this:ActorDestroy("Q7712503Trigger", nil)
    this:ActorDestroy("Q7712502Trigger", 0)
    this:ActorDestroy("Q7712504Trigger", 77125)
    this:ActorDestroy("Q7712504Trigger", 77125)
    this:ActorDestroy("Q7712504Trigger", nil)
    this:ActorDestroy("Q7712506Trigger", nil)
end

function Quest77125:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
    elseif arg1 == 1 then
        actorUtils.FinishQuestWithParam({false}, {7712514})
    elseif arg1 == 11 then
        actorUtils.FinishQuestWithParam({false}, {7712523})
    elseif arg1 == 12 then
        actorUtils.FinishQuestWithParam({false}, {7712520})
    elseif arg1 == 21 then
        actorUtils.FinishQuestWithParam({false}, {7712524})
    elseif arg1 == 31 then
        actorUtils.FinishQuestWithParam({false}, {7712513})
    end
end

function Quest77125:ActorDestroy(arg1, arg2)
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

function Quest77125:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77125:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77125:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77125:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77125:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77125:OnSubStart7712508(arg1)
    print("OnSubStart7712508")
    actorUtils.FinishQuestWithParam({false}, {7712508})
end

function Quest77125:OnSubFinish7712508(arg1)
    print("OnSubFinish7712508")
end

function Quest77125:OnSubFailed7712508(arg1)
    print("OnSubFailed7712508")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712503(arg1)
    print("OnSubStart7712503")
    actorMgr:CreateActorWithPos("Q7712503Trigger", "Actor/Gadget/Q7712503Trigger", 70900002, 0, points._Q7712503TriggerPoint_.pos, points._Q7712503TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77125:OnSubFinish7712503(arg1)
    print("OnSubFinish7712503")
end

function Quest77125:OnSubFailed7712503(arg1)
    print("OnSubFailed7712503")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q7712502Trigger", "Actor/Gadget/Q7712502Trigger", 70900002, 0, points._Q7712502TriggerPoint_.pos, points._Q7712502TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77125:OnSubStart7712510(arg1)
    print("OnSubStart7712510")
end

function Quest77125:OnSubFinish7712510(arg1)
    print("OnSubFinish7712510")
end

function Quest77125:OnSubFailed7712510(arg1)
    print("OnSubFailed7712510")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q7712504Trigger", "Actor/Gadget/Q7712504Trigger", 70900002, 0, points._Q7712504TriggerPoint_.pos, points._Q7712504TriggerPoint_.rot, true, false, 3, nil, 0, 77125)
end

function Quest77125:OnSubStart7712501(arg1)
    print("OnSubStart7712501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712501, 0, 10, 0.5, npcs.Npc22430.id)
    this:CreateQuestNpc(arg1, npcs.Npc22400.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712501(arg1)
    print("OnSubFinish7712501")
    this:NpcDestroyImmediately(3, npcs.Npc22430.alias)
    this:QuestNarratorTask(datas.NarratorWithId_97712501, nil)
end

function Quest77125:OnSubFailed7712501(arg1)
    print("OnSubFailed7712501")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q7712504Trigger", "Actor/Gadget/Q7712504Trigger", 70900002, 0, points._Q7712504TriggerPoint_.pos, points._Q7712504TriggerPoint_.rot, true, false, 3, nil, 0, 77125)
end

function Quest77125:OnSubStart7712502(arg1)
    print("OnSubStart7712502")
    this:CreateQuestNpc(arg1, npcs.Npc22400.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22400.alias, 77125):DoFreeStyle(1012, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7712502Trigger", "Actor/Gadget/Q7712502Trigger", 70900002, 0, points._Q7712502TriggerPoint_.pos, points._Q7712502TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77125:OnSubFinish7712502(arg1)
    print("OnSubFinish7712502")
end

function Quest77125:OnSubFailed7712502(arg1)
    print("OnSubFailed7712502")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q7712504Trigger", "Actor/Gadget/Q7712504Trigger", 70900002, 0, points._Q7712504TriggerPoint_.pos, points._Q7712504TriggerPoint_.rot, true, false, 3, nil, 0, 77125)
end

function Quest77125:OnSubStart7712504(arg1)
    print("OnSubStart7712504")
    actorMgr:CreateActorWithPos("Q7712504Trigger", "Actor/Gadget/Q7712504Trigger", 70900002, 0, points._Q7712504TriggerPoint_.pos, points._Q7712504TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77125:OnSubFinish7712504(arg1)
    print("OnSubFinish7712504")
    this:QuestNarratorTask(datas.NarratorWithId_97712501, nil)
end

function Quest77125:OnSubStart7712517(arg1)
    print("OnSubStart7712517")
end

function Quest77125:OnSubFinish7712517(arg1)
    print("OnSubFinish7712517")
end

function Quest77125:OnSubStart7712519(arg1)
    print("OnSubStart7712519")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712519, 0, 15, 0.5, npcs.Npc22564.id)
end

function Quest77125:OnSubFinish7712519(arg1)
    print("OnSubFinish7712519")
    this:NpcDestroyImmediately(3, npcs.Npc22564.alias)
end

function Quest77125:OnSubFailed7712519(arg1)
    print("OnSubFailed7712519")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712518(arg1)
    print("OnSubStart7712518")
end

function Quest77125:OnSubFinish7712518(arg1)
    print("OnSubFinish7712518")
end

function Quest77125:OnSubStart7712522(arg1)
    print("OnSubStart7712522")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712522, 0, 20, 1, npcs.Npc22563.id)
end

function Quest77125:OnSubFinish7712522(arg1)
    print("OnSubFinish7712522")
    this:NpcDestroyImmediately(3, npcs.Npc22563.alias)
end

function Quest77125:OnSubStart7712505(arg1)
    print("OnSubStart7712505")
end

function Quest77125:OnSubFinish7712505(arg1)
    print("OnSubFinish7712505")
end

function Quest77125:OnSubStart7712521(arg1)
    print("OnSubStart7712521")
    this:DeployStoryByQuest(147712501)
end

function Quest77125:OnSubFinish7712521(arg1)
    print("OnSubFinish7712521")
    this:CancelStoryByQuest(147712501)
    this:SetNavigationByMainId(77125, true)
end

function Quest77125:OnSubFailed7712521(arg1)
    print("OnSubFailed7712521")
    this:CancelStoryByQuest(147712501)
end

function Quest77125:OnSubStart7712506(arg1)
    print("OnSubStart7712506")
    this:NpcCreateWithNpcTrigger(npcs.Npc22405.id, 0, 8, 7712506)
end

function Quest77125:OnSubFinish7712506(arg1)
    print("OnSubFinish7712506")
    this:NpcDestroyImmediately(3, npcs.Npc22405.alias)
end

function Quest77125:OnSubStart7712527(arg1)
    print("OnSubStart7712527")
end

function Quest77125:OnSubFinish7712527(arg1)
    print("OnSubFinish7712527")
end

function Quest77125:OnSubStart7712507(arg1)
    print("OnSubStart7712507")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712507, 0, 8, 1, npcs.Npc22429.id)
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712507(arg1)
    print("OnSubFinish7712507")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22429.alias)
end

function Quest77125:OnSubStart7712530(arg1)
    print("OnSubStart7712530")
end

function Quest77125:OnSubFinish7712530(arg1)
    print("OnSubFinish7712530")
end

function Quest77125:OnSubStart7712528(arg1)
    print("OnSubStart7712528")
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712528(arg1)
    print("OnSubFinish7712528")
    this:QuestNarratorTask(datas.NarratorWithId_97712507, nil)
end

function Quest77125:OnSubFailed7712528(arg1)
    print("OnSubFailed7712528")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712529(arg1)
    print("OnSubStart7712529")
end

function Quest77125:OnSubFinish7712529(arg1)
    print("OnSubFinish7712529")
end

function Quest77125:OnSubFailed7712529(arg1)
    print("OnSubFailed7712529")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712514(arg1)
    print("OnSubStart7712514")
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712514(arg1)
    print("OnSubFinish7712514")
    this:NpcDestroyImmediately(3, npcs.Npc22405.alias)
end

function Quest77125:OnSubStart7712509(arg1)
    print("OnSubStart7712509")
    actorUtils.BanUIByQuest(1, true, 77125)
end

function Quest77125:OnSubFinish7712509(arg1)
    print("OnSubFinish7712509")
    actorUtils.BanUIByQuest(1, false, 77125)
end

function Quest77125:OnSubFailed7712509(arg1)
    print("OnSubFailed7712509")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 77125)
end

function Quest77125:OnSubStart7712520(arg1)
    print("OnSubStart7712520")
end

function Quest77125:OnSubFinish7712520(arg1)
    print("OnSubFinish7712520")
end

function Quest77125:OnSubFailed7712520(arg1)
    print("OnSubFailed7712520")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712523(arg1)
    print("OnSubStart7712523")
end

function Quest77125:OnSubFinish7712523(arg1)
    print("OnSubFinish7712523")
end

function Quest77125:OnSubFailed7712523(arg1)
    print("OnSubFailed7712523")
    this:RecycleAllRes()
    this:CreateQuestNpcById(7712524, 22405, 0, false, 0)
end

function Quest77125:OnSubStart7712516(arg1)
    print("OnSubStart7712516")
    this:NpcCreateWithNpcTrigger(npcs.Npc22405.id, 0, 50, 7712516)
end

function Quest77125:OnSubFinish7712516(arg1)
    print("OnSubFinish7712516")
end

function Quest77125:OnSubStart7712524(arg1)
    print("OnSubStart7712524")
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712524(arg1)
    print("OnSubFinish7712524")
end

function Quest77125:OnSubStart7712513(arg1)
    print("OnSubStart7712513")
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712513(arg1)
    print("OnSubFinish7712513")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22405.alias)
end

function Quest77125:OnSubFailed7712513(arg1)
    print("OnSubFailed7712513")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712511(arg1)
    print("OnSubStart7712511")
    actorUtils.BanUIByQuest(1, true, 77125)
end

function Quest77125:OnSubFinish7712511(arg1)
    print("OnSubFinish7712511")
    actorUtils.BanUIByQuest(1, false, 77125)
end

function Quest77125:OnSubFailed7712511(arg1)
    print("OnSubFailed7712511")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 77125)
end

function Quest77125:OnSubStart7712515(arg1)
    print("OnSubStart7712515")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712515, 0, 50, 1, npcs.Npc22405.id)
end

function Quest77125:OnSubFinish7712515(arg1)
    print("OnSubFinish7712515")
    this:NpcDestroyImmediately(3, npcs.Npc22405.alias)
end

function Quest77125:OnSubStart7712525(arg1)
    print("OnSubStart7712525")
    this:NpcCreateWithNpcTrigger(npcs.Npc22405.id, 0, 8, 7712525)
end

function Quest77125:OnSubFinish7712525(arg1)
    print("OnSubFinish7712525")
end

function Quest77125:OnSubStart7712526(arg1)
    print("OnSubStart7712526")
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
end

function Quest77125:OnSubFinish7712526(arg1)
    print("OnSubFinish7712526")
end

function Quest77125:OnSubFailed7712526(arg1)
    print("OnSubFailed7712526")
    this:RecycleAllRes()
end

function Quest77125:OnSubStart7712512(arg1)
    print("OnSubStart7712512")
    this:CreateQuestNpc(arg1, npcs.Npc22405.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712512, 0, 40, 1, npcs.Npc22439.id)
    actorMgr:CreateActorWithPos("Q7712512Trigger", "Actor/Gadget/Q7712512Trigger", 70900002, 0, points._Q7712512TriggerPoint_.pos, points._Q7712512TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77125:OnSubFinish7712512(arg1)
    print("OnSubFinish7712512")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22405.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22439.alias)
    this:CallDelayByQuest("7712512", 2, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_97712512, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_97712501, nil)
        end)
    end)
end

return Quest77125
