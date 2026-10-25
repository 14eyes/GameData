require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11000 = class("Quest11000", QuestActorProxy)
Quest11000.defaultAlias = "Quest11000"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 11000
local paimonData
local xianglingData
local allanData

function Quest11000:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 11000
    paimonData = clientData.PaimonData
    xianglingData = clientData.XianglingData
    allanData = clientData.AllanData
end

function Quest11000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100001"] = self.OnSubStart1100001
    self.subStartHandlers["1100002"] = self.OnSubStart1100002
    self.subStartHandlers["1100003"] = self.OnSubStart1100003
    self.subStartHandlers["1100004"] = self.OnSubStart1100004
    self.subStartHandlers["1100005"] = self.OnSubStart1100005
end

function Quest11000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100001"] = self.OnSubFinish1100001
    self.subFinishHandlers["1100002"] = self.OnSubFinish1100002
    self.subFinishHandlers["1100003"] = self.OnSubFinish1100003
    self.subFinishHandlers["1100004"] = self.OnSubFinish1100004
    self.subFinishHandlers["1100005"] = self.OnSubFinish1100005
end

function Quest11000:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11000:PaimonDelay()
    self:PaimonDis()
end

function Quest11000:Finish02()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100002)
    end
end

function Quest11000:OnSubStart1100001(arg1)
    print("1100001 start:...")
    actorMgr:CreateActorWithPos("Q1100001Trigger01", "Actor/Gadget/Q1100001Trigger01", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100001XL").pos, sceneData:GetDummyPoint(3, "Q1100001XL").rot, true, false)
end

function Quest11000:OnSubStart1100002(arg1)
    print("1100002 start:...")
    self:CallDelay(2, self.Finish02)
end

function Quest11000:OnSubStart1100003(arg1)
    print("1100003 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(1, function(arg1_2)
        arg1_2:PlayCutsceneIndex(1100001, function(arg1_2)
            actor:TransmitPlayerByQuestId(1100003, 1, nil, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
                arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
                arg1_2:RequestInteraction(xianglingData.Alias)
            end, entityCreateTask)
        end)
    end)
end

function Quest11000:OnSubStart1100004(arg1)
    print("1100004 start:...")
    self:ActionSafeCall(function(arg1_2)
        local actorInternal = actorMgr:GetActorInternal("Xiangling11000")
        if actorInternal == nil then
            print(" xiangling   nil--------- Create ")
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
            arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
        else
            actorInternal:DoFreeStyle(1220)
        end

        arg1_2:CallDelay(5, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                print("wancheng 1100004")
                actor:FinishQuestID(false, 1100004)
            end
        end)
    end)
end

function Quest11000:OnSubStart1100005(arg1)
    print("1100005 start:...")
    local actorInternal = actorMgr:GetActorInternal("Xiangling11000")
    if actorInternal == nil then
        print(" xiangling   nil--------- Create ")
        self:CreateQuestNpc(arg1, xianglingData.ID)
        self:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
    else
        actorInternal:DoFreeStyle(1220)
    end
end

function Quest11000:OnSubFinish1100001(arg1) end
function Quest11000:OnSubFinish1100002(arg1) end

function Quest11000:OnSubFinish1100003(arg1)
    print("OnFinished 1100003")
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11000:OnSubFinish1100004(arg1) end

function Quest11000:OnSubFinish1100005(arg1)
    print("OnFinished 1100005")
    if self:GetQuestNpcActor(allanData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(allanData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11000:Start() end
function Quest11000:OnDestroy() end
return Quest11000
