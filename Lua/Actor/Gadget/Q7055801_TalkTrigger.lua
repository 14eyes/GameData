require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7055801_TalkTrigger = class("Q7055801_TalkTrigger", GadgetActorProxy)
Q7055801_TalkTrigger.defaultAlias = "Q7055801_TalkTrigger"
local Q70558ClientConfig = require("Quest/Client/Q70558ClientConfig")

local this
local subIDs = Q70558ClientConfig.SubIDs
local npcs = Q70558ClientConfig.Npcs
local points = Q70558ClientConfig.Points

function Q7055801_TalkTrigger:OnPostDataPrepare()
    print("Q7055801_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7055801_TalkTrigger:OnPostComponentPrepare()
    print("Q7055801_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70558)
end

function Q7055801_TalkTrigger:TriggerIn()
    print("Q7055801_TalkTrigger - TriggerIn")
    actorMgr:GetActor("70558"):RequestInteraction(npcs.Npc31003.alias, "", true)
    this:DestroySelf()
end

function Q7055801_TalkTrigger:PreTriggerIn()
    print("Q7055801_TalkTrigger - PreTriggerIn")
end

function Q7055801_TalkTrigger:LightUpTriggerIn()
    print("Q7055801_TalkTrigger - LightUpTriggerIn")
end

function Q7055801_TalkTrigger:TriggerOut()
    print("Q7055801_TalkTrigger - TriggerOut")
end

return Q7055801_TalkTrigger
