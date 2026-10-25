require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614806Trigger_disableESC = class("Q7614806Trigger_disableESC", GadgetActorProxy)
Q7614806Trigger_disableESC.defaultAlias = "Q7614806Trigger_disableESC"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614806Trigger_disableESC:OnPostDataPrepare()
    print("Q7614806Trigger_disableESC - OnPostDataPrepare")
    this = self
end

function Q7614806Trigger_disableESC:OnPostComponentPrepare()
    print("Q7614806Trigger_disableESC - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(700, 1300, 1100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614806Trigger_disableESC:TriggerIn()
    print("Q7614806Trigger_disableESC - TriggerIn")
    globalActor:DisablePaimonInProfilePage({103})
end

function Q7614806Trigger_disableESC:PreTriggerIn()
    print("Q7614806Trigger_disableESC - PreTriggerIn")
end

function Q7614806Trigger_disableESC:LightUpTriggerIn()
    print("Q7614806Trigger_disableESC - LightUpTriggerIn")
end

function Q7614806Trigger_disableESC:TriggerOut()
    print("Q7614806Trigger_disableESC - TriggerOut")
    globalActor:ResumePaimonInProfilePage({103})
end

return Q7614806Trigger_disableESC
