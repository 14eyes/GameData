require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019118Trigger = class("Q4019118Trigger", GadgetActorProxy)
Q4019118Trigger.defaultAlias = "Q4019118Trigger"
local Q40191ClientConfig = require("Quest/Client/Q40191ClientConfig")

local this
local subIDs = Q40191ClientConfig.SubIDs
local datas = Q40191ClientConfig.Datas
local npcs = Q40191ClientConfig.Npcs
local points = Q40191ClientConfig.Points

function Q4019118Trigger:OnPostDataPrepare()
    print("Q4019118Trigger - OnPostDataPrepare")
    this = self
end

function Q4019118Trigger:OnPostComponentPrepare()
    print("Q4019118Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40191)
end

function Q4019118Trigger:TriggerIn()
    print("Q4019118Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4019118Trigger:PreTriggerIn()
    print("Q4019118Trigger - PreTriggerIn")
end

function Q4019118Trigger:LightUpTriggerIn()
    print("Q4019118Trigger - LightUpTriggerIn")
end

function Q4019118Trigger:TriggerOut()
    print("Q4019118Trigger - TriggerOut")
end

return Q4019118Trigger
