require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest398 = class("Quest398", QuestActorProxy)
Quest398.defaultAlias = "Quest398"
local NPCUtil = require("Actor/Npc/NPCUtil")

local clientData
local shareData
local playerData
local paimonData
local npc
local v
local npc2
local npc3
local npc4
local npc5
local npc6
local npc7

function Quest398:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    npc = shareData.QuestData["39801"].npcs[1]
    v = shareData.QuestData["39805"].npcs[1]
    npc2 = shareData.QuestData["39805"].npcs[2]
    npc3 = shareData.QuestData["39805"].npcs[3]
    npc4 = shareData.QuestData["39807"].npcs[8]
    npc5 = shareData.QuestData["39810"].npcs[1]
    npc6 = shareData.QuestData["39801"].npcs[3]
    npc7 = shareData.QuestData["39801"].npcs[4]
end

function Quest398:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39801"] = self.OnSubStart39801
    self.subStartHandlers["39802"] = self.OnSubStart39802
    self.subStartHandlers["39803"] = self.OnSubStart39803
    self.subStartHandlers["39804"] = self.OnSubStart39804
    self.subStartHandlers["39805"] = self.OnSubStart39805
    self.subStartHandlers["39806"] = self.OnSubStart39806
    self.subStartHandlers["39807"] = self.OnSubStart39807
    self.subStartHandlers["39808"] = self.OnSubStart39808
    self.subStartHandlers["39809"] = self.OnSubStart39809
    self.subStartHandlers["39810"] = self.OnSubStart39810
    self.subStartHandlers["39811"] = self.OnSubStart39811
    self.subStartHandlers["39812"] = self.OnSubStart39812
    self.subStartHandlers["39813"] = self.OnSubStart39813
    self.subStartHandlers["39814"] = self.OnSubStart39814
    self.subStartHandlers["39815"] = self.OnSubStart39815
end

function Quest398:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39801"] = self.OnSubFinish39801
    self.subFinishHandlers["39802"] = self.OnSubFinish39802
    self.subFinishHandlers["39803"] = self.OnSubFinish39803
    self.subFinishHandlers["39804"] = self.OnSubFinish39804
    self.subFinishHandlers["39805"] = self.OnSubFinish39805
    self.subFinishHandlers["39806"] = self.OnSubFinish39806
    self.subFinishHandlers["39807"] = self.OnSubFinish39807
    self.subFinishHandlers["39808"] = self.OnSubFinish39808
    self.subFinishHandlers["39809"] = self.OnSubFinish39809
    self.subFinishHandlers["39810"] = self.OnSubFinish39810
    self.subFinishHandlers["39811"] = self.OnSubFinish39811
    self.subFinishHandlers["39812"] = self.OnSubFinish39812
    self.subFinishHandlers["39813"] = self.OnSubFinish39813
    self.subFinishHandlers["39814"] = self.OnSubFinish39814
    self.subFinishHandlers["39815"] = self.OnSubFinish39815
end

function Quest398:RepeatCheckSit398()
    print("CheckSitPos398")
    Quest398:CallOnAvatarSit(Quest398.CheckSitPos398)
end

function Quest398:CheckSitPos398()
    local pos = sceneData:GetDummyPoint(3, "Q39808SitCheck").pos
    local avatarPos = actorUtils.GetAvatarPos()
    print(pos.x - avatarPos.x)
    print(pos.z - avatarPos.z)
    if math.abs(pos.x - avatarPos.x) < 1 then
        if math.abs(pos.z - avatarPos.z) < 1 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 39808)
            end
        end
    else
        Quest398:CallOnAvatarStand(Quest398.RepeatCheckSit398)
    end
end

function Quest398:CreatNPCBehavior398()
    local questNpcActor = self:GetQuestNpcActor(npc7.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1180)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npc6.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:DoFreeStyle(1190)
    end

    local questNpcActor3 = self:GetQuestNpcActor(npc5.alias)
    local subQuestState = self:GetSubQuestState(39811)
    if subQuestState == 2 or subQuestState == 3 then
        if questNpcActor3 ~= nil then
            questNpcActor3:DoFreeStyle(1020)
        end
    elseif questNpcActor3 ~= nil then
        questNpcActor3:DoFreeStyle(1240)
    end

    self:NotifyTo("Npc1441", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1409", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1461", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1429", NPCUtil.NpcEventType.HIDESELF, true)
    self:CreateSpeechBubbleTask(v.id, 3980411, 4, true, 1, 10)
    self:CreateSpeechBubbleTask(npc2.id, 3980305, 4, true, 1, 10)
    self:CreateSpeechBubbleTask(npc3.id, 3980205, 4, true, 1, 10)
    local questNpcActor4 = self:GetQuestNpcActor(v.alias)
    if questNpcActor4 ~= nil then
        questNpcActor4:DoFreeStyle(1120)
    end

    local questNpcActor5 = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor5 ~= nil then
        questNpcActor5:DoFreeStyle(1240)
    end

    local questNpcActor6 = self:GetQuestNpcActor(npc3.alias)
    if questNpcActor6 ~= nil then
        questNpcActor6:DoFreeStyle(4000)
    end
end

function Quest398:OnSubFinish39815(arg1)
    print("39815 finish ")
    local questNpcActor = self:GetQuestNpcActor(npc6.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npc7.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor(v.alias)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end

    local questNpcActor4 = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor4 ~= nil then
        questNpcActor4:Destroy(false)
    end

    local questNpcActor5 = self:GetQuestNpcActor(npc3.alias)
    if questNpcActor5 ~= nil then
        questNpcActor5:Destroy(false)
    end

    local questNpcActor6 = self:GetQuestNpcActor(npc5.alias)
    if questNpcActor6 ~= nil then
        questNpcActor6:Destroy(false)
    end
end

function Quest398:OnSubStart39801(arg1)
    print("39801 start ")
    self:CreateQuestNpc(arg1, npc7.id)
    self:CreateQuestNpc(arg1, npc6.id)
    self:CreateQuestNpc(arg1, npc5.id)
    self:CreateQuestNpc(arg1, npc.id)
    self:CreateQuestNpc(arg1, v.id)
    self:CreateQuestNpc(arg1, npc2.id)
    self:CreateQuestNpc(arg1, npc3.id)
    self:CreatNPCBehavior398()
end

function Quest398:OnSubFinish39801(arg1)
    print("39801 Finish ")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest398:OnSubStart39802(arg1)
    print("39802 start ")
    local questNpcActor
    if self:GetQuestNpcActorNoDummy(npc.alias) ~= nil then
        questNpcActor = self:GetQuestNpcActor(npc.alias)
        questNpcActor.EnableInteraction(questNpcActor, false)
        questNpcActor.RunToTask(questNpcActor, sceneData:GetDummyPoint(3, "Q39801Ambor2").pos, function(arg1)
            questNpcActor:DoFreeStyle(1280)
            questNpcActor:EnableInteraction(true)
        end)
    else
        self:CreateQuestNpc(arg1, npc.id)
        self:GetQuestNpcActor(npc.alias):DoFreeStyle(1280)
    end

    local this = self
    questNpcActor = self.CreatNPCBehavior398
    questNpcActor(this)
end

function Quest398:OnSubStart39803(arg1)
    print("39803 start ")
    if self:GetQuestNpcActorNoDummy(npc.alias) == nil then
        self:CreateQuestNpc(arg1, npc.id)
        self:GetQuestNpcActor(npc.alias):DoFreeStyle(1280)
    end

    self:CreatNPCBehavior398()
end

function Quest398:OnSubStart39804(arg1)
    print("39804 start ")
    if self:GetQuestNpcActorNoDummy(npc.alias) == nil then
        self:CreateQuestNpc(arg1, npc.id)
        self:GetQuestNpcActor(npc.alias):DoFreeStyle(1280)
    end

    self:CreatNPCBehavior398()
end

function Quest398:OnSubStart39807(arg1)
    print("39807 start ")
    if self:GetQuestNpcActorNoDummy(npc.alias) == nil then
        self:CreateQuestNpc(arg1, npc.id)
        self:GetQuestNpcActor(npc.alias):DoFreeStyle(1280)
    end

    self:CreatNPCBehavior398()
    self:CreateQuestNpc(arg1, npc4.id)
end

function Quest398:OnSubFinish39807(arg1)
    print("39807 Finish ")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo("Npc1441", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc1433", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc1443", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc1409", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc1461", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc1429", NPCUtil.NpcEventType.STARTDAILY, true)
        local questNpcActor = arg1:GetQuestNpcActor(npc6.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor(npc7.alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = arg1:GetQuestNpcActor(v.alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        local questNpcActor4 = arg1:GetQuestNpcActor(npc2.alias)
        if questNpcActor4 ~= nil then
            questNpcActor4:Destroy(false)
        end

        local questNpcActor5 = arg1:GetQuestNpcActor(npc3.alias)
        if questNpcActor5 ~= nil then
            questNpcActor5:Destroy(false)
        end

        local questNpcActor6 = arg1:GetQuestNpcActor(npc5.alias)
        if questNpcActor6 ~= nil then
            questNpcActor6:Destroy(false)
        end

        local questNpcActor7 = arg1:GetQuestNpcActor(npc4.alias)
        if questNpcActor7 ~= nil then
            questNpcActor7:Destroy(false)
        end

        local questNpcActor8 = arg1:GetQuestNpcActor(paimonData.alias)
        if questNpcActor8 ~= nil then
            questNpcActor8:DestroyWithDisappear(false)
        end

        local questNpcActor9 = arg1:GetQuestNpcActor(npc.alias)
        if questNpcActor9 ~= nil then
            questNpcActor9.EnableInteraction(questNpcActor9, false)
            questNpcActor9.WalkToRouteTask(questNpcActor9, clientData.Amborrout, function(arg1)
                questNpcActor9:SitOnChair(8010)
                questNpcActor9:EnableInteraction(true)
            end)
        end
    end)
end

function Quest398:OnSubStart39808(arg1)
    print("39808 start ")
    if self:GetQuestNpcActorNoDummy(npc.alias) == nil then
        self:CreateQuestNpc(arg1, npc.id)
        self:GetQuestNpcActor(npc.alias):SitOnChair(8010)
    end

    self:RepeatCheckSit398()
    self:UnSpawn("Q39808SitTarget")
    self:SpawnGadget(arg1, 70300118, 1)
end

function Quest398:OnSubFinish39808(arg1)
    self:UnSpawn("Q39808SitTarget")
end

function Quest398:OnSubStart39809(arg1)
    print("39809 start ")
    self.ShowBlackScreen(self, 0.3, 0.5, 0.3, function()
        self:RequestInteraction(npc.alias)
    end)
end

function Quest398:OnSubFinish39809(arg1)
    print("39809 start ")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npc.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(paimonData.alias)
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest398:OnSubStart39811(arg1)
    print("39811 start ")
    local questNpcActor = self:GetQuestNpcActor(npc5.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1020)
    end
end

function Quest398:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk38801:Finishi Quest 38801")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 39813)
        end
    end

    if arg1 == 2 then
        print("Talk38801:Finishi Quest 38801")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 39816)
        end
    end

    if arg1 == 3 then
        print("Talk38801:Finishi Quest 38801")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 39815)
        end
    end

    if arg1 == 4 then
        print("Talk39809:Player Stand")
    end
end

function Quest398:Start() end
function Quest398:OnDestroy() end
return Quest398
