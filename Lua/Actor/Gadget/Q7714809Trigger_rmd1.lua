require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714809Trigger_rmd1 = class("Q7714809Trigger_rmd1", GadgetActorProxy)
Q7714809Trigger_rmd1.defaultAlias = "Q7714809Trigger_rmd1"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714809Trigger_rmd1:OnPostDataPrepare()
    print("Q7714809Trigger_rmd1 - OnPostDataPrepare")
    this = self
end

function Q7714809Trigger_rmd1:OnPostComponentPrepare()
    print("Q7714809Trigger_rmd1 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714809Trigger_rmd1:TriggerIn()
    print("Q7714809Trigger_rmd1 - TriggerIn")
    this:DestroySelf()
end

function Q7714809Trigger_rmd1:PreTriggerIn()
    print("Q7714809Trigger_rmd1 - PreTriggerIn")
end

function Q7714809Trigger_rmd1:LightUpTriggerIn()
    print("Q7714809Trigger_rmd1 - LightUpTriggerIn")
end

function Q7714809Trigger_rmd1:TriggerOut()
    print("Q7714809Trigger_rmd1 - TriggerOut")
end

return Q7714809Trigger_rmd1
