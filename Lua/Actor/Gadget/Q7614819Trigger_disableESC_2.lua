require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614819Trigger_disableESC_2 = class("Q7614819Trigger_disableESC_2", GadgetActorProxy)
Q7614819Trigger_disableESC_2.defaultAlias = "Q7614819Trigger_disableESC_2"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614819Trigger_disableESC_2:OnPostDataPrepare()
    print("Q7614819Trigger_disableESC_2 - OnPostDataPrepare")
    this = self
end

function Q7614819Trigger_disableESC_2:OnPostComponentPrepare()
    print("Q7614819Trigger_disableESC_2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(400, 400, 200, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614819Trigger_disableESC_2:TriggerIn()
    print("Q7614819Trigger_disableESC_2 - TriggerIn")
    globalActor:DisablePaimonInProfilePage({103})
end

function Q7614819Trigger_disableESC_2:PreTriggerIn()
    print("Q7614819Trigger_disableESC_2 - PreTriggerIn")
end

function Q7614819Trigger_disableESC_2:LightUpTriggerIn()
    print("Q7614819Trigger_disableESC_2 - LightUpTriggerIn")
end

function Q7614819Trigger_disableESC_2:TriggerOut()
    print("Q7614819Trigger_disableESC_2 - TriggerOut")
    globalActor:ResumePaimonInProfilePage({103})
end

return Q7614819Trigger_disableESC_2
