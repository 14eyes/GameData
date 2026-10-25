require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713104Trigger = class("Q7713104Trigger", GadgetActorProxy)
Q7713104Trigger.defaultAlias = "Q7713104Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713104Trigger:OnPostDataPrepare()
    print("Q7713104Trigger - OnPostDataPrepare")
    this = self
end

function Q7713104Trigger:OnPostComponentPrepare()
    print("Q7713104Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 12, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713104Trigger:TriggerIn()
    print("Q7713104Trigger - TriggerIn")
    actorMgr:GetActor("77131"):QuestNarratorTask(datas.NarratorWithId_7713104, nil)
    this:DestroySelf()
end

function Q7713104Trigger:PreTriggerIn()
    print("Q7713104Trigger - PreTriggerIn")
end

function Q7713104Trigger:LightUpTriggerIn()
    print("Q7713104Trigger - LightUpTriggerIn")
end

function Q7713104Trigger:TriggerOut()
    print("Q7713104Trigger - TriggerOut")
end

return Q7713104Trigger
