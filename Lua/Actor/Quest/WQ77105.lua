require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77105 = class("Quest77105", QuestActorProxy)
Quest77105.defaultAlias = "Quest77105"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77105:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710501"] = self.OnSubStart7710501,
        ["7710502"] = self.OnSubStart7710502,
        ["7710503"] = self.OnSubStart7710503,
        ["7710505"] = self.OnSubStart7710505,
        ["7710506"] = self.OnSubStart7710506,
        ["7710504"] = self.OnSubStart7710504,
        ["7710507"] = self.OnSubStart7710507
    }
end

function Quest77105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710501"] = self.OnSubFinish7710501,
        ["7710502"] = self.OnSubFinish7710502,
        ["7710503"] = self.OnSubFinish7710503,
        ["7710505"] = self.OnSubFinish7710505,
        ["7710506"] = self.OnSubFinish7710506,
        ["7710504"] = self.OnSubFinish7710504,
        ["7710507"] = self.OnSubFinish7710507
    }
end

function Quest77105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7710502"] = self.OnSubFailed7710502,
        ["7710505"] = self.OnSubFailed7710505,
        ["7710506"] = self.OnSubFailed7710506
    }
end

function Quest77105:Start()
    print("Start")
end

function Quest77105:OnDestroy()
    print("OnDestroy")
end

function Quest77105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77105:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7710501Trigger", 0)
    this:ActorDestroy("Q7710501Trigger_1", 77105)
    this:ActorDestroy("Q7710501Trigger_2", 77105)
end

function Quest77105:ActorDestroy(arg1, arg2)
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

function Quest77105:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77105:OnSubStart7710501(arg1)
    print("OnSubStart7710501")
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:CallDelayByQuest("", 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q7710501Trigger", "Actor/Gadget/Q7710501Trigger", 70900002, 0, points._Q7710501TriggerPoint_.pos, points._Q7710501TriggerPoint_.rot, true, false, 3, nil, 0, 0)
        actorMgr:CreateActorWithPos("Q7710501Trigger_2", "Actor/Gadget/Q7710501Trigger_2", 70900002, 0, points._Q7710501Trigger_2Point_.pos, points._Q7710501Trigger_2Point_.rot, true, false, 3, nil, 0, 77105)
        actorMgr:CreateActorWithPos("Q7710501Trigger_3", "Actor/Gadget/Q7710501Trigger_3", 70900002, 0, points._Q7710501Trigger_3Point_.pos, points._Q7710501Trigger_3Point_.rot, true, false, 3, nil, 0, 77105)
        actorMgr:CreateActorWithPos("Q7710501Trigger_4", "Actor/Gadget/Q7710501Trigger_4", 70900002, 0, points._Q7710501Trigger_4Point_.pos, points._Q7710501Trigger_4Point_.rot, true, false, 3, nil, 0, 77105)
        actorMgr:CreateActorWithPos("Q7710501Trigger_5", "Actor/Gadget/Q7710501Trigger_5", 70900002, 0, points._Q7710501Trigger_5Point_.pos, points._Q7710501Trigger_5Point_.rot, true, false, 3, nil, 0, 77105)
    end)
end

function Quest77105:OnSubFinish7710501(arg1)
    print("OnSubFinish7710501")
    this:ActorDestroy("Q7710501Trigger", nil)
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData, nil, nil, nil)
end

function Quest77105:OnSubStart7710502(arg1)
    print("OnSubStart7710502")
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    self:EnterCombatSneakMode(25)
    this:EnterSceneLookCamera({x = 8439.212, y = 444.053, z = 6159.487}, 0, 3, true, false)
    this:QuestNarratorTask(datas.NarratorWithId_7710502, nil)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest77105:OnSubFinish7710502(arg1)
    print("OnSubFinish7710502")
    this:SafeDestroyQuestNpc(npcs.Npc7653.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    self:ExitCombatSneakMode()
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil)
        globalActor:ResumePaimonInProfilePage({3})
    end, nil, nil)
end

function Quest77105:OnSubFailed7710502(arg1)
    print("OnSubFailed7710502")
    this:RecycleAllRes()
    self:ExitCombatSneakMode()
end

function Quest77105:OnSubStart7710503(arg1)
    print("OnSubStart7710503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710503, 0, 15, 0.5, npcs.Npc22361.id)
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
end

function Quest77105:OnSubFinish7710503(arg1)
    print("OnSubFinish7710503")
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7653.alias, 3)
    if this:GetSubQuestState(7713107) < 3 then
        this:SetNavigationByMainId(77131, true)
    end
end

function Quest77105:OnSubStart7710505(arg1)
    print("OnSubStart7710505")
end

function Quest77105:OnSubFinish7710505(arg1)
    print("OnSubFinish7710505")
end

function Quest77105:OnSubFailed7710505(arg1)
    print("OnSubFailed7710505")
    this:TransmitPlayerByData(arg1, 7, datas.TransmitData, nil, nil, nil)
    this:AfterMainPageActiveSafeCall(nil, nil)
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest77105:OnSubStart7710506(arg1)
    print("OnSubStart7710506")
end

function Quest77105:OnSubFinish7710506(arg1)
    print("OnSubFinish7710506")
end

function Quest77105:OnSubFailed7710506(arg1)
    print("OnSubFailed7710506")
    this:RecycleAllRes()
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest77105:OnSubStart7710504(arg1)
    print("OnSubStart7710504")
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
    actorUtils.FinishQuestWithParam({false}, {7710504})
end

function Quest77105:OnSubFinish7710504(arg1)
    print("OnSubFinish7710504")
end

function Quest77105:OnSubStart7710507(arg1)
    print("OnSubStart7710507")
    this:CreateQuestNpc(arg1, npcs.Npc7653.id, 0, false, 0)
    actorUtils.FinishQuestWithParam({false}, {7710507})
end

function Quest77105:OnSubFinish7710507(arg1)
    print("OnSubFinish7710507")
end

return Quest77105
