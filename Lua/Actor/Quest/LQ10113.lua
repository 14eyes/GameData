require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10113 = class("Quest10113", QuestActorProxy)
Quest10113.defaultAlias = "Quest10113"
local NPCUtil = require("Actor/Npc/NPCUtil")

local clientData
local shareData
local npc
local v
local npc2
local triggerData
local jackData
local paimonData

function Quest10113:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    triggerData = clientData.TriggerData
    jackData = clientData.JackData
    paimonData = clientData.PaimonData
    npc = shareData.QuestData["1011301"].npcs[1]
    npc2 = shareData.QuestData["1011301"].npcs[2]
    v = shareData.QuestData["1011305"].npcs[1]
end

function Quest10113:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1011301"] = self.OnSubStart1011301
    self.subStartHandlers["1011302"] = self.OnSubStart1011302
    self.subStartHandlers["1011303"] = self.OnSubStart1011303
    self.subStartHandlers["1011304"] = self.OnSubStart1011304
    self.subStartHandlers["1011305"] = self.OnSubStart1011305
    self.subStartHandlers["1011306"] = self.OnSubStart1011306
end

function Quest10113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1011301"] = self.OnSubFinish1011301
    self.subFinishHandlers["1011302"] = self.OnSubFinish1011302
    self.subFinishHandlers["1011303"] = self.OnSubFinish1011303
    self.subFinishHandlers["1011304"] = self.OnSubFinish1011304
    self.subFinishHandlers["1011305"] = self.OnSubFinish1011305
    self.subFinishHandlers["1011306"] = self.OnSubFinish1011306
end

function Quest10113:StanlyBubble()
    print("StanlyBubble")
    if math.random(1, 2) == 1 then
        self:CreateSpeechBubbleTask(141101, 101130101, 3, false)
    else
        self:CreateSpeechBubbleTask(141101, 101130102, 3, false)
    end

    local subQuestState = self:GetSubQuestState(1011304)
    print("quest state is:" .. subQuestState)
    if subQuestState == 2 then
    else
        self:StanlyBubbleGap()
    end
end

function Quest10113:StanlyBubbleGap()
    print("StanlyBubbleGap")
    self:CallDelay(5, self.StanlyBubble)
end

function Quest10113:OnSubStart1011300(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
    local actor = actorMgr:GetActor("Q10113Trigger2")
    if actor ~= nil then
        actor:Destroy(false)
    end
end

function Quest10113:OnSubStart1011301(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q10113Trigger2", "Actor/Gadget/Q10113Trigger2", 70900002, 0, sceneData:GetDummyPoint(1009, "Q466Diluc2").pos, sceneData:GetDummyPoint(1009, "Q466Diluc2").rot, true, false, 1009, true, 1)
end

function Quest10113:OnSubStart1011302(arg1)
    print("1011302 start:Creat Trigger")
    self:StanlyBubble()
    actorMgr:CreateActorWithPos(triggerData.alias, triggerData.script, triggerData.id, 0, triggerData.pos, triggerData.dir, true, false, 1009)
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end

    self:NotifyTo("Npc1248", NPCUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npc.ID, 2)
    self:CreateQuestNpc(arg1, npc2.ID, 3)
    local questNpcActor = self:GetQuestNpcActor(npc.alias)
    if questNpcActor ~= nil then
        questNpcActor:SitOnChair(8065)
    end

    local v = self:GetQuestNpcActor(npc2.alias)
    if v ~= nil then
        v:DoFreeStyle(1230)
    end
end

function Quest10113:OnSubFinish1011302(arg1)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({v.alias})
    self:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
        arg1_2:RequestInteraction(npc.alias)
        arg1_2:CreateQuestNpc(arg1, v.id)
    end, questNpcCreateTask)
end

function Quest10113:OnSubStart1011303(arg1) end

function Quest10113:OnSubFinish1011303(arg1)
    local questNpcActor = self:GetQuestNpcActor(v.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(paimonData.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:DestroyWithDisappear(false)
    end
end

function Quest10113:OnSubStart1011304(arg1)
    print("1011302 start:Creat NPC & Sit")
    self:UnCallFunc(self.StanlyBubble)
    self:ClearSpeechBubbleTask()
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end

    self:NotifyTo("Npc1248", NPCUtil.NpcEventType.HIDESELF, true)
    if self:GetQuestVar(1011304, 0) == 2 then
        local questNpcActor = self:GetQuestNpcActor(npc.alias)
        if questNpcActor ~= nil then
            questNpcActor:SitOnChair(8060)
        end

        local v = self:GetQuestNpcActor(npc2.alias)
        if v ~= nil then
            v:DoFreeStyle(1230)
        end
    end
end

function Quest10113:OnSubFinish1011304(arg1)
    local questNpcActor = self:GetQuestNpcActor(v.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npc.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor(jackData.alias)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end

    local questNpcActor4 = self:GetQuestNpcActor(paimonData.alias)
    if questNpcActor4 ~= nil then
        questNpcActor4:DestroyWithDisappear(false)
    end

    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.STARTDAILY, true)
    end

    self:NotifyTo("Npc1248", NPCUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.STARTDAILY, true)
end

function Quest10113:OnSubStart1011305(arg1)
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end

    self:NotifyTo("Npc1248", NPCUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1230)
    end

    self:CreateQuestNpc(arg1, v.ID, 1)
    local questNpcActor2 = self:GetQuestNpcActor(v.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:SitOnChair(8010)
    end
end

function Quest10113:OnSubFinish1011305(arg1)
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self.NotifyTo(self, mengdeNpcListPublic[i], NPCUtil.NpcEventType.STARTDAILY, true)
    end

    self.NotifyTo(self, "Npc1248", NPCUtil.NpcEventType.STARTDAILY, true)
    self.NotifyTo(self, "Npc1411", NPCUtil.NpcEventType.STARTDAILY, true)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(paimonData.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest10113:OnSubStart1011306(arg1)
    self.ActionSafeCall(self, function()
        self:PlayCutsceneIndex(101130601, function()
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 1011306)
            end
        end, nil, nil, true)
    end)
end

function Quest10113:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        self.CallDelay(self, 1, function()
            local questNpcActor = self:GetQuestNpcActor(npc.alias)
            if questNpcActor ~= nil then
                questNpcActor:StandFromChair()
            end
        end)
    end
end

function Quest10113:Start() end
function Quest10113:OnDestroy() end
return Quest10113
