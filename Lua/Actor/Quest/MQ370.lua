require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest370 = class("Quest370", QuestActorProxy)
Quest370.defaultAlias = "Quest370"
local clientData
local subIDs
local qinData
local fatuusData
local lisaData
local paimonData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest370:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    qinData = clientData.QinData
    fatuusData = clientData.FatuusData
    lisaData = clientData.LisaData
    paimonData = clientData.PaimonData
end

function Quest370:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37001"] = self.OnSubStart37001
    self.subStartHandlers["37002"] = self.OnSubStart37002
    self.subStartHandlers["37004"] = self.OnSubStart37004
    self.subStartHandlers["37005"] = self.OnSubStart37005
    self.subStartHandlers["37003"] = self.OnSubStart37003
end

function Quest370:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37001"] = self.OnSubFinish37001
    self.subFinishHandlers["37002"] = self.OnSubFinish37002
    self.subFinishHandlers["37004"] = self.OnSubFinish37004
    self.subFinishHandlers["37005"] = self.OnSubFinish37005
    self.subFinishHandlers["37003"] = self.OnSubFinish37003
end

function Quest370:OnSubStart37001(arg1)
    print("37001 start:...")
    self:NotifyTo("Npc1519", DailyNPCManager.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q370Trigger", "Actor/Gadget/Q370Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q37001Fatuus").pos, sceneData:GetDummyPoint(3, "Q37001Fatuus").rot, true, false)
    self:CreateQuestNpc(arg1, qinData.QinID)
    self:CreateQuestNpc(arg1, fatuusData.FatuusID)
    self:NotifyTo("Npc1604", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest370:OnSubStart37002(arg1)
    print("37002 start:...")
    self:NotifyTo("Npc1604", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:RequestInteraction(qinData.Qin)
end

function Quest370:OnSubStart37004(arg1)
    print("37004 start:...")
end

function Quest370:OnSubStart37005(arg1)
    print("37005 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, lisaData.LisaID)
        arg1_2:CreateQuestNpc(arg1, qinData.QinID)
    end)
end

function Quest370:OnSubStart37003(arg1)
    print("37003 start:...")
end

function Quest370:OnSubFinish37001(arg1)
    print("OnFinished 37001")
end

function Quest370:OnSubFinish37002(arg1)
    print("OnFinished 37002")
    self:NotifyTo("Npc1604", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
end

function Quest370:DestroyNPC(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    local v = self:GetQuestNpcActor(qinData.Qin)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(fatuusData.Fatuus)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end
end

function Quest370:OnSubFinish37004(arg1)
    print("OnFinished 37004")
    if self.warningTask ~= nil then
        self.warningTask:FinishTask()
    end

    if self.stayWarningTask ~= nil then
        self.stayWarningTask:FinishTask()
    end
end

function Quest370:OnSubFinish37005(arg1)
    print("OnFinished 37005")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest370:OnSubFinish37003(arg1)
    print("OnFinished 37003")
    self:RequestInteraction(qinData.Qin)
end

function Quest370:TellStory(arg1)
    self:CallDelay(2.7, self.StartStory)
end

function Quest370:StartStory(arg1)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow, nil, "Story")
end

function Quest370:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(37005, 70300059)
    elseif arg1 == 5 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears")
    end
end

function Quest370:Start() end
function Quest370:OnDestroy() end
return Quest370
