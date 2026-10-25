require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest420 = class("Quest420", QuestActorProxy)
Quest420.defaultAlias = "Quest420"
local Q420ClientConfig = require("Quest/Client/Q420ClientConfig")

local subIDs = Q420ClientConfig.SubIDs

function Quest420:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42001"] = self.OnSubStart42001
end

function Quest420:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42001"] = self.OnSubFinish42001
end

function Quest420:OnSubFinish42001(arg1)
    print("42001 finish: Play CutScene")
    self:PlayCutscene(Q420ClientConfig.SwordBreak)
end

function Quest420:Start() end
function Quest420:OnDestroy() end
return Quest420
