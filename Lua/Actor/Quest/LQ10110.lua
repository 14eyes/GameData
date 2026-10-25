require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10110 = class("Quest10110", QuestActorProxy)
Quest10110.defaultAlias = "Quest10110"
local NPCUtil = require("Actor/Npc/NPCUtil")

local clientData
local shareData
local playerData
local paimonData
local wendyData
local npc
local v
local npc2
local npc3
local npc4
local phantomNoraData
local phantomGuardianData
local phantomQinData
local narratorData
local triggerData
local gadget
local npc5
local n = 1

function Quest10110:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    wendyData = clientData.WendyData
    phantomNoraData = clientData.PhantomNoraData
    phantomGuardianData = clientData.PhantomGuardianData
    phantomQinData = clientData.PhantomQinData
    npc = shareData.QuestData["1011001"].npcs[1]
    v = shareData.QuestData["1011004"].npcs[1]
    npc2 = shareData.QuestData["1011004"].npcs[2]
    npc3 = shareData.QuestData["1011004"].npcs[3]
    npc4 = shareData.QuestData["1011004"].npcs[4]
    npc5 = shareData.QuestData["1011005"].npcs[1]
    narratorData = clientData.NarratorData
    triggerData = clientData.TriggerData
    gadget = shareData.QuestData["1011002"].gadgets[1]
end

function Quest10110:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1011001"] = self.OnSubStart1011001
    self.subStartHandlers["1011002"] = self.OnSubStart1011002
    self.subStartHandlers["1011003"] = self.OnSubStart1011003
    self.subStartHandlers["1011004"] = self.OnSubStart1011004
    self.subStartHandlers["1011005"] = self.OnSubStart1011005
    self.subStartHandlers["1011006"] = self.OnSubStart1011006
    self.subStartHandlers["1011007"] = self.OnSubStart1011007
    self.subStartHandlers["1011008"] = self.OnSubStart1011008
    self.subStartHandlers["1011009"] = self.OnSubStart1011009
end

function Quest10110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1011001"] = self.OnSubFinish1011001
    self.subFinishHandlers["1011002"] = self.OnSubFinish1011002
    self.subFinishHandlers["1011003"] = self.OnSubFinish1011003
    self.subFinishHandlers["1011004"] = self.OnSubFinish1011004
    self.subFinishHandlers["1011005"] = self.OnSubFinish1011005
    self.subFinishHandlers["1011006"] = self.OnSubFinish1011006
    self.subFinishHandlers["1011007"] = self.OnSubFinish1011007
    self.subFinishHandlers["1011008"] = self.OnSubFinish1011008
    self.subFinishHandlers["1011009"] = self.OnSubFinish1011009
end

function Quest10110:NuoLaShowBubble10110()
    print("NuoLa show bubble:" .. n)
    if n == 1 then
        self:ClearSpeechBubbleTask()
        self:CreateSpeechBubbleTask(npc.id, 101100146, 3, false)
        n = 2
    else
        if n == 2 then
            self:ClearSpeechBubbleTask()
            self:CreateSpeechBubbleTask(npc.id, 101100147, 3, false)
            n = 3
        else
            if n == 3 then
                self:ClearSpeechBubbleTask()
                self:CreateSpeechBubbleTask(npc.id, 101100148, 3, false)
                n = 1
            end
        end
    end

    self:NuoLaBubbleGap10110()
end

function Quest10110:NuoLaBubbleGap10110()
    self:CallDelay(5, self.NuoLaShowBubble10110)
end

function Quest10110:DestoryNPC10110()
    local questNpcActor = self:GetQuestNpcActor(wendyData.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(paimonData.alias)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest10110:OnSubStart1011001(arg1)
    actorMgr:CreateActorWithPos(triggerData.Trigger1.alias, triggerData.Trigger1.script, triggerData.Trigger1.id, 0, triggerData.Trigger1.pos, triggerData.Trigger1.dir, true)
    self:CreateQuestNpc(arg1, npc.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npc.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(5010)
    end

    self:NotifyTo("Npc1601", NPCUtil.NpcEventType.HIDESELF, true)
    self:NuoLaShowBubble10110()
end

function Quest10110:OnSubFinish1011001(arg1)
    self.ActionSafeCall(self, function()
        self:DestoryNPC10110()
        local questNpcActor = self:GetQuestNpcActor(phantomNoraData.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskLegacy(narratorData.Story1, nil, "StoryCut")
    end)
end

function Quest10110:OnSubStart1011002(arg1)
    self:NotifyTo("Npc1425", NPCUtil.NpcEventType.BANDAILY, true)
end

function Quest10110:OnSubFinish1011002(arg1)
    print("1011002 Finish:Destory NPC")
    self.UnCallFunc(self, self.NuoLaShowBubble10110)
    self.DestoryNPC10110(self)
    local questNpcActor = self.GetQuestNpcActor(self, npc.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    self.NotifyTo(self, "Npc1601", NPCUtil.NpcEventType.STARTDAILY, true)
    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskLegacy(narratorData.Story2, nil, "StoryCut")
    end)
end

function Quest10110:OnSubStart1011003(arg1)
    print("1011003 Start:...")
    self:NotifyTo("Npc1567", NPCUtil.NpcEventType.BANDAILY, true)
    actorMgr:CreateActorWithPos(triggerData.Trigger2.alias, triggerData.Trigger2.script, triggerData.Trigger2.id, 0, triggerData.Trigger2.pos, triggerData.Trigger2.dir, true)
end

function Quest10110:OnSubFinish1011003(arg1)
    self.NotifyTo(self, "Npc1425", NPCUtil.NpcEventType.STARTDAILY, true)
    self.ActionSafeCall(self, function()
        self:DestoryNPC10110()
        local questNpcActor = self:GetQuestNpcActor(phantomGuardianData.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskLegacy(narratorData.Story3, nil, "StoryCut")
    end)
end

function Quest10110:OnSubStart1011004(arg1)
    actorMgr:CreateActorWithPos(triggerData.Trigger3.alias, triggerData.Trigger3.script, triggerData.Trigger3.id, 0, triggerData.Trigger3.pos, triggerData.Trigger3.dir, true)
    self:CreateQuestNpc(arg1, v.id, 1)
    self:CreateQuestNpc(arg1, npc2.id, 2)
    self:CreateQuestNpc(arg1, npc3.id, 3)
    self:CreateQuestNpc(arg1, npc4.id, 4)
    local questNpcActor = self:GetQuestNpcActor(v.alias)
    if questNpcActor ~= nil then
        questNpcActor:SitOnChair(8010)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npc3.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:SitOnChair(8010)
    end

    local questNpcActor3 = self:GetQuestNpcActor(npc4.alias)
    if questNpcActor3 ~= nil then
        questNpcActor3:SitOnChair(8010)
    end

    local questNpcActor4 = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor4 ~= nil then
        questNpcActor4:SitOnChair(8010)
    end
end

function Quest10110:OnSubFinish1011004(arg1)
    self.NotifyTo(self, "Npc1567", NPCUtil.NpcEventType.STARTDAILY, true)
    self.DestoryNPC10110(self)
    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskLegacy(narratorData.Story4, nil, "StoryCut")
    end)
end

function Quest10110:OnSubStart1011005(arg1)
    self:NotifyTo("Npc1605", NPCUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npc5.id, 1)
end

function Quest10110:OnSubFinish1011005(arg1)
    self.ActionSafeCall(self, function()
        self:DestoryNPC10110()
        local questNpcActor = self:GetQuestNpcActor(phantomQinData.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local questNpcActor2 = self:GetQuestNpcActor(v.alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = self:GetQuestNpcActor(npc3.alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        local questNpcActor4 = self:GetQuestNpcActor(npc4.alias)
        if questNpcActor4 ~= nil then
            questNpcActor4:Destroy(false)
        end

        local questNpcActor5 = self:GetQuestNpcActor(npc2.alias)
        if questNpcActor5 ~= nil then
            questNpcActor5:Destroy(false)
        end
    end)
end

function Quest10110:OnSubStart1011006(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest10110:OnSubStart1011007(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest10110:OnSubStart1011008(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1605", NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest10110:OnSubStart1011009(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1605", NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest10110:OnSubFinish1011009(arg1)
    self.ActionSafeCall(self, function()
        self:DestoryNPC10110()
        local questNpcActor = self:GetQuestNpcActor("Npc1605")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest10110:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk Invork:Creat Floatty")
        self:SpawnGadgetById(1011002, gadget.id, 1)
    end

    if arg1 == 2 then
        print("Talk Invork:Destory Floatty")
        globalActor:UnSpawn(gadget.alias)
    end
end

function Quest10110:Start() end
function Quest10110:OnDestroy() end
return Quest10110
