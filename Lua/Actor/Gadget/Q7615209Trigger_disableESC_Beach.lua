require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615209Trigger_disableESC_Beach = class("Q7615209Trigger_disableESC_Beach", GadgetActorProxy)
Q7615209Trigger_disableESC_Beach.defaultAlias = "Q7615209Trigger_disableESC_Beach"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615209Trigger_disableESC_Beach:OnPostDataPrepare()
    print("Q7615209Trigger_disableESC_Beach - OnPostDataPrepare")
    this = self
end

function Q7615209Trigger_disableESC_Beach:OnPostComponentPrepare()
    print("Q7615209Trigger_disableESC_Beach - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615209Trigger_disableESC_Beach:TriggerIn()
    print("Q7615209Trigger_disableESC_Beach - TriggerIn")
    globalActor:DisablePaimonInProfilePage(103)
end

function Q7615209Trigger_disableESC_Beach:PreTriggerIn()
    print("Q7615209Trigger_disableESC_Beach - PreTriggerIn")
end

function Q7615209Trigger_disableESC_Beach:LightUpTriggerIn()
    print("Q7615209Trigger_disableESC_Beach - LightUpTriggerIn")
end

function Q7615209Trigger_disableESC_Beach:TriggerOut()
    print("Q7615209Trigger_disableESC_Beach - TriggerOut")
    globalActor:ResumePaimonInProfilePage(103)
end

return Q7615209Trigger_disableESC_Beach
