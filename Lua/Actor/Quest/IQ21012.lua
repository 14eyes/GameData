require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21012 = class("Quest21012", QuestActorProxy)
Quest21012.defaultAlias = "Quest21012"
local femaleData = require("Quest/Client/Q21012ClientConfig").FemaleData

function Quest21012:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2101201"] = self.OnSubStart2101201
    self.subStartHandlers["2101202"] = self.OnSubStart2101202
    self.subStartHandlers["2101203"] = self.OnSubStart2101203
    self.subStartHandlers["2101204"] = self.OnSubStart2101204
    self.subStartHandlers["2101205"] = self.OnSubStart2101205
    self.subStartHandlers["2101206"] = self.OnSubStart2101206
    self.subStartHandlers["2101207"] = self.OnSubStart2101207
    self.subStartHandlers["2101208"] = self.OnSubStart2101208
    self.subStartHandlers["2101209"] = self.OnSubStart2101209
end

function Quest21012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2101201"] = self.OnSubFinish2101201
    self.subFinishHandlers["2101202"] = self.OnSubFinish2101202
    self.subFinishHandlers["2101203"] = self.OnSubFinish2101203
    self.subFinishHandlers["2101204"] = self.OnSubFinish2101204
    self.subFinishHandlers["2101205"] = self.OnSubFinish2101205
    self.subFinishHandlers["2101206"] = self.OnSubFinish2101206
    self.subFinishHandlers["2101207"] = self.OnSubFinish2101207
    self.subFinishHandlers["2101208"] = self.OnSubFinish2101208
    self.subFinishHandlers["2101209"] = self.OnSubFinish2101209
end

function Quest21012:Create02()
    actorMgr:CreateActorWithPos(femaleData.Alias, femaleData.Script, femaleData.ID, 0, femaleData.BornPos, femaleData.BornPos, true, false)
end

function Quest21012:OnSubStart2101202(arg1)
    self:CallDelay(1, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:ShowBlackScreen(0.5, 1, 0.5, arg1.Create02)
        end)
    end)
end

function Quest21012:Start() end
function Quest21012:OnDestroy() end
return Quest21012
