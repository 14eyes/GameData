require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74141 = class("Quest74141", QuestActorProxy)
Quest74141.defaultAlias = "Quest74141"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74141:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414101"] = self.OnSubStart7414101,
        ["7414102"] = self.OnSubStart7414102,
        ["7414103"] = self.OnSubStart7414103,
        ["7414112"] = self.OnSubStart7414112,
        ["7414104"] = self.OnSubStart7414104,
        ["7414105"] = self.OnSubStart7414105,
        ["7414106"] = self.OnSubStart7414106,
        ["7414107"] = self.OnSubStart7414107,
        ["7414108"] = self.OnSubStart7414108,
        ["7414109"] = self.OnSubStart7414109,
        ["7414110"] = self.OnSubStart7414110,
        ["7414111"] = self.OnSubStart7414111
    }
end

function Quest74141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414101"] = self.OnSubFinish7414101,
        ["7414102"] = self.OnSubFinish7414102,
        ["7414103"] = self.OnSubFinish7414103,
        ["7414112"] = self.OnSubFinish7414112,
        ["7414104"] = self.OnSubFinish7414104,
        ["7414105"] = self.OnSubFinish7414105,
        ["7414106"] = self.OnSubFinish7414106,
        ["7414107"] = self.OnSubFinish7414107,
        ["7414108"] = self.OnSubFinish7414108,
        ["7414109"] = self.OnSubFinish7414109,
        ["7414110"] = self.OnSubFinish7414110,
        ["7414111"] = self.OnSubFinish7414111
    }
end

function Quest74141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74141:Start()
    print("Start")
end

function Quest74141:OnDestroy()
    print("OnDestroy")
end

function Quest74141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74141:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74141:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74141:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74141:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest74141:OnSubStart7414101(arg1)
    print("OnSubStart7414101")
end

function Quest74141:OnSubFinish7414101(arg1)
    print("OnSubFinish7414101")
end

function Quest74141:OnSubStart7414102(arg1)
    print("OnSubStart7414102")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414102(arg1)
    print("OnSubFinish7414102")
    this:GetQuestNpcActor(npcs.PaimonData.alias):NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest74141:OnSubStart7414103(arg1)
    print("OnSubStart7414103")
    this:CreateQuestNpc(arg1, npcs.Npc21147Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414103Trigger", "Actor/Gadget/Q7414103Trigger", 70900002, 0, points.TPos_Q7414103Trigger.pos, points.TPos_Q7414103Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414103(arg1)
    print("OnSubFinish7414103")
end

function Quest74141:OnSubStart7414112(arg1)
    print("OnSubStart7414112")
    actorMgr:CreateActorWithPos("Q7414112Trigger", "Actor/Gadget/Q7414112Trigger", 70900002, 0, points.TPos_Q7414112Trigger.pos, points.TPos_Q7414112Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414112(arg1)
    print("OnSubFinish7414112")
    this:TransmitPlayerUseCustomizedTplByQuestId(7414103, 1, 15)
    this:CallDelayByQuest("", 8, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21147Data.alias, 3)
end

function Quest74141:OnSubStart7414104(arg1)
    print("OnSubStart7414104")
    this:CreateQuestNpc(arg1, npcs.Npc21238Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414104Trigger", "Actor/Gadget/Q7414104Trigger", 70900002, 0, points.TPos_Q7414104Trigger.pos, points.TPos_Q7414104Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414104Triggerfail", "Actor/Gadget/Q7414104Triggerfail", 70900002, 0, points.TPos_Q7414104Triggerfail.pos, points.TPos_Q7414104Triggerfail.rot, true, false, 3)
end

function Quest74141:OnSubFinish7414104(arg1)
    print("OnSubFinish7414104")
    this:NpcDestroyWithDither(npcs.Npc21238Data.alias, 3)
end

function Quest74141:OnSubStart7414105(arg1)
    print("OnSubStart7414105")
    this:CreateQuestNpc(arg1, npcs.Npc21239Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414105Trigger", "Actor/Gadget/Q7414105Trigger", 70900002, 0, points.TPos_Q7414105Trigger.pos, points.TPos_Q7414105Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414105Triggerfail", "Actor/Gadget/Q7414105Triggerfail", 70900002, 0, points.TPos_Q7414105Triggerfail.pos, points.TPos_Q7414105Triggerfail.rot, true, false, 3)
end

function Quest74141:OnSubFinish7414105(arg1)
    print("OnSubFinish7414105")
    this:NpcDestroyWithDither(npcs.Npc21239Data.alias, 3)
end

function Quest74141:OnSubStart7414106(arg1)
    print("OnSubStart7414106")
    this:CreateQuestNpc(arg1, npcs.Npc21240Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414106Trigger", "Actor/Gadget/Q7414106Trigger", 70900002, 0, points.TPos_Q7414106Trigger.pos, points.TPos_Q7414106Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414106Triggerfail", "Actor/Gadget/Q7414106Triggerfail", 70900002, 0, points.TPos_Q7414106Triggerfail.pos, points.TPos_Q7414106Triggerfail.rot, true, false, 3)
end

function Quest74141:OnSubFinish7414106(arg1)
    print("OnSubFinish7414106")
    this:NpcDestroyWithDither(npcs.Npc21240Data.alias, 3)
end

function Quest74141:OnSubStart7414107(arg1)
    print("OnSubStart7414107")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21350Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414107Trigger", "Actor/Gadget/Q7414107Trigger", 70900002, 0, points.TPos_Q7414107Trigger.pos, points.TPos_Q7414107Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7414107Triggerfail", "Actor/Gadget/Q7414107Triggerfail", 70900002, 0, points.TPos_Q7414107Triggerfail.pos, points.TPos_Q7414107Triggerfail.rot, true, false, 3)
end

function Quest74141:OnSubFinish7414107(arg1)
    print("OnSubFinish7414107")
    this:SafeDestroyQuestNpc(npcs.Npc21350Data.alias, 3)
end

function Quest74141:OnSubStart7414108(arg1)
    print("OnSubStart7414108")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414108(arg1)
    print("OnSubFinish7414108")
end

function Quest74141:OnSubStart7414109(arg1)
    print("OnSubStart7414109")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21098Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414109Trigger", "Actor/Gadget/Q7414109Trigger", 70900002, 0, points.TPos_Q7414109Trigger.pos, points.TPos_Q7414109Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414109(arg1)
    print("OnSubFinish7414109")
end

function Quest74141:OnSubStart7414110(arg1)
    print("OnSubStart7414110")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414110(arg1)
    print("OnSubFinish7414110")
    this:NpcCreateWithNpcTrigger(npcs.PaimonData.id, 7414110, 0, 0)
    this:TransmitPlayerUseCustomizedTplByQuestId(7414111, 1, 15)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21048Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21098Data.alias, 3)
end

function Quest74141:OnSubStart7414111(arg1)
    print("OnSubStart7414111")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
    actorMgr:CreateActorWithPos("Q7414111Trigger", "Actor/Gadget/Q7414111Trigger", 70900002, 0, points.TPos_Q7414111Trigger.pos, points.TPos_Q7414111Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74141:OnSubFinish7414111(arg1)
    print("OnSubFinish7414111")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

return Quest74141
