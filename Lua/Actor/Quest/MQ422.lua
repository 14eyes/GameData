require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest422 = class("Quest422", QuestActorProxy)
Quest422.defaultAlias = "Quest422"
local Q422ClientConfig = require("Quest/Client/Q422ClientConfig")

local subIDs = Q422ClientConfig.SubIDs

function Quest422:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42201"] = self.OnSubStart42201
end

function Quest422:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42201"] = self.OnSubFinish42201
end

function Quest422:OnSubFinish42201(arg1)
    print("42201 finish: Play CutScene")
    self:PlayCutscene(Q422ClientConfig.SwordBreak)
end

function Quest422:Start() end
function Quest422:OnDestroy() end
return Quest422
