require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest371 = class("Quest371", QuestActorProxy)
Quest371.defaultAlias = "Quest371"
local clientData
local subIDs
local paimonData
local wendyData

function Quest371:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    wendyData = clientData.WendyData
end

function Quest371:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37101"] = self.OnSubStart37101
    self.subStartHandlers["37102"] = self.OnSubStart37102
    self.subStartHandlers["37103"] = self.OnSubStart37103
    self.subStartHandlers["37104"] = self.OnSubStart37104
    self.subStartHandlers["37105"] = self.OnSubStart37105
    self.subStartHandlers["37106"] = self.OnSubStart37106
    self.subStartHandlers["37107"] = self.OnSubStart37107
    self.subStartHandlers["37108"] = self.OnSubStart37108
    self.subStartHandlers["37109"] = self.OnSubStart37109
    self.subStartHandlers["37110"] = self.OnSubStart37110
    self.subStartHandlers["37111"] = self.OnSubStart37111
    self.subStartHandlers["37112"] = self.OnSubStart37112
    self.subStartHandlers["37113"] = self.OnSubStart37113
    self.subStartHandlers["37114"] = self.OnSubStart37114
    self.subStartHandlers["37115"] = self.OnSubStart37115
end

function Quest371:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37101"] = self.OnSubFinish37101
    self.subFinishHandlers["37102"] = self.OnSubFinish37102
    self.subFinishHandlers["37103"] = self.OnSubFinish37103
    self.subFinishHandlers["37104"] = self.OnSubFinish37104
    self.subFinishHandlers["37105"] = self.OnSubFinish37105
    self.subFinishHandlers["37106"] = self.OnSubFinish37106
    self.subFinishHandlers["37107"] = self.OnSubFinish37107
    self.subFinishHandlers["37108"] = self.OnSubFinish37108
    self.subFinishHandlers["37109"] = self.OnSubFinish37109
    self.subFinishHandlers["37110"] = self.OnSubFinish37110
    self.subFinishHandlers["37111"] = self.OnSubFinish37111
    self.subFinishHandlers["37112"] = self.OnSubFinish37112
    self.subFinishHandlers["37113"] = self.OnSubFinish37113
    self.subFinishHandlers["37114"] = self.OnSubFinish37114
    self.subFinishHandlers["37115"] = self.OnSubFinish37115
end

function Quest371:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest371:PaimonDelay()
    self:CallDelay(0.5, self.PaimonDis)
end

function Quest371:OnSubStart37101(arg1)
    print("37101 start : Create Shimo Paimon")
end

function Quest371:OnSubStart37102(arg1)
    print("37102 start:...")
    self:CreateQuestNpc(arg1, paimonData.PaimonID)
end

function Quest371:OnSubStart37103(arg1)
    print("37103 start:...")
    actorMgr:CreateActorWithPos("WendyTrackTrigger", "Actor/Gadget/WendyTrackTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyFootPrint1").pos, sceneData:GetDummyPoint(3, "Q371WendyFootPrint1").rot, true, false)
end

function Quest371:OnSubStart37104(arg1)
    print("37104 start:...")
    self:CreateQuestNpc(arg1, paimonData.PaimonID)
end

function Quest371:OnSubStart37105(arg1)
    print("37105 start:...")
    self:UnSpawn("FootPrint")
    self:SpawnGadget(arg1, 70300037, 1)
    self:SpawnGadget(arg1, 70300037, 2)
    actorMgr:CreateActorWithPos("WendyTrackTrigger", "Actor/Gadget/WendyTrackTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger1").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger1").rot, true, false)
end

function Quest371:OnSubStart37106(arg1)
    print("37106 start:...")
    self:UnSpawn("FootPrint")
    self:SpawnGadget(arg1, 70300037, 1)
    self:SpawnGadget(arg1, 70300037, 2)
    actorMgr:CreateActorWithPos("WendyTrackTrigger", "Actor/Gadget/WendyTrackTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger2").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger2").rot, true, false)
end

function Quest371:OnSubStart37107(arg1)
    print("37107 start:...")
    self:UnSpawn("FootPrint")
    self:UnSpawn("FootPrint2")
    self:SpawnGadget(arg1, 70300037, 1)
    actorMgr:CreateActorWithPos("WendyTrackTrigger", "Actor/Gadget/WendyTrackTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger3").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger3").rot, true, false)
end

function Quest371:OnSubStart37108(arg1)
    self:UnSpawn("FootPrint3")
    self:SpawnGadget(arg1, 70300037, 1)
    self:SpawnGadget(arg1, 70300037, 2)
    self:SpawnGadget(arg1, 70300037, 3)
    actorMgr:CreateActorWithPos("WendyTrackTrigger", "Actor/Gadget/WendyTrackTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger4").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger4").rot, true, false)
end

function Quest371:OnSubStart37109(arg1)
    self:UnSpawn("FootPrint")
    self:UnSpawn("FootPrint2")
    self:UnSpawn("FootPrint071")
    self:SpawnGadget(arg1, 70300037, 1)
    self:SpawnGadget(arg1, 70300037, 2)
    actorMgr:CreateActorWithPos("WendyTrackTriggersp", "Actor/Gadget/WendyTrackTriggersp", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger5").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger5").rot, true, false)
end

function Quest371:OnSubStart37110(arg1)
    self:UnSpawn("FootPrint")
    self:UnSpawn("FootPrint3")
    self:SpawnGadget(arg1, 70300037, 1)
    actorMgr:CreateActorWithPos("WendyTrackTriggersp1", "Actor/Gadget/WendyTrackTriggersp1", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger6").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger6").rot, true, false)
end

function Quest371:OnSubStart37111(arg1)
    self:UnSpawn("FootPrint")
    self:UnSpawn("FootPrint2")
    self:SpawnGadget(arg1, 70300037, 1)
    self:SpawnGadget(arg1, 70300037, 2)
    actorMgr:CreateActorWithPos("WendyTrackTriggersp2", "Actor/Gadget/WendyTrackTriggersp2", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger7").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger7").rot, true, false)
end

function Quest371:OnSubStart37112(arg1)
    self:UnSpawn("FootPrint")
    self:SpawnGadget(arg1, 70300037, 1)
    self:SpawnGadget(arg1, 70300037, 2)
    actorMgr:CreateActorWithPos("WendyTrackTriggersp3", "Actor/Gadget/WendyTrackTriggersp3", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger8").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger8").rot, true, false)
end

function Quest371:OnSubStart37113(arg1)
    self:UnSpawn("FootPrint")
    self:UnSpawn("FootPrint4")
    self:SpawnGadget(arg1, 70300037, 1)
    actorMgr:CreateActorWithPos("WendyTrackTriggersp4", "Actor/Gadget/WendyTrackTriggersp4", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyTrigger9").pos, sceneData:GetDummyPoint(3, "Q371WendyTrigger9").rot, true, false)
end

function Quest371:OnSubStart37114(arg1)
    print("37114 start:...")
end

function Quest371:OnSubStart37115(arg1)
    print("37115 start:...")
    self:CreateQuestNpc(arg1, paimonData.PaimonID)
    self:CallDelay(1, self.RequestPaimon)
end

function Quest371:RequestPaimon(arg1)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest371:OnSubFinish37101(arg1)
    print("OnFinished 37101")
    local questNpcActor = self:GetQuestNpcActor("Qin")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor("Ambor")
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor("Lisa")
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor("Gaia")
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end
end

function Quest371:OnSubFinish37102(arg1)
    print("OnFinished 37102")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("WendyNew")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest371:WendyRun()
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    if questNpcActor ~= nil then
        questNpcActor:ClearFollowTask()
        questNpcActor:RunToTask(wendyData.run2Pos, function(arg1, arg2)
            arg1:Destroy(false)
        end)

        self:EnterSceneLookCamera(wendyData.cameraPos, 3.5, 3, true)
        print("Rush Wendy ***")
    end
end

function Quest371:OnSubFinish37103(arg1)
    print("OnFinished 37103")
end

function Quest371:OnSubFinish37104(arg1)
    self:ActionSafeCall(self.PaimonDis)
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest371:ShowTutorial(arg1)
    self:ShowTutorialDialog(112, function()
        globalActor:StartGuide("RandomTaskElementViewGuideIOS")
    end)
end

function Quest371:OnSubFinish37105(arg1) end
function Quest371:OnSubFinish37106(arg1) end
function Quest371:OnSubFinish37107(arg1) end
function Quest371:OnSubFinish37108(arg1) end
function Quest371:OnSubFinish37109(arg1) end
function Quest371:OnSubFinish37110(arg1) end
function Quest371:OnSubFinish37111(arg1) end
function Quest371:OnSubFinish37112(arg1) end

function Quest371:OnSubFinish37113(arg1)
    self:UnSpawn("FootPrint2")
end

function Quest371:OnSubFinish37114(arg1) end

function Quest371:OnSubFinish37115(arg1)
    self:ActionSafeCall(self.PaimonDis)
end

function Quest371:InvokeOnInteraction(arg1)
    if arg1 == 11 then
        if self:GetQuestNpcActor(paimonData.Paimon) ~= nil then
            print("Now Spawn Emoji")
        end
    end
end

function Quest371:Start() end
function Quest371:OnDestroy() end
return Quest371
