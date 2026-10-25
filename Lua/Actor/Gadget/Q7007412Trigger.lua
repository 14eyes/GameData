require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007412Trigger = class("Q7007412Trigger", GadgetActorProxy)
Q7007412Trigger.defaultAlias = "Q7007412Trigger"
local Q70074ClientConfig = require("Quest/Client/Q70074ClientConfig")

local this
local subIDs = Q70074ClientConfig.SubIDs
local datas = Q70074ClientConfig.Datas
local npcs = Q70074ClientConfig.Npcs
local points = Q70074ClientConfig.Points

function Q7007412Trigger:OnPostDataPrepare()
    print("Q7007412Trigger - OnPostDataPrepare")
    this = self
end

function Q7007412Trigger:OnPostComponentPrepare()
    print("Q7007412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70074)
end

function Q7007412Trigger:TriggerIn()
    print("Q7007412Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007412)
    this:DestroySelf()
end

function Q7007412Trigger:PreTriggerIn()
    print("Q7007412Trigger - PreTriggerIn")
end

function Q7007412Trigger:LightUpTriggerIn()
    print("Q7007412Trigger - LightUpTriggerIn")
end

function Q7007412Trigger:TriggerOut()
    print("Q7007412Trigger - TriggerOut")
end

return Q7007412Trigger
