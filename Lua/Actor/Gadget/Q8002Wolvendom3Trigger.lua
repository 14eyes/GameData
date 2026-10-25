require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8002Wolvendom3Trigger = class("Q8002Wolvendom3Trigger", GadgetActorProxy)
Q8002Wolvendom3Trigger.defaultAlias = "Q8002Wolvendom3Trigger"
local Q8002ClientConfig = require("Quest/Client/Q8002ClientConfig")

local subIDs = Q8002ClientConfig.SubIDs
local npcs = Q8002ClientConfig.Npcs
local datas = Q8002ClientConfig.Datas

function Q8002Wolvendom3Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8002Wolvendom3Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8002Wolvendom3Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8002"):RequestInteraction(npcs.RazorData.alias)
    self:DestroySelf()
end

function Q8002Wolvendom3Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8002Wolvendom3Trigger
