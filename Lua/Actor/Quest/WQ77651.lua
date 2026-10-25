require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77651 = class("Quest77651", QuestActorProxy)
Quest77651.defaultAlias = "Quest77651"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77651:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77651:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765101"] = self.OnSubStart7765101,
        ["7765102"] = self.OnSubStart7765102,
        ["7765105"] = self.OnSubStart7765105,
        ["7765108"] = self.OnSubStart7765108,
        ["7765103"] = self.OnSubStart7765103,
        ["7765104"] = self.OnSubStart7765104,
        ["7765106"] = self.OnSubStart7765106,
        ["7765107"] = self.OnSubStart7765107
    }
end

function Quest77651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765101"] = self.OnSubFinish7765101,
        ["7765102"] = self.OnSubFinish7765102,
        ["7765105"] = self.OnSubFinish7765105,
        ["7765108"] = self.OnSubFinish7765108,
        ["7765103"] = self.OnSubFinish7765103,
        ["7765104"] = self.OnSubFinish7765104,
        ["7765106"] = self.OnSubFinish7765106,
        ["7765107"] = self.OnSubFinish7765107
    }
end

function Quest77651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7765105"] = self.OnSubFailed7765105}
end

function Quest77651:Start()
    print("Start")
end

function Quest77651:OnDestroy()
    print("OnDestroy")
end

function Quest77651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77651:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77651:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77651Trigger", 77651)
    this:ActorDestroy("Q77651Trigger_3", 77651)
    this:ActorDestroy("Q77651Trigger_1", 77651)
end

function Quest77651:ActorDestroy(arg1, arg2)
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

function Quest77651:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77651:OnSubStart7765101(arg1)
    print("OnSubStart7765101")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 77651):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q77651Trigger", "Actor/Gadget/Q77651Trigger", 70900002, 0, points._Q77651TriggerPoint_.pos, points._Q77651TriggerPoint_.rot, true, false, 3, nil, 0, 77651)
end

function Quest77651:OnSubFinish7765101(arg1)
    print("OnSubFinish7765101")
end

function Quest77651:OnSubStart7765102(arg1)
    print("OnSubStart7765102")
    this:GetQuestNpcActor(npcs.Npc1331.alias, 77651):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q77651Trigger_3", "Actor/Gadget/Q77651Trigger_3", 70900002, 0, points._Q77651Trigger_3Point_.pos, points._Q77651Trigger_3Point_.rot, true, false, 3, nil, 0, 77651)
end

function Quest77651:OnSubFinish7765102(arg1)
    print("OnSubFinish7765102")
end

function Quest77651:OnSubStart7765105(arg1)
    print("OnSubStart7765105")
end

function Quest77651:OnSubFinish7765105(arg1)
    print("OnSubFinish7765105")
end

function Quest77651:OnSubFailed7765105(arg1)
    print("OnSubFailed7765105")
    this:RecycleAllRes()
end

function Quest77651:OnSubStart7765108(arg1)
    print("OnSubStart7765108")
    this:DestroyQuestNpcActor(npcs.Npc1331.alias, 3)
end

function Quest77651:OnSubFinish7765108(arg1)
    print("OnSubFinish7765108")
end

function Quest77651:OnSubStart7765103(arg1)
    print("OnSubStart7765103")
end

function Quest77651:OnSubFinish7765103(arg1)
    print("OnSubFinish7765103")
end

function Quest77651:OnSubStart7765104(arg1)
    print("OnSubStart7765104")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
end

function Quest77651:OnSubFinish7765104(arg1)
    print("OnSubFinish7765104")
end

function Quest77651:OnSubStart7765106(arg1)
    print("OnSubStart7765106")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 77651):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(147765101)
end

function Quest77651:OnSubFinish7765106(arg1)
    print("OnSubFinish7765106")
end

function Quest77651:OnSubStart7765107(arg1)
    print("OnSubStart7765107")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q77651Trigger_1", "Actor/Gadget/Q77651Trigger_1", 70900002, 0, points._Q77651Trigger_1Point_.pos, points._Q77651Trigger_1Point_.rot, true, false, 3, nil, 0, 77651)
    end)
end

function Quest77651:OnSubFinish7765107(arg1)
    print("OnSubFinish7765107")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
end

return Quest77651
