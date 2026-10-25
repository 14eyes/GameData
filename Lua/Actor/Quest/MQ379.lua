require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest379 = class("Quest379", QuestActorProxy)
Quest379.defaultAlias = "Quest379"
local clientData
local subIDs
local wendyData
local dilucData
local qinData
local NPCUtil = require("Actor/Npc/NPCUtil")

function Quest379:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    qinData = clientData.QinData
end

function Quest379:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37901"] = self.OnSubStart37901
    self.subStartHandlers["37902"] = self.OnSubStart37902
    self.subStartHandlers["37903"] = self.OnSubStart37903
    self.subStartHandlers["37904"] = self.OnSubStart37904
end

function Quest379:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37901"] = self.OnSubFinish37901
    self.subFinishHandlers["37902"] = self.OnSubFinish37902
    self.subFinishHandlers["37903"] = self.OnSubFinish37903
    self.subFinishHandlers["37904"] = self.OnSubFinish37904
end

function Quest379:OnSubStart37901(arg1)
    print("37901 start ")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, dilucData.DilucID)
end

function Quest379:OnSubStart37902(arg1)
    print("37902 start:...")
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end

    self:CreateQuestNpc(arg1, qinData.QinID)
    self:CallDelay(1.7, function(arg1)
        arg1:RequestInteraction(wendyData.Wendy)
    end)
end

function Quest379:OnSubStart37903(arg1)
    print("37903 start:...")
    self:RequestInteraction(wendyData.Wendy)
end

function Quest379:OnSubStart37904(arg1)
    print("37904 start:...")
    self:RequestInteraction(qinData.Qin)
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest379:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Test!!!!!!!!!!!!!!!!")
        self.uActor:AvatarPaimonAppear()
    elseif arg1 == 4 then
        self.uActor:AvatarPaimonDisappear(nil, true)
    elseif arg1 == 101 then
        print("Now Stop Talking")
        self:SpawnGadgetById(37902, 70300200)
    elseif arg1 == 102 then
        print("Now Start Talking")
        self:UnSpawn("Harp01")
    elseif arg1 == 103 then
        print("Now Stop Talking")
        self:SpawnGadgetById(37904, 70300201)
    elseif arg1 == 104 then
        print("Now upspawn 02")
        self:UnSpawn("Harp02")
    end
end

function Quest379:OnSubFinish37901(arg1)
    print("OnFinished 37901")
end

function Quest379:OnSubFinish37902(arg1)
    print("OnFinished 37902")
end

function Quest379:OnSubFinish37903(arg1)
    print("OnFinished 37903")
end

function Quest379:OnSubFinish37904(arg1)
    print("OnFinished 37904")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        local mengdeNpcListSpecial = NPCUtil.GetMengdeNpcListSpecial()
        for i = 1, #mengdeNpcListSpecial do
            arg1:NotifyTo(mengdeNpcListSpecial[i], NPCUtil.NpcEventType.STARTDAILY, true)
        end
    end)

    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
end

function Quest379:DestroyNPC(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(dilucData.Diluc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest379:TellStory(arg1)
    self:CallDelay(1.5, self.StartStory)
end

function Quest379:StartStory(arg1)
    self:NarratorOnlyTaskLegacy(clientData.StoryNarrator, nil, "Story")
end

function Quest379:Start() end
function Quest379:OnDestroy() end
return Quest379
