require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600139Trigger = class("Q600139Trigger", GadgetActorProxy)
Q600139Trigger.defaultAlias = "Q600139Trigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600139Trigger:OnPostDataPrepare()
    print("Q600139Trigger - OnPostDataPrepare")
    this = self
end

function Q600139Trigger:OnPostComponentPrepare()
    print("Q600139Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(65, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600139Trigger:TriggerIn()
    print("Q600139Trigger - TriggerIn")
    actorMgr:GetActor("6001"):RequestInteraction(npcs.Npc1315.alias, "", true)
    this:DestroySelf()
end

function Q600139Trigger:PreTriggerIn()
    print("Q600139Trigger - PreTriggerIn")
end

function Q600139Trigger:LightUpTriggerIn()
    print("Q600139Trigger - LightUpTriggerIn")
end

function Q600139Trigger:TriggerOut()
    print("Q600139Trigger - TriggerOut")
end

return Q600139Trigger
