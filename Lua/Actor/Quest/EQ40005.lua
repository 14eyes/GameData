require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40005 = class("Quest40005", QuestActorProxy)
Quest40005.defaultAlias = "Quest40005"
local clientData
local playerData
local paimonData
local xiaoData
local thiefData
local narratorData

function Quest40005:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    xiaoData = clientData.XiaoData
    thiefData = clientData.ThiefData
    narratorData = clientData.NarratorData
end

function Quest40005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000500"] = self.OnSubStart4000500
    self.subStartHandlers["4000501"] = self.OnSubStart4000501
    self.subStartHandlers["4000502"] = self.OnSubStart4000502
    self.subStartHandlers["4000503"] = self.OnSubStart4000503
    self.subStartHandlers["4000504"] = self.OnSubStart4000504
    self.subStartHandlers["4000505"] = self.OnSubStart4000505
    self.subStartHandlers["4000506"] = self.OnSubStart4000506
end

function Quest40005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000500"] = self.OnSubFinish4000500
    self.subFinishHandlers["4000501"] = self.OnSubFinish4000501
    self.subFinishHandlers["4000502"] = self.OnSubFinish4000502
    self.subFinishHandlers["4000503"] = self.OnSubFinish4000503
    self.subFinishHandlers["4000504"] = self.OnSubFinish4000504
    self.subFinishHandlers["4000505"] = self.OnSubFinish4000505
    self.subFinishHandlers["4000506"] = self.OnSubFinish4000506
end

function Quest40005:OnSubStart4000500(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest40005:OnSubFinish4000500(arg1)
    print("4000400 OnFinish")
    self:NarratorOnlyTaskLegacy(narratorData.Story1, nil, "Story")
end

function Quest40005:OnSubStart4000501(arg1)
    self:CreateQuestNpc(arg1, thiefData.ID)
end

function Quest40005:OnSubFinish4000502(arg1)
    print("4000502 OnFinish")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(thiefData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = self:GetQuestNpcActor(paimonData.Alias)
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end

        globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
    end)
end

function Quest40005:OnSubStart4000504(arg1)
    print("4000504 OnStart")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({thiefData.Alias})
    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, thiefData.ID)
    end, questNpcCreateTask)
end

function Quest40005:OnSubFinish4000504(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(thiefData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(paimonData.Alias)
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest40005:OnSubStart4000505(arg1)
    print("4000505 OnStart")
    self:CreateQuestNpc(arg1, xiaoData.ID)
end

function Quest40005:OnSubFinish4000505(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest40005:OnSubFinish4000506(arg1)
    self:CallDelay(0.5, function(arg1)
        globalActor:ChangeDay24Time(22, true)
    end)

    self:PlayCutsceneIndex(4000501, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(xiaoData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest40005:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Invoke quest finish")
        globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    end
end

function Quest40005:Start() end
function Quest40005:OnDestroy() end
return Quest40005
