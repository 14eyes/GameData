require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614806Trigger_rmd = class("Q7614806Trigger_rmd", GadgetActorProxy)
Q7614806Trigger_rmd.defaultAlias = "Q7614806Trigger_rmd"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614806Trigger_rmd:OnPostDataPrepare()
    print("Q7614806Trigger_rmd - OnPostDataPrepare")
    this = self
end

function Q7614806Trigger_rmd:OnPostComponentPrepare()
    print("Q7614806Trigger_rmd - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614806Trigger_rmd:TriggerIn()
    print("Q7614806Trigger_rmd - TriggerIn")
    this:DestroySelf()
end

function Q7614806Trigger_rmd:PreTriggerIn()
    print("Q7614806Trigger_rmd - PreTriggerIn")
end

function Q7614806Trigger_rmd:LightUpTriggerIn()
    print("Q7614806Trigger_rmd - LightUpTriggerIn")
end

function Q7614806Trigger_rmd:TriggerOut()
    print("Q7614806Trigger_rmd - TriggerOut")
end

return Q7614806Trigger_rmd
