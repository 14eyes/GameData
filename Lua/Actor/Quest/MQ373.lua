require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest373 = class("Quest373", QuestActorProxy)
Quest373.defaultAlias = "Quest373"
local clientData
local subIDs
local wendyData

function Quest373:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
end

function Quest373:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37301"] = self.OnSubStart37301
    self.subStartHandlers["37302"] = self.OnSubStart37302
    self.subStartHandlers["37303"] = self.OnSubStart37303
    self.subStartHandlers["37304"] = self.OnSubStart37304
end

function Quest373:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37301"] = self.OnSubFinish37301
    self.subFinishHandlers["37302"] = self.OnSubFinish37302
    self.subFinishHandlers["37303"] = self.OnSubFinish37303
    self.subFinishHandlers["37304"] = self.OnSubFinish37304
end

function Quest373:OnSubStart37301(arg1)
    print("37301 start ")
    actorMgr:CreateActorWithPos("Q373Trigger", "Actor/Gadget/Q373Trigger", 70900002, 0, wendyData.bornPos, wendyData.bornDir, true, false)
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CallDelay(3, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:LookAt(sceneData:GetDummyPoint(3, "Q373Look").pos)
            print("look at me")
        end
    end)
end

function Quest373:OnSubStart37302(arg1)
    print("37302 start:...")
end

function Quest373:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Now Spawn Monster")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end
end

function Quest373:OnSubStart37303(arg1)
    print("37303 start:...BATTLE HERE")
end

function Quest373:OnSubStart37304(arg1)
    print("37304 start:...")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({wendyData.Wendy})
    self:CallDelay(1.5, function(arg1)
        arg1:ShowBlackScreen(0.5, 1.5, 0.5, arg1.CreateNPC, nil, questNpcCreateTask)
    end)
end

function Quest373:OnSubFinish37301(arg1)
    print("OnFinished 37301")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.RequestWendy)
end

function Quest373:OnSubFinish37302(arg1)
    print("OnFinished 37302")
    self:ActionSafeCall(self.TellStory)
end

function Quest373:OnSubFinish37303(arg1)
    print("OnFinished 37303")
end

function Quest373:OnSubFinish37304(arg1)
    print("OnFinished 37304")
    self:ActionSafeCall(self.CleanNPC)
end

function Quest373:CleanNPC(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest373:TellStory(arg1)
    self:DestroyNPC()
    self:CallDelay(0.5, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow, nil, "Fight")
    end)
end

function Quest373:RequestWendy(arg1)
    self:RequestInteraction(wendyData.Wendy)
end

function Quest373:DestroyNPC(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest373:CreateNPC(arg1)
    self:CreateQuestNpcById(37304, wendyData.WendyID, 1)
    self:RequestInteraction(wendyData.Wendy)
end

function Quest373:Start() end
function Quest373:OnDestroy() end
return Quest373
