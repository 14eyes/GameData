require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600514Trigger = class("Q600514Trigger", GadgetActorProxy)
Q600514Trigger.defaultAlias = "Q600514Trigger"
local Q6005ClientConfig = require("Quest/Client/Q6005ClientConfig")

local this
local subIDs = Q6005ClientConfig.SubIDs
local datas = Q6005ClientConfig.Datas
local npcs = Q6005ClientConfig.Npcs
local points = Q6005ClientConfig.Points

function Q600514Trigger:OnPostDataPrepare()
    print("Q600514Trigger - OnPostDataPrepare")
    this = self
end

function Q600514Trigger:OnPostComponentPrepare()
    print("Q600514Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6005)
end

function Q600514Trigger:TriggerIn()
    print("Q600514Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600514)
    this:DestroySelf()
end

function Q600514Trigger:PreTriggerIn()
    print("Q600514Trigger - PreTriggerIn")
end

function Q600514Trigger:LightUpTriggerIn()
    print("Q600514Trigger - LightUpTriggerIn")
end

function Q600514Trigger:TriggerOut()
    print("Q600514Trigger - TriggerOut")
end

return Q600514Trigger
