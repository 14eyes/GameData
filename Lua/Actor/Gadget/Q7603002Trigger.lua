require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603002Trigger = class("Q7603002Trigger", GadgetActorProxy)
Q7603002Trigger.defaultAlias = "Q7603002Trigger"
local Q76030ClientConfig = require("Quest/Client/Q76030ClientConfig")

local this
local subIDs = Q76030ClientConfig.SubIDs
local datas = Q76030ClientConfig.Datas
local npcs = Q76030ClientConfig.Npcs
local points = Q76030ClientConfig.Points

function Q7603002Trigger:OnPostDataPrepare()
    print("Q7603002Trigger - OnPostDataPrepare")
    this = self
end

function Q7603002Trigger:OnPostComponentPrepare()
    print("Q7603002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5.065394, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76030)
end

function Q7603002Trigger:TriggerIn()
    print("Q7603002Trigger - TriggerIn")
    actorMgr:GetActor("76030"):EnterSceneLookCamera({x = 1736.266, y = 202.204, z = 10738.48}, 0, 3, false, true)
    this:DestroySelf()
end

function Q7603002Trigger:PreTriggerIn()
    print("Q7603002Trigger - PreTriggerIn")
end

function Q7603002Trigger:LightUpTriggerIn()
    print("Q7603002Trigger - LightUpTriggerIn")
end

function Q7603002Trigger:TriggerOut()
    print("Q7603002Trigger - TriggerOut")
end

return Q7603002Trigger
