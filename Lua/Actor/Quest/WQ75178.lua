require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75178 = class("Quest75178", QuestActorProxy)
Quest75178.defaultAlias = "Quest75178"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75178:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75178:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517801"] = self.OnSubStart7517801,
        ["7517812"] = self.OnSubStart7517812,
        ["7517802"] = self.OnSubStart7517802,
        ["7517811"] = self.OnSubStart7517811,
        ["7517803"] = self.OnSubStart7517803,
        ["7517804"] = self.OnSubStart7517804,
        ["7517814"] = self.OnSubStart7517814,
        ["7517809"] = self.OnSubStart7517809,
        ["7517805"] = self.OnSubStart7517805,
        ["7517808"] = self.OnSubStart7517808,
        ["7517806"] = self.OnSubStart7517806,
        ["7517807"] = self.OnSubStart7517807
    }
end

function Quest75178:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517801"] = self.OnSubFinish7517801,
        ["7517812"] = self.OnSubFinish7517812,
        ["7517802"] = self.OnSubFinish7517802,
        ["7517811"] = self.OnSubFinish7517811,
        ["7517803"] = self.OnSubFinish7517803,
        ["7517804"] = self.OnSubFinish7517804,
        ["7517814"] = self.OnSubFinish7517814,
        ["7517809"] = self.OnSubFinish7517809,
        ["7517805"] = self.OnSubFinish7517805,
        ["7517808"] = self.OnSubFinish7517808,
        ["7517806"] = self.OnSubFinish7517806,
        ["7517807"] = self.OnSubFinish7517807
    }
end

function Quest75178:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75178:Start()
    print("Start")
end

function Quest75178:OnDestroy()
    print("OnDestroy")
end

function Quest75178:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75178:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75178:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75178:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7517813Trigger1")
    this:ActorDestroy("Q7517807Trigger2")
end

function Quest75178:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75178:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75178:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75178:OnSubStart7517801(arg1)
    print("OnSubStart7517801")
    this:CreateQuestNpc(arg1, npcs.Npc6329.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(4412, true, nil, true, true, false, false)
end

function Quest75178:OnSubFinish7517801(arg1)
    print("OnSubFinish7517801")
end

function Quest75178:OnSubStart7517812(arg1)
    print("OnSubStart7517812")
    this:CreateQuestNpc(arg1, npcs.Npc6329.id, 0, false, 0)
end

function Quest75178:OnSubFinish7517812(arg1)
    print("OnSubFinish7517812")
end

function Quest75178:OnSubStart7517802(arg1)
    print("OnSubStart7517802")
    this:CreateQuestNpc(arg1, npcs.Npc6335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6344.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6350.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6425.id, 0, false, 0)
end

function Quest75178:OnSubFinish7517802(arg1)
    print("OnSubFinish7517802")
end

function Quest75178:OnSubStart7517811(arg1)
    print("OnSubStart7517811")
    this:CreateQuestNpc(arg1, npcs.Npc6335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6344.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6350.id, 0, false, 0)
end

function Quest75178:OnSubFinish7517811(arg1)
    print("OnSubFinish7517811")
end

function Quest75178:OnSubStart7517803(arg1)
    print("OnSubStart7517803")
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6425.id, 0, false, 0)
end

function Quest75178:OnSubFinish7517803(arg1)
    print("OnSubFinish7517803")
    actorMgr:CreateActorWithPos("Q7517813Trigger1", "Actor/Gadget/Q7517813Trigger1", 70900002, 0, points._Q7517813Trigger1Point_.pos, points._Q7517813Trigger1Point_.rot, true, false, 3)
end

function Quest75178:OnSubStart7517804(arg1)
    print("OnSubStart7517804")
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6344.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6350.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6425.id, 0, false, 0)
end

function Quest75178:OnSubFinish7517804(arg1)
    print("OnSubFinish7517804")
    this:RequestInteraction(npcs.Npc6425.alias, "", true)
end

function Quest75178:OnSubStart7517814(arg1)
    print("OnSubStart7517814")
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:NpcDestroyImmediately(3, npcs.Npc6425.alias)
end

function Quest75178:OnSubFinish7517814(arg1)
    print("OnSubFinish7517814")
end

function Quest75178:OnSubStart7517809(arg1)
    print("OnSubStart7517809")
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc6344.alias, "", true)
end

function Quest75178:OnSubFinish7517809(arg1)
    print("OnSubFinish7517809")
end

function Quest75178:OnSubStart7517805(arg1)
    print("OnSubStart7517805")
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21830.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21830.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21831.alias, 75178):DoFreeStyle(1001, true, nil, true, true, true, true)
end

function Quest75178:OnSubFinish7517805(arg1)
    print("OnSubFinish7517805")
    this:CreateQuestNpc(arg1, npcs.Npc21831.id, 0, false, 0)
end

function Quest75178:OnSubStart7517808(arg1)
    print("OnSubStart7517808")
    this:CreateQuestNpc(arg1, npcs.Npc21830.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21830.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21832.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6350.id, 0, false, 0)
end

function Quest75178:OnSubFinish7517808(arg1)
    print("OnSubFinish7517808")
    this:SafeDestroyQuestNpc(npcs.Npc21831.alias, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21832.id, 0, false, 0)
end

function Quest75178:OnSubStart7517806(arg1)
    print("OnSubStart7517806")
    this:GetQuestNpcActor(npcs.Npc6335.alias, 75178):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21831.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21831.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21832.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21832.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21830.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21830.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
end

function Quest75178:OnSubFinish7517806(arg1)
    print("OnSubFinish7517806")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6335.alias)
    this:CreateQuestNpc(arg1, npcs.Npc6350.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6425.id, 0, false, 0)
end

function Quest75178:OnSubStart7517807(arg1)
    print("OnSubStart7517807")
    this:CreateQuestNpc(arg1, npcs.Npc6344.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21830.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21830.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21831.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21831.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21832.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21832.alias, 75178):DoFreeStyle(1001, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc6425.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc6425.alias, "", true)
end

function Quest75178:OnSubFinish7517807(arg1)
    print("OnSubFinish7517807")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6344.alias)
    this:LightNotifyTo(npcs.Npc6344.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc6350.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21830.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21831.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21832.alias, 3)
    this:NpcDestroyImmediately(3, npcs.Npc6425.alias)
    this:NpcDestroyImmediately(3, npcs.Npc6335.alias)
end

return Quest75178
