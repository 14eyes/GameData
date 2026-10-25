require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70551Trigger_2 = class("Q70551Trigger_2", GadgetActorProxy)
Q70551Trigger_2.defaultAlias = "Q70551Trigger_2"
local Q70551ClientConfig = require("Quest/Client/Q70551ClientConfig")

local this
local subIDs = Q70551ClientConfig.SubIDs
local npcs = Q70551ClientConfig.Npcs
local points = Q70551ClientConfig.Points

function Q70551Trigger_2:OnPostDataPrepare()
    print("Q70551Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q70551Trigger_2:OnPostComponentPrepare()
    print("Q70551Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70551)
end

function Q70551Trigger_2:TriggerIn()
    print("Q70551Trigger_2 - TriggerIn")
    actorMgr:GetActor("70551"):RequestInteraction(npcs.Npc1090.alias, "", true)
    this:DestroySelf()
end

function Q70551Trigger_2:PreTriggerIn()
    print("Q70551Trigger_2 - PreTriggerIn")
end

function Q70551Trigger_2:LightUpTriggerIn()
    print("Q70551Trigger_2 - LightUpTriggerIn")
end

function Q70551Trigger_2:TriggerOut()
    print("Q70551Trigger_2 - TriggerOut")
end

return Q70551Trigger_2
