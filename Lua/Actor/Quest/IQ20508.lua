require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20508 = class("Quest20508", QuestActorProxy)
Quest20508.defaultAlias = "Quest20508"
local Q20508ClientConfig = require("Quest/Client/Q20508ClientConfig")

local targetData = Q20508ClientConfig.TargetData
local narratorData = Q20508ClientConfig.NarratorData

function Quest20508:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050801"] = self.OnSubStart2050801
    self.subStartHandlers["2050802"] = self.OnSubStart2050802
    self.subStartHandlers["2050803"] = self.OnSubStart2050803
    self.subStartHandlers["2050804"] = self.OnSubStart2050804
    self.subStartHandlers["2050805"] = self.OnSubStart2050805
    self.subStartHandlers["2050806"] = self.OnSubStart2050806
    self.subStartHandlers["2050807"] = self.OnSubStart2050807
    self.subStartHandlers["2050808"] = self.OnSubStart2050808
end

function Quest20508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050801"] = self.OnSubFinish2050801
    self.subFinishHandlers["2050802"] = self.OnSubFinish2050802
    self.subFinishHandlers["2050803"] = self.OnSubFinish2050803
    self.subFinishHandlers["2050804"] = self.OnSubFinish2050804
    self.subFinishHandlers["2050805"] = self.OnSubFinish2050805
    self.subFinishHandlers["2050806"] = self.OnSubFinish2050806
    self.subFinishHandlers["2050807"] = self.OnSubFinish2050807
    self.subFinishHandlers["2050808"] = self.OnSubFinish2050808
end

function Quest20508:OnSubStart2050802(arg1)
    print("2050802 start:Creat Target")
    self:SpawnGadget(arg1, targetData.GadgetID, 1)
    self:NarratorOnlyTaskLegacy(narratorData.Story1)
    self:EnterSceneLookCamera(targetData.TargetPos1, 0, 3, true)
end

function Quest20508:OnSubFinish2050802(arg1)
    print("2050802 finish:Creat Target")
    globalActor:UnSpawn(targetData.Alias)
end

function Quest20508:OnSubStart2050804(arg1)
    print("2050804 start:Creat Target")
    self:SpawnGadget(arg1, targetData.GadgetID, 1)
    self:NarratorOnlyTaskLegacy(narratorData.Story1)
    self:EnterSceneLookCamera(targetData.TargetPos2, 0, 3, true)
end

function Quest20508:OnSubFinish2050804(arg1)
    print("2050804 finish:Creat Target")
    globalActor:UnSpawn(targetData.Alias)
end

function Quest20508:OnSubStart2050806(arg1)
    print("2050806 start:Creat Target")
    self:SpawnGadget(arg1, targetData.GadgetID, 1)
    self:NarratorOnlyTaskLegacy(narratorData.Story1)
    self:EnterSceneLookCamera(targetData.TargetPos3, 0, 3, true)
end

function Quest20508:OnSubFinish2050806(arg1)
    print("2050806 finish:Creat Target")
    globalActor:UnSpawn(targetData.Alias)
end

function Quest20508:OnSubStart2050808(arg1)
    print("2050808 start:Creat Target")
    self:SpawnGadget(arg1, targetData.GadgetID, 1)
    self:NarratorOnlyTaskLegacy(narratorData.Story1, nil)
    self:EnterSceneLookCamera(targetData.TargetPos4, 0, 3, true)
end

function Quest20508:OnSubFinish2050808(arg1)
    print("2050808 finish:Creat Target")
    globalActor:UnSpawn(targetData.Alias)
end

function Quest20508:Start() end
function Quest20508:OnDestroy() end
return Quest20508
