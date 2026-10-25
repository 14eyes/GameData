require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007401Trigger = class("Q7007401Trigger", GadgetActorProxy)
Q7007401Trigger.defaultAlias = "Q7007401Trigger"
local Q70074ClientConfig = require("Quest/Client/Q70074ClientConfig")

local this
local subIDs = Q70074ClientConfig.SubIDs
local datas = Q70074ClientConfig.Datas
local npcs = Q70074ClientConfig.Npcs
local points = Q70074ClientConfig.Points

function Q7007401Trigger:OnPostDataPrepare()
    print("Q7007401Trigger - OnPostDataPrepare")
    this = self
end

function Q7007401Trigger:OnPostComponentPrepare()
    print("Q7007401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70074)
end

function Q7007401Trigger:TriggerIn()
    print("Q7007401Trigger - TriggerIn")
    actorMgr:GetActor("70074"):RequestInteraction(npcs.Npc1310.alias, "", true)
end

function Q7007401Trigger:PreTriggerIn()
    print("Q7007401Trigger - PreTriggerIn")
end

function Q7007401Trigger:LightUpTriggerIn()
    print("Q7007401Trigger - LightUpTriggerIn")
end

function Q7007401Trigger:TriggerOut()
    print("Q7007401Trigger - TriggerOut")
end

return Q7007401Trigger
