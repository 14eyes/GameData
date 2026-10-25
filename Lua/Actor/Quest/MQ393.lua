require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest393 = class("Quest393", QuestActorProxy)
Quest393.defaultAlias = "Quest393"
local clientData
local wendyData
local qinData
local dilucData
local paimonData

function Quest393:OnDataLoaded()
    clientData = self.clientData
    wendyData = clientData.WendyData
    qinData = clientData.QinData
    dilucData = clientData.DilucData
    paimonData = clientData.PaimonData
end

function Quest393:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39301"] = self.OnSubStart39301
    self.subStartHandlers["39302"] = self.OnSubStart39302
    self.subStartHandlers["39303"] = self.OnSubStart39303
end

function Quest393:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39301"] = self.OnSubFinish39301
    self.subFinishHandlers["39302"] = self.OnSubFinish39302
    self.subFinishHandlers["39303"] = self.OnSubFinish39303
end

function Quest393:OnSubStart39301(arg1)
    print("39301 start:......")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest393:OnSubStart39302(arg1)
    print("39302 start:......")
end

function Quest393:OnSubStart39303(arg1)
    print("39303 start:......")
end

function Quest393:OnSubFinish39301(arg1)
    print("OnFinished 39301")
end

function Quest393:OnSubFinish39302(arg1)
    print("OnFinished 39302")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, wendyData.WendyID)
        arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
        arg1_2:CreateQuestNpc(arg1, qinData.QinID)
        arg1_2:RequestInteraction(wendyData.Wendy)
    end, nil, entityCreateTask)
end

function Quest393:OnSubFinish39303(arg1)
    print("OnFinished 39303")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        local v = arg1:GetQuestNpcActor(dilucData.Diluc)
        local questNpcActor2 = arg1:GetQuestNpcActor(qinData.Qin)
        local questNpcActor3 = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor3 ~= nil then
            questNpcActor3:DestroyWithDisappear(false)
        end
    end)
end

function Quest393:Start() end
function Quest393:OnDestroy() end
return Quest393
