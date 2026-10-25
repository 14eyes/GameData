require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204702Trigger = class("Q1204702Trigger", GadgetActorProxy)
Q1204702Trigger.defaultAlias = "Q1204702Trigger"
local Q12047ClientConfig = require("Quest/Client/Q12047ClientConfig")

local this
local subIDs = Q12047ClientConfig.SubIDs
local datas = Q12047ClientConfig.Datas
local npcs = Q12047ClientConfig.Npcs
local points = Q12047ClientConfig.Points

function Q1204702Trigger:OnPostDataPrepare()
    print("Q1204702Trigger - OnPostDataPrepare")
    this = self
end

function Q1204702Trigger:OnPostComponentPrepare()
    print("Q1204702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12047)
end

function Q1204702Trigger:TriggerIn()
    print("Q1204702Trigger - TriggerIn")
    this:DestroySelf()
end

function Q1204702Trigger:PreTriggerIn()
    print("Q1204702Trigger - PreTriggerIn")
end

function Q1204702Trigger:LightUpTriggerIn()
    print("Q1204702Trigger - LightUpTriggerIn")
end

function Q1204702Trigger:TriggerOut()
    print("Q1204702Trigger - TriggerOut")
end

return Q1204702Trigger
