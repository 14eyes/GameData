require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1018 = class("Quest1018", QuestActorProxy)
Quest1018.defaultAlias = "Quest1018"
local clientData
local subIDs
local n = 1018
local paimonData
local gongziData

function Quest1018:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 1018
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
end

function Quest1018:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101801"] = self.OnSubStart101801
end

function Quest1018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101801"] = self.OnSubFinish101801
end

function Quest1018:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest1018:OnSubStart101801(arg1)
    print("101801 start:...")
    self:CreateQuestNpc(arg1, gongziData.ID)
end

function Quest1018:OnSubFinish101801(arg1)
    if self:GetQuestNpcActor(gongziData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(gongziData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1018:Start() end
function Quest1018:OnDestroy() end
return Quest1018
