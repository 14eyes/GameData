require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7518504EndTrigger = class("Q7518504EndTrigger", GadgetActorProxy)
Q7518504EndTrigger.defaultAlias = "Q7518504EndTrigger"
local Q75185ClientConfig = require("Quest/Client/Q75185ClientConfig")

local this
local subIDs = Q75185ClientConfig.SubIDs
local datas = Q75185ClientConfig.Datas
local npcs = Q75185ClientConfig.Npcs
local points = Q75185ClientConfig.Points

function Q7518504EndTrigger:OnPostDataPrepare()
    print("Q7518504EndTrigger - OnPostDataPrepare")
    this = self
end

function Q7518504EndTrigger:OnPostComponentPrepare()
    print("Q7518504EndTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75185)
end

function Q7518504EndTrigger:TriggerIn()
    print("Q7518504EndTrigger - TriggerIn")
    actorMgr:GetActor("75185"):RequestInteraction(npcs.Npc6345.alias, "", true)
    this:DestroySelf()
end

function Q7518504EndTrigger:PreTriggerIn()
    print("Q7518504EndTrigger - PreTriggerIn")
end

function Q7518504EndTrigger:LightUpTriggerIn()
    print("Q7518504EndTrigger - LightUpTriggerIn")
end

function Q7518504EndTrigger:TriggerOut()
    print("Q7518504EndTrigger - TriggerOut")
end

return Q7518504EndTrigger
