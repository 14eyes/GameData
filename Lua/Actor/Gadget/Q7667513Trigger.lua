require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667513Trigger = class("Q7667513Trigger", GadgetActorProxy)
Q7667513Trigger.defaultAlias = "Q7667513Trigger"
local Q76675ClientConfig = require("Quest/Client/Q76675ClientConfig")

local this
local subIDs = Q76675ClientConfig.SubIDs
local datas = Q76675ClientConfig.Datas
local npcs = Q76675ClientConfig.Npcs
local points = Q76675ClientConfig.Points

function Q7667513Trigger:OnPostDataPrepare()
    print("Q7667513Trigger - OnPostDataPrepare")
    this = self
end

function Q7667513Trigger:OnPostComponentPrepare()
    print("Q7667513Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76675)
end

function Q7667513Trigger:TriggerIn()
    print("Q7667513Trigger - TriggerIn")
    globalActor:DisablePaimonInProfilePage({3})
end

function Q7667513Trigger:PreTriggerIn()
    print("Q7667513Trigger - PreTriggerIn")
end

function Q7667513Trigger:LightUpTriggerIn()
    print("Q7667513Trigger - LightUpTriggerIn")
end

function Q7667513Trigger:TriggerOut()
    print("Q7667513Trigger - TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
end

return Q7667513Trigger
