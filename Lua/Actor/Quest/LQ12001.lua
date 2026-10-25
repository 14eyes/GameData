require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12001 = class("Quest12001", QuestActorProxy)
Quest12001.defaultAlias = "Quest12001"
util.do_require("Quest/Share/Q12001ShareConfig")
local Q12001ClientConfig = require("Quest/Client/Q12001ClientConfig")

local paimonData = Q12001ClientConfig.PaimonData
local xingQiuData = Q12001ClientConfig.XingQiuData
local wlyData = Q12001ClientConfig.WlyData
local managerData = Q12001ClientConfig.ManagerData

function Quest12001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1200101"] = self.OnSubStart1200101
    self.subStartHandlers["1200102"] = self.OnSubStart1200102
    self.subStartHandlers["1200103"] = self.OnSubStart1200103
    self.subStartHandlers["1200104"] = self.OnSubStart1200104
    self.subStartHandlers["1200105"] = self.OnSubStart1200105
    self.subStartHandlers["1200106"] = self.OnSubStart1200106
    self.subStartHandlers["1200107"] = self.OnSubStart1200107
    self.subStartHandlers["1200108"] = self.OnSubStart1200108
end

function Quest12001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1200101"] = self.OnSubFinish1200101
    self.subFinishHandlers["1200102"] = self.OnSubFinish1200102
    self.subFinishHandlers["1200103"] = self.OnSubFinish1200103
    self.subFinishHandlers["1200104"] = self.OnSubFinish1200104
    self.subFinishHandlers["1200105"] = self.OnSubFinish1200105
    self.subFinishHandlers["1200106"] = self.OnSubFinish1200106
    self.subFinishHandlers["1200107"] = self.OnSubFinish1200107
    self.subFinishHandlers["1200108"] = self.OnSubFinish1200108
end

function Quest12001:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest12001:XingQiuDestroy()
    local questNpcActor = self:GetQuestNpcActor(xingQiuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12001:WlyDestroy()
    local questNpcActor = self:GetQuestNpcActor(wlyData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12001:ManagerDestroy()
    local questNpcActor = self:GetQuestNpcActor(managerData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12001:InvokeOnInteraction(arg1)
    if arg1 == 10 then
        self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q12001")
    end
end

function Quest12001:setbook()
    local tbl = {x = -507.0439, y = 250.2809, z = 454.3605}
    local v = {x = 107.1, y = -50.4, z = -89.4}
    self:SpawnGadgetByIdWithPos(1200108, 70710060, 1, tbl, v)
    print("***********set book ***********")
end

function Quest12001:TransmitNarrator()
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskLegacy(Q12001ClientConfig.NarratorData2, nil, "StoryCut")
    end)
end

function Quest12001:OnSubStart1200101(arg1)
    print("********1200101 start")
    actorMgr:CreateActorWithPos("Q1200101Trigger", "Actor/Gadget/Q1200101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200101Trigger").pos, sceneData:GetDummyPoint(3, "Q1200101Trigger").rot, true, false)
    self:CallDelay(0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, xingQiuData.ID)
        arg1_2:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1330)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest12001:OnSubFinish1200101(arg1) end

function Quest12001:OnSubStart1200102(arg1)
    print("********1200102 start")
end

function Quest12001:OnSubFinish1200102(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12001:OnSubStart1200103(arg1)
    print("********1200103 start")
    self:NotifyTo("Npc2070", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest12001:OnSubFinish1200103(arg1)
    print("********1200103 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self:NarratorOnlyTaskLegacy(Q12001ClientConfig.NarratorData1, nil, "StoryCut"))
    self:NotifyTo("Npc2070", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest12001:OnSubStart1200104(arg1)
    print("********1200104 start")
    actorMgr:CreateActorWithPos("Q1200104Trigger", "Actor/Gadget/Q1200104Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200104Trigger").pos, sceneData:GetDummyPoint(3, "Q1200104Trigger").rot, true, false)
    self:ExitSneakMode()
    self:SneakAIDestroy()
    self:NpcDisplay()
end

function Quest12001:OnSubFinish1200104(arg1)
    print("********1200104 Finish")
end

function Quest12001:OnSubStart1200105(arg1) end
function Quest12001:OnSubFinish1200105(arg1) end

function Quest12001:OnSubStart1200106(arg1)
    actorMgr:CreateActorWithPos("Q1200111Trigger", "Actor/Gadget/Q1200111Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200111Trigger").pos, sceneData:GetDummyPoint(3, "Q1200111Trigger").rot, true, false)
    self:CreateQuestNpc(arg1, wlyData.ID)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest12001:OnSubFinish1200106(arg1) end

function Quest12001:OnSubStart1200107(arg1)
    self:ShowBlackScreen(0.5, 1, 0, function(arg1)
        arg1:RequestInteraction("Npc162601")
    end)
end

function Quest12001:OnSubFinish1200107(arg1)
    self:ActionSafeCall(self.WlyDestroy)
    self:ActionSafeCall(self.ManagerDestroy)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12001:OnSubStart1200108(arg1)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
    self:CreateQuestNpc(arg1, xingQiuData.ID)
    self:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1330)
end

function Quest12001:OnSubFinish1200108(arg1)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XingQiuDestroy)
end

function Quest12001:Start() end
function Quest12001:OnDestroy() end
return Quest12001
