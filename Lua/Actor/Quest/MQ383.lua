require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest383 = class("Quest383", QuestActorProxy)
Quest383.defaultAlias = "Quest383"
local clientData
local subIDs
local wendyData
local dilucData
local qinData

function Quest383:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    qinData = clientData.QinData
end

function Quest383:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38301"] = self.OnSubStart38301
    self.subStartHandlers["38302"] = self.OnSubStart38302
    self.subStartHandlers["38303"] = self.OnSubStart38303
    self.subStartHandlers["38304"] = self.OnSubStart38304
end

function Quest383:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38301"] = self.OnSubFinish38301
    self.subFinishHandlers["38302"] = self.OnSubFinish38302
    self.subFinishHandlers["38303"] = self.OnSubFinish38303
    self.subFinishHandlers["38304"] = self.OnSubFinish38304
end

function Quest383:OnSubStart38301(arg1)
    print("38301 start ")
end

function Quest383:OnSubStart38302(arg1)
    print("38302 start:...")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, dilucData.DilucID)
    self:CreateQuestNpc(arg1, qinData.QinID)
end

function Quest383:OnSubStart38303(arg1)
    print("38303 start:...")
    self:RequestInteraction(wendyData.Wendy)
end

function Quest383:OnSubStart38304(arg1)
    print("38304 start:...")
    self:RequestInteraction(qinData.Qin)
end

function Quest383:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Test!!!!!!!!!!!!!!!!")
        self.uActor:AvatarPaimonAppear()
    elseif arg1 == 4 then
        self.uActor:AvatarPaimonDisappear(nil, true)
    end
end

function Quest383:OnSubFinish38301(arg1)
    print("OnFinished 38301")
end

function Quest383:OnSubFinish38302(arg1)
    print("OnFinished 38302")
end

function Quest383:OnSubFinish38303(arg1)
    print("OnFinished 38303")
end

function Quest383:OnSubFinish38304(arg1)
    print("OnFinished 38304")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest383:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(38302, 70300202, 1)
        self:CallDelay(0.07, function(arg1)
            arg1:SpawnGadgetById(38302, 70300202, 2)
        end)

        self:CallDelay(0.15, function(arg1)
            arg1:SpawnGadgetById(38302, 70300202, 3)
        end)
    elseif arg1 == 2 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears1")
        self:UnSpawn("Tears2")
        self:UnSpawn("Tears3")
        self:SpawnGadgetById(38302, 70300042, 4)
        self:CallDelay(0.04, function(arg1)
            arg1:SpawnGadgetById(38302, 70300042, 5)
        end)

        self:CallDelay(0.07, function(arg1)
            arg1:SpawnGadgetById(38302, 70300042, 6)
        end)
    elseif arg1 == 3 then
        self:UnSpawn("Tears4")
        self:UnSpawn("Tears5")
        self:UnSpawn("Tears6")
    elseif arg1 == 6 then
        self:SpawnGadgetById(38302, 70300201, 7)
    elseif arg1 == 7 then
        self:UnSpawn("Harp01")
    end
end

function Quest383:Start() end
function Quest383:OnDestroy() end
return Quest383
