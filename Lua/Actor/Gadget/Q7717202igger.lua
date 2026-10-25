require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7717202igger = class("Q7717202igger", GadgetActorProxy)
Q7717202igger.defaultAlias = "Q7717202igger"
local Q77172ClientConfig = require("Quest/Client/Q77172ClientConfig")

local this
local subIDs = Q77172ClientConfig.SubIDs
local npcs = Q77172ClientConfig.Npcs
local points = Q77172ClientConfig.Points

function Q7717202igger:OnPostDataPrepare()
    print("Q7717202igger - OnPostDataPrepare")
    this = self
end

function Q7717202igger:OnPostComponentPrepare()
    print("Q7717202igger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77172)
end

function Q7717202igger:TriggerIn()
    print("Q7717202igger - TriggerIn")
    actorMgr:GetActor("77172"):RequestInteraction(npcs.Npc22629.alias, "", true)
end

function Q7717202igger:PreTriggerIn()
    print("Q7717202igger - PreTriggerIn")
end

function Q7717202igger:LightUpTriggerIn()
    print("Q7717202igger - LightUpTriggerIn")
end

function Q7717202igger:TriggerOut()
    print("Q7717202igger - TriggerOut")
end

return Q7717202igger
