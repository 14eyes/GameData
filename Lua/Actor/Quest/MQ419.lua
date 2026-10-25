require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest419 = class("Quest419", QuestActorProxy)
Quest419.defaultAlias = "Quest419"
local Q419ClientConfig = require("Quest/Client/Q419ClientConfig")

local subIDs = Q419ClientConfig.SubIDs

function Quest419:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["41901"] = self.OnSubStart41901
end

function Quest419:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["41901"] = self.OnSubFinish41901
end

function Quest419:OnSubFinish41901(arg1)
    print("41901 finish: Play CutScene")
    self:PlayCutscene(Q419ClientConfig.SwordBreak)
end

function Quest419:Start() end
function Quest419:OnDestroy() end
return Quest419
