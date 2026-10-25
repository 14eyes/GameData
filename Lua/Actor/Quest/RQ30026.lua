require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30026 = class("Quest30026", QuestActorProxy)
Quest30026.defaultAlias = "Quest30026"
local subIDs = require("Quest/Client/Q30026ClientConfig").SubIDs

function Quest30026:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3002601"] = self.OnSubStart3002601
    self.subStartHandlers["3002602"] = self.OnSubStart3002602
    self.subStartHandlers["3002603"] = self.OnSubStart3002603
    self.subStartHandlers["3002604"] = self.OnSubStart3002604
    self.subStartHandlers["3002605"] = self.OnSubStart3002605
    self.subStartHandlers["3002606"] = self.OnSubStart3002606
    self.subStartHandlers["3002607"] = self.OnSubStart3002607
    self.subStartHandlers["3002608"] = self.OnSubStart3002608
    self.subStartHandlers["3002609"] = self.OnSubStart3002609
    self.subStartHandlers["3002610"] = self.OnSubStart3002610
    self.subStartHandlers["3002611"] = self.OnSubStart3002611
    self.subStartHandlers["3002612"] = self.OnSubStart3002612
    self.subStartHandlers["3002613"] = self.OnSubStart3002613
    self.subStartHandlers["3002614"] = self.OnSubStart3002614
    self.subStartHandlers["3002615"] = self.OnSubStart3002615
    self.subStartHandlers["3002616"] = self.OnSubStart3002616
    self.subStartHandlers["3002617"] = self.OnSubStart3002617
end

function Quest30026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3002601"] = self.OnSubFinish3002601
    self.subFinishHandlers["3002602"] = self.OnSubFinish3002602
    self.subFinishHandlers["3002603"] = self.OnSubFinish3002603
    self.subFinishHandlers["3002604"] = self.OnSubFinish3002604
    self.subFinishHandlers["3002605"] = self.OnSubFinish3002605
    self.subFinishHandlers["3002606"] = self.OnSubFinish3002606
    self.subFinishHandlers["3002607"] = self.OnSubFinish3002607
    self.subFinishHandlers["3002608"] = self.OnSubFinish3002608
    self.subFinishHandlers["3002609"] = self.OnSubFinish3002609
    self.subFinishHandlers["3002610"] = self.OnSubFinish3002610
    self.subFinishHandlers["3002611"] = self.OnSubFinish3002611
    self.subFinishHandlers["3002612"] = self.OnSubFinish3002612
    self.subFinishHandlers["3002613"] = self.OnSubFinish3002613
    self.subFinishHandlers["3002614"] = self.OnSubFinish3002614
    self.subFinishHandlers["3002615"] = self.OnSubFinish3002615
    self.subFinishHandlers["3002616"] = self.OnSubFinish3002616
    self.subFinishHandlers["3002617"] = self.OnSubFinish3002617
end

function Quest30026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3002601"] = self.OnSubFailed3002601
    self.subFailedHandlers["3002602"] = self.OnSubFailed3002602
    self.subFailedHandlers["3002603"] = self.OnSubFailed3002603
    self.subFailedHandlers["3002604"] = self.OnSubFailed3002604
    self.subFailedHandlers["3002605"] = self.OnSubFailed3002605
    self.subFailedHandlers["3002606"] = self.OnSubFailed3002606
    self.subFailedHandlers["3002607"] = self.OnSubFailed3002607
    self.subFailedHandlers["3002608"] = self.OnSubFailed3002608
    self.subFailedHandlers["3002609"] = self.OnSubFailed3002609
    self.subFailedHandlers["3002610"] = self.OnSubFailed3002610
    self.subFailedHandlers["3002611"] = self.OnSubFailed3002611
    self.subFailedHandlers["3002612"] = self.OnSubFailed3002612
    self.subFailedHandlers["3002613"] = self.OnSubFailed3002613
    self.subFailedHandlers["3002614"] = self.OnSubFailed3002614
    self.subFailedHandlers["3002615"] = self.OnSubFailed3002615
    self.subFailedHandlers["3002616"] = self.OnSubFailed3002616
    self.subFailedHandlers["3002617"] = self.OnSubFailed3002617
end

function Quest30026:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 100 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30026***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30026:OnSubStart3002601(arg1)
    print("OnSubStart3002601")
    self:CreateQuestNpc(arg1, 0, 1)
    self:CallDelay(60, self.QuestDestroy)
end

function Quest30026:OnSubFinish3002601(arg1)
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30026:OnSubStart3002606(arg1)
    print("OnSubStart3002606")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002606(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002607(arg1)
    print("OnSubStart3002607")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002607(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002608(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002608(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002609(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002609(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002610(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002610(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002611(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002611(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002612(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002612(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002613(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002613(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002614(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002614(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002615(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002615(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002616(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002616(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:OnSubStart3002617(arg1)
    print("OnSubStart3002605")
    self:RequestInteraction("{QuestNpcID}")
end

function Quest30026:OnSubFinish3002617(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30026:Start()
    print("Start")
end

function Quest30026:OnDestroy()
    print("OnDestroy")
end

return Quest30026
