require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74228 = class("Quest74228", QuestActorProxy)
Quest74228.defaultAlias = "Quest74228"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest74228:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74228:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422801"] = self.OnSubStart7422801,
        ["7422802"] = self.OnSubStart7422802,
        ["7422818"] = self.OnSubStart7422818,
        ["7422803"] = self.OnSubStart7422803,
        ["7422811"] = self.OnSubStart7422811,
        ["7422813"] = self.OnSubStart7422813,
        ["7422814"] = self.OnSubStart7422814,
        ["7422804"] = self.OnSubStart7422804,
        ["7422816"] = self.OnSubStart7422816,
        ["7422806"] = self.OnSubStart7422806,
        ["7422815"] = self.OnSubStart7422815,
        ["7422812"] = self.OnSubStart7422812,
        ["7422807"] = self.OnSubStart7422807,
        ["7422809"] = self.OnSubStart7422809,
        ["7422805"] = self.OnSubStart7422805,
        ["7422808"] = self.OnSubStart7422808,
        ["7422817"] = self.OnSubStart7422817,
        ["7422810"] = self.OnSubStart7422810
    }
end

function Quest74228:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422801"] = self.OnSubFinish7422801,
        ["7422802"] = self.OnSubFinish7422802,
        ["7422818"] = self.OnSubFinish7422818,
        ["7422803"] = self.OnSubFinish7422803,
        ["7422811"] = self.OnSubFinish7422811,
        ["7422813"] = self.OnSubFinish7422813,
        ["7422814"] = self.OnSubFinish7422814,
        ["7422804"] = self.OnSubFinish7422804,
        ["7422816"] = self.OnSubFinish7422816,
        ["7422806"] = self.OnSubFinish7422806,
        ["7422815"] = self.OnSubFinish7422815,
        ["7422812"] = self.OnSubFinish7422812,
        ["7422807"] = self.OnSubFinish7422807,
        ["7422809"] = self.OnSubFinish7422809,
        ["7422805"] = self.OnSubFinish7422805,
        ["7422808"] = self.OnSubFinish7422808,
        ["7422817"] = self.OnSubFinish7422817,
        ["7422810"] = self.OnSubFinish7422810
    }
end

function Quest74228:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7422807"] = self.OnSubFailed7422807}
end

function Quest74228:Start()
    print("Start")
end

function Quest74228:OnDestroy()
    print("OnDestroy")
end

function Quest74228:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74228:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74228:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74228:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7422801Trigger", nil)
    this:ActorDestroy("Q7422802TalkTrigger", nil)
    this:ActorDestroy("Q7422807TalkTrigger", nil)
    this:ActorDestroy("Q7422807KaiChe1", nil)
    this:ActorDestroy("Q7422807KaiChe2", nil)
    this:ActorDestroy("Q7422809TalkTrigger", nil)
    this:ActorDestroy("Q7422802_TalkTrigger", nil)
    this:ActorDestroy("Q7422806_TalkTrigger", nil)
    this:ActorDestroy("Q7422804_TalkTrigger", nil)
    this:ActorDestroy("Q7422809_DeleteNpc", nil)
    this:ActorDestroy("Q7422804_NoBlack", nil)
    this:ActorDestroy("Q7422802_PreTalkTrigger", nil)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
end

function Quest74228:ActorDestroy(arg1, arg2)
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

function Quest74228:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74228:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest74228:OnSubStart7422801(arg1)
    print("OnSubStart7422801")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7422801Trigger", "Actor/Gadget/Q7422801Trigger", 70900002, 0, points._Q7422801TriggerPoint_.pos, points._Q7422801TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:GetQuestNpcActor(npcs.Npc16473.alias, 74228):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest74228:OnSubFinish7422801(arg1)
    print("OnSubFinish7422801")
end

function Quest74228:OnSubStart7422802(arg1)
    print("OnSubStart7422802")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16473.alias, 74228):DoFreeStyle(1280, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7422802_PreTalkTrigger", "Actor/Gadget/Q7422802_PreTalkTrigger", 70900002, 0, points._Q7422802_PreTalkTriggerPoint_.pos, points._Q7422802_PreTalkTriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest74228:OnSubFinish7422802(arg1)
    print("OnSubFinish7422802")
    this:ClearNarratorTask()
end

function Quest74228:OnSubStart7422818(arg1)
    print("OnSubStart7422818")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16473.alias, 74228):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest74228:OnSubFinish7422818(arg1)
    print("OnSubFinish7422818")
end

function Quest74228:OnSubStart7422803(arg1)
    print("OnSubStart7422803")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16473.alias, 74228):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest74228:OnSubFinish7422803(arg1)
    print("OnSubFinish7422803")
end

function Quest74228:OnSubStart7422811(arg1)
    print("OnSubStart7422811")
end

function Quest74228:OnSubFinish7422811(arg1)
    print("OnSubFinish7422811")
    this:QuestNarratorTask(datas.NarratorWithId_7422804, nil)
    this:CallDelayByQuest("7422811Delay", 5, function(arg1)
        actorUtils.FinishQuestID(false, 7422803)
    end)
end

function Quest74228:OnSubStart7422813(arg1)
    print("OnSubStart7422813")
end

function Quest74228:OnSubFinish7422813(arg1)
    print("OnSubFinish7422813")
    this:QuestNarratorTask(datas.NarratorWithId_7422802, nil)
end

function Quest74228:OnSubStart7422814(arg1)
    print("OnSubStart7422814")
end

function Quest74228:OnSubFinish7422814(arg1)
    print("OnSubFinish7422814")
    this:QuestNarratorTask(datas.NarratorWithId_7422803, nil)
end

function Quest74228:OnSubStart7422804(arg1)
    print("OnSubStart7422804")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16178.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16473.alias, 74228):DoFreeStyle(1070, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7422804_TalkTrigger", "Actor/Gadget/Q7422804_TalkTrigger", 70900002, 0, points._Q7422804_TalkTriggerPoint_.pos, points._Q7422804_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest74228:OnSubFinish7422804(arg1)
    print("OnSubFinish7422804")
    this:NpcDestroyImmediately(3, npcs.Npc16473.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16178.alias)
    this:ClearNarratorTask()
end

function Quest74228:OnSubStart7422816(arg1)
    print("OnSubStart7422816")
end

function Quest74228:OnSubFinish7422816(arg1)
    print("OnSubFinish7422816")
end

function Quest74228:OnSubStart7422806(arg1)
    print("OnSubStart7422806")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5084.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5309.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16163.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5307.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5306.id, 0, false, 0)
    this:NotifyTo(npcs.Npc5044.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7422806_TalkTrigger", "Actor/Gadget/Q7422806_TalkTrigger", 70900002, 0, points._Q7422806_TalkTriggerPoint_.pos, points._Q7422806_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest74228:OnSubFinish7422806(arg1)
    print("OnSubFinish7422806")
    this:NpcDestroyImmediately(3, npcs.Npc16473.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5084.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5309.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16163.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5307.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5306.alias)
end

function Quest74228:OnSubStart7422815(arg1)
    print("OnSubStart7422815")
    this:CreateQuestNpc(arg1, npcs.Npc16473.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5083.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5084.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16163.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5309.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5307.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5306.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc5083.alias, 74228):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5084.alias, 74228):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5044.alias, 1, true)
end

function Quest74228:OnSubFinish7422815(arg1)
    print("OnSubFinish7422815")
    this:NpcDestroyImmediately(3, npcs.Npc16473.alias)
    this:GetQuestNpcActor(npcs.Npc5083.alias, 74228):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5084.alias, 74228):DisableInteeHeadCtrl(false)
    this:NpcDestroyImmediately(3, npcs.Npc5083.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5084.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16163.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5309.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5307.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5306.alias)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
end

function Quest74228:OnSubStart7422812(arg1)
    print("OnSubStart7422812")
end

function Quest74228:OnSubFinish7422812(arg1)
    print("OnSubFinish7422812")
    this:TransmitPlayerWithQuestIdByData(7422815, 1, datas.TransmitToMoMang, nil, nil, nil)
end

function Quest74228:OnSubStart7422807(arg1)
    print("OnSubStart7422807")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNoBlackData(7422807, 1, npcs.Npc1076.id, 0, 37.5, 7422809, datas.NoBlackData_7422807)
        this:CreateQuestNpc(arg1, npcs.Npc5083.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5084.id, 0, false, 0)
        this:DeployStoryByQuest(147422801)
    end)
end

function Quest74228:OnSubFinish7422807(arg1)
    print("OnSubFinish7422807")
    this:NpcDestroyImmediately(1083, npcs.Npc1076.alias)
    this:NpcDestroyImmediately(1083, npcs.Npc5083.alias)
    this:NpcDestroyImmediately(1083, npcs.Npc5084.alias)
    this:CancelStoryByQuest(147422801)
    this:ClearNarratorTask()
end

function Quest74228:OnSubFailed7422807(arg1)
    print("OnSubFailed7422807")
    this:CancelStoryByQuest(147422801)
    this:DestroyQuestTrigger("Q7422807N1076Trigger", false)
    this:NpcDestroyImmediately(1083, npcs.Npc1076.alias)
end

function Quest74228:OnSubStart7422809(arg1)
    print("OnSubStart7422809")
    this:CreateQuestNpcWithTriggerBlackEx("Q7422809TalkTrigger", 7422809, npcs.Npc5325.id, 0, 6, 0.5, 0.5, 0.5, 2)
end

function Quest74228:OnSubFinish7422809(arg1)
    print("OnSubFinish7422809")
    this:NpcDestroyImmediately(3, npcs.Npc5325.alias)
    this:DeployStoryByQuest(147422802)
end

function Quest74228:OnSubStart7422805(arg1)
    print("OnSubStart7422805")
end

function Quest74228:OnSubFinish7422805(arg1)
    print("OnSubFinish7422805")
end

function Quest74228:OnSubStart7422808(arg1)
    print("OnSubStart7422808")
    this:ActionSafeCall(nil)
end

function Quest74228:OnSubFinish7422808(arg1)
    print("OnSubFinish7422808")
end

function Quest74228:OnSubStart7422817(arg1)
    print("OnSubStart7422817")
end

function Quest74228:OnSubFinish7422817(arg1)
    print("OnSubFinish7422817")
end

function Quest74228:OnSubStart7422810(arg1)
    print("OnSubStart7422810")
    this:CreateQuestNpc(arg1, npcs.Npc16078.id, 0, false, 0)
end

function Quest74228:OnSubFinish7422810(arg1)
    print("OnSubFinish7422810")
    this:NpcDestroyImmediately(3, npcs.Npc16078.alias)
end

return Quest74228
