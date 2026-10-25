require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1020 = class("Quest1020", QuestActorProxy)
Quest1020.defaultAlias = "Quest1020"
local Q1017ClientConfig = require("Quest/Client/Q1017ClientConfig")

local clientData
local subIDs
local paimonData
local gongziData
local keqingData
local nvshiData
local ningguangData
local ganyuData
local zhongliData
local armyData1
local armyData2
local armyData3
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1020:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
    keqingData = clientData.KeqingData
    nvshiData = clientData.NvshiData
    ningguangData = clientData.NingguangData
    ganyuData = clientData.GanyuData
    zhongliData = clientData.ZhongliData
    armyData1 = clientData.ArmyData1
    armyData2 = clientData.ArmyData2
    armyData3 = clientData.ArmyData3
end

function Quest1020:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["102001"] = self.OnSubStart102001
    self.subStartHandlers["102002"] = self.OnSubStart102002
    self.subStartHandlers["102003"] = self.OnSubStart102003
    self.subStartHandlers["102004"] = self.OnSubStart102004
    self.subStartHandlers["102005"] = self.OnSubStart102005
    self.subStartHandlers["102006"] = self.OnSubStart102006
    self.subStartHandlers["102007"] = self.OnSubStart102007
    self.subStartHandlers["102008"] = self.OnSubStart102008
    self.subStartHandlers["102009"] = self.OnSubStart102009
    self.subStartHandlers["102010"] = self.OnSubStart102010
    self.subStartHandlers["102011"] = self.OnSubStart102011
    self.subStartHandlers["102012"] = self.OnSubStart102012
    self.subStartHandlers["102013"] = self.OnSubStart102013
    self.subStartHandlers["102014"] = self.OnSubStart102014
end

function Quest1020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["102001"] = self.OnSubFinish102001
    self.subFinishHandlers["102002"] = self.OnSubFinish102002
    self.subFinishHandlers["102003"] = self.OnSubFinish102003
    self.subFinishHandlers["102004"] = self.OnSubFinish102004
    self.subFinishHandlers["102005"] = self.OnSubFinish102005
    self.subFinishHandlers["102006"] = self.OnSubFinish102006
    self.subFinishHandlers["102007"] = self.OnSubFinish102007
    self.subFinishHandlers["102008"] = self.OnSubFinish102008
    self.subFinishHandlers["102009"] = self.OnSubFinish102009
    self.subFinishHandlers["102010"] = self.OnSubFinish102010
    self.subFinishHandlers["102011"] = self.OnSubFinish102011
    self.subFinishHandlers["102012"] = self.OnSubFinish102012
    self.subFinishHandlers["102013"] = self.OnSubFinish102013
    self.subFinishHandlers["102014"] = self.OnSubFinish102014
end

function Quest1020:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1020:Army1Vanish()
    local questNpcActor = self:GetQuestNpcActor(armyData1.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1020:Army2Vanish()
    local questNpcActor = self:GetQuestNpcActor(armyData2.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1020:Army3Vanish()
    local questNpcActor = self:GetQuestNpcActor(armyData3.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1020:keqingVanish()
    local questNpcActor = self:GetQuestNpcActor(keqingData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1020:InvokeOnInteraction(arg1)
    print("1020 Invoke : ")
    if arg1 == 10 then
        self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q102006")
    end
end

function Quest1020:OnSubStart102001(arg1)
    print("102001 start:...")
    actorMgr:CreateActorWithPos("Q102001Trigger", "Actor/Gadget/Q102001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102001Paimon").pos, sceneData:GetDummyPoint(3, "Q102001Paimon").rot, true, false)
end

function Quest1020:OnSubStart102002(arg1)
    print("102002 start:...")
    local actor = actorMgr:GetActor(Q1017ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101701)
        actor:FinishQuestID(false, 101702)
        actor:FinishQuestID(false, 101703)
        actor:FinishQuestID(false, 101704)
        actor:FinishQuestID(false, 101705)
    end

    actorMgr:CreateActorWithPos("Q102002Trigger", "Actor/Gadget/Q102002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102002Guild").pos, sceneData:GetDummyPoint(3, "Q102002Guild").rot, true, false)
end

function Quest1020:OnSubStart102003(arg1)
    print("102301 start:...")
    actorMgr:CreateActorWithPos("Q102003Trigger", "Actor/Gadget/Q102003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102007born").pos, sceneData:GetDummyPoint(3, "Q102007born").rot, true, false)
end

function Quest1020:OnSubStart102007(arg1)
    print("102006 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(0.2, function(arg1_2)
        actor:TransmitPlayerByQuestId(102007, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.2, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 102006")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1020:OnSubStart102004(arg1)
    print("102004 start:...")
    self:CreateQuestNpc(arg1, armyData1.ID)
    self:CreateQuestNpc(arg1, armyData2.ID)
    self:CreateQuestNpc(arg1, armyData3.ID)
    actorMgr:CreateActorWithPos("Q102004Trigger", "Actor/Gadget/Q102004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102004Army4").pos, sceneData:GetDummyPoint(3, "Q102004Army4").rot, true, false)
end

function Quest1020:OnSubStart102006(arg1)
    print("102006 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(102006, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 102006")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1020:OnSubFinish102001(arg1)
    print("OnFinished 102001")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1020:OnSubFinish102002(arg1)
    print("OnFinished 102001")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1020:OnSubFinish102007(arg1)
    print("OnFinished 102001")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1020:OnSubFinish102004(arg1)
    print("OnFinished 102001")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.Army1Vanish)
    self:ActionSafeCall(self.Army2Vanish)
    self:ActionSafeCall(self.Army3Vanish)
end

function Quest1020:OnSubFinish102006(arg1)
    print("OnFinished 102001")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.keqingVanish)
    self:ActionSafeCall(self.Army1Vanish)
end

function Quest1020:Start() end
function Quest1020:OnDestroy() end
return Quest1020
