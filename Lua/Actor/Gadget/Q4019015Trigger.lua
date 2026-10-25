require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019015Trigger = class("Q4019015Trigger", GadgetActorProxy)
Q4019015Trigger.defaultAlias = "Q4019015Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019015Trigger:OnPostDataPrepare()
    print("Q4019015Trigger - OnPostDataPrepare")
    this = self
end

function Q4019015Trigger:OnPostComponentPrepare()
    print("Q4019015Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019015Trigger:TriggerIn()
    print("Q4019015Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4019015Trigger:PreTriggerIn()
    print("Q4019015Trigger - PreTriggerIn")
end

function Q4019015Trigger:LightUpTriggerIn()
    print("Q4019015Trigger - LightUpTriggerIn")
end

function Q4019015Trigger:TriggerOut()
    print("Q4019015Trigger - TriggerOut")
end

return Q4019015Trigger
