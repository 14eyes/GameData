require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601922Trigger = class("Q601922Trigger", GadgetActorProxy)
Q601922Trigger.defaultAlias = "Q601922Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601922Trigger:OnPostDataPrepare()
    print("Q601922Trigger - OnPostDataPrepare")
    this = self
end

function Q601922Trigger:OnPostComponentPrepare()
    print("Q601922Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601922Trigger:TriggerIn()
    print("Q601922Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601922)
    this:DestroySelf()
end

function Q601922Trigger:PreTriggerIn()
    print("Q601922Trigger - PreTriggerIn")
end

function Q601922Trigger:LightUpTriggerIn()
    print("Q601922Trigger - LightUpTriggerIn")
end

function Q601922Trigger:TriggerOut()
    print("Q601922Trigger - TriggerOut")
end

return Q601922Trigger
