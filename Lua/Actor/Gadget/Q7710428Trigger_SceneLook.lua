require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710428Trigger_SceneLook = class("Q7710428Trigger_SceneLook", GadgetActorProxy)
Q7710428Trigger_SceneLook.defaultAlias = "Q7710428Trigger_SceneLook"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710428Trigger_SceneLook:OnPostDataPrepare()
    print("Q7710428Trigger_SceneLook - OnPostDataPrepare")
    this = self
end

function Q7710428Trigger_SceneLook:OnPostComponentPrepare()
    print("Q7710428Trigger_SceneLook - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710428Trigger_SceneLook:TriggerIn()
    print("Q7710428Trigger_SceneLook - TriggerIn")
    this:DestroySelf()
end

function Q7710428Trigger_SceneLook:PreTriggerIn()
    print("Q7710428Trigger_SceneLook - PreTriggerIn")
end

function Q7710428Trigger_SceneLook:LightUpTriggerIn()
    print("Q7710428Trigger_SceneLook - LightUpTriggerIn")
end

function Q7710428Trigger_SceneLook:TriggerOut()
    print("Q7710428Trigger_SceneLook - TriggerOut")
end

return Q7710428Trigger_SceneLook
