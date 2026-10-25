require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest992 = class("Quest992", QuestActorProxy)
Quest992.defaultAlias = "Quest992"
local Q992ClientConfig = require("Quest/Client/Q992ClientConfig")

util.do_require("Quest/Share/Q992ShareConfig")
local v = AmborData
local subIDs = Q992ClientConfig.SubIDs

function Quest992:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99201"] = self.OnSubStart99201
    self.subStartHandlers["99202"] = self.OnSubStart99202
    self.subStartHandlers["99203"] = self.OnSubStart99203
end

function Quest992:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99201"] = self.OnSubFinish99201
    self.subFinishHandlers["99202"] = self.OnSubFinish99202
    self.subFinishHandlers["99203"] = self.OnSubFinish99203
end

function Quest992:OnSubStart99201(arg1)
    print("99201 start:...")
    self:CreateQuestNpc(arg1, v.AmborID)
end

function Quest992:OnSubStart99202(arg1)
    print("99202 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, v.AmborID)
    end)
end

function Quest992:OnSubStart99203(arg1)
    print("99203 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, v.AmborID)
    end)
end

function Quest992:OnSubFinish99203(arg1)
    print("OnFinished 99203")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(v.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest992:Start() end
function Quest992:OnDestroy() end
return Quest992
