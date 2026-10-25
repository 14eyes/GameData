require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76090 = class("Quest76090", QuestActorProxy)
Quest76090.defaultAlias = "Quest76090"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76090:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76090:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609001"] = self.OnSubStart7609001,
        ["7609011"] = self.OnSubStart7609011,
        ["7609003"] = self.OnSubStart7609003,
        ["7609004"] = self.OnSubStart7609004,
        ["7609009"] = self.OnSubStart7609009,
        ["7609002"] = self.OnSubStart7609002,
        ["7609013"] = self.OnSubStart7609013,
        ["7609005"] = self.OnSubStart7609005,
        ["7609007"] = self.OnSubStart7609007,
        ["7609010"] = self.OnSubStart7609010,
        ["7609008"] = self.OnSubStart7609008,
        ["7609006"] = self.OnSubStart7609006,
        ["7609012"] = self.OnSubStart7609012
    }
end

function Quest76090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609001"] = self.OnSubFinish7609001,
        ["7609011"] = self.OnSubFinish7609011,
        ["7609003"] = self.OnSubFinish7609003,
        ["7609004"] = self.OnSubFinish7609004,
        ["7609009"] = self.OnSubFinish7609009,
        ["7609002"] = self.OnSubFinish7609002,
        ["7609013"] = self.OnSubFinish7609013,
        ["7609005"] = self.OnSubFinish7609005,
        ["7609007"] = self.OnSubFinish7609007,
        ["7609010"] = self.OnSubFinish7609010,
        ["7609008"] = self.OnSubFinish7609008,
        ["7609006"] = self.OnSubFinish7609006,
        ["7609012"] = self.OnSubFinish7609012
    }
end

function Quest76090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7609007"] = self.OnSubFailed7609007}
end

function Quest76090:Start()
    print("Start")
end

function Quest76090:OnDestroy()
    print("OnDestroy")
end

function Quest76090:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76090:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76090:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76090:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7609005Trigger")
    this:ActorDestroy("Q7609008Trigger")
    this:ActorDestroy("Q7609012Trigger")
    this:ActorDestroy("Q7609007Trigger")
    this:ActorDestroy("Q7609012Trigger_1")
    this:ActorDestroy("Q7609012Trigger_2")
end

function Quest76090:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76090:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76090:OnSubStart7609001(arg1)
    print("OnSubStart7609001")
    actorMgr:CreateActorWithPos("", "", 70900002, 0, {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest76090:OnSubFinish7609001(arg1)
    print("OnSubFinish7609001")
end

function Quest76090:OnSubStart7609011(arg1)
    print("OnSubStart7609011")
    this:CreateQuestNpc(arg1, npcs.Npc22264.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22264.alias, 76090):DoFreeStyle(4121, true, nil, true, true, false, true)
end

function Quest76090:OnSubFinish7609011(arg1)
    print("OnSubFinish7609011")
    this:NpcDestroyImmediately(3, npcs.Npc22264.alias)
end

function Quest76090:OnSubStart7609003(arg1)
    print("OnSubStart7609003")
end

function Quest76090:OnSubFinish7609003(arg1)
    print("OnSubFinish7609003")
end

function Quest76090:OnSubStart7609004(arg1)
    print("OnSubStart7609004")
end

function Quest76090:OnSubFinish7609004(arg1)
    print("OnSubFinish7609004")
end

function Quest76090:OnSubStart7609009(arg1)
    print("OnSubStart7609009")
end

function Quest76090:OnSubFinish7609009(arg1)
    print("OnSubFinish7609009")
end

function Quest76090:OnSubStart7609002(arg1)
    print("OnSubStart7609002")
end

function Quest76090:OnSubFinish7609002(arg1)
    print("OnSubFinish7609002")
end

function Quest76090:OnSubStart7609013(arg1)
    print("OnSubStart7609013")
end

function Quest76090:OnSubFinish7609013(arg1)
    print("OnSubFinish7609013")
end

function Quest76090:OnSubStart7609005(arg1)
    print("OnSubStart7609005")
end

function Quest76090:OnSubFinish7609005(arg1)
    print("OnSubFinish7609005")
end

function Quest76090:OnSubStart7609007(arg1)
    print("OnSubStart7609007")
    this:CreateQuestNpc(arg1, npcs.Npc22265.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22265.alias, 76090):DoFreeStyle(4210, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7609007Trigger", "Actor/Gadget/Q7609007Trigger", 70900002, 0, points._Q7609007TriggerPoint_.pos, points._Q7609007TriggerPoint_.rot, true, false, 3)
end

function Quest76090:OnSubFinish7609007(arg1)
    print("OnSubFinish7609007")
end

function Quest76090:OnSubFailed7609007(arg1)
    print("OnSubFailed7609007")
    this:ActorDestroy("Q7609007Trigger")
    this:DestroyQuestNpcActor(npcs.Npc22265.alias, 3)
end

function Quest76090:OnSubStart7609010(arg1)
    print("OnSubStart7609010")
end

function Quest76090:OnSubFinish7609010(arg1)
    print("OnSubFinish7609010")
end

function Quest76090:OnSubStart7609008(arg1)
    print("OnSubStart7609008")
    this:PlayCutsceneIndex(7609008, function(arg1)
        actorUtils.FinishQuestID(false, 7609008)
        actorMgr:CreateActorWithPos("Q7609008Trigger", "Actor/Gadget/Q7609008Trigger", 70900002, 0, points._Q7609008TriggerPoint_.pos, points._Q7609008TriggerPoint_.rot, true, false, 3)
    end, nil, nil, false)
end

function Quest76090:OnSubFinish7609008(arg1)
    print("OnSubFinish7609008")
    this:SetNavigationByMainId(76090, true)
end

function Quest76090:OnSubStart7609006(arg1)
    print("OnSubStart7609006")
end

function Quest76090:OnSubFinish7609006(arg1)
    print("OnSubFinish7609006")
    this:SafeDestroyQuestNpc(npcs.Npc22265.alias, 3)
    this:DestroyQuestTrigger("Q7609007Trigger", false)
end

function Quest76090:OnSubStart7609012(arg1)
    print("OnSubStart7609012")
    this:CreateQuestNpc(arg1, npcs.Npc22264.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22265.id, 0, false, 0)
    local questGlobalVar = this:GetQuestGlobalVar(7610104)
    if questGlobalVar == 1 then
        this:CallDelayByQuest("", 8, function(arg1)
            actorMgr:CreateActorWithPos("Q7609012Trigger_2", "Actor/Gadget/Q7609012Trigger_2", 70900002, 0, points._Q7609012Trigger_2Point_.pos, points._Q7609012Trigger_2Point_.rot, true, false, 3)
        end)
    elseif questGlobalVar == 0 then
        this:CallDelayByQuest("", 4, function(arg1)
            actorMgr:CreateActorWithPos("Q7609012Trigger", "Actor/Gadget/Q7609012Trigger", 70900002, 0, points._Q7609012TriggerPoint_.pos, points._Q7609012TriggerPoint_.rot, true, false, 3)
        end)
    end
end

function Quest76090:OnSubFinish7609012(arg1)
    print("OnSubFinish7609012")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc22264.id, 0, false, 0.5, nil)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc22265.id, 0, false, 0.5, nil)
    actorMgr:CreateActorWithPos("Q7609012Trigger_1", "Actor/Gadget/Q7609012Trigger_1", 70900002, 0, points._Q7609012Trigger_1Point_.pos, points._Q7609012Trigger_1Point_.rot, true, false, 3)
end

return Quest76090
