require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7650901_TalkTrigger = class("Q7650901_TalkTrigger", GadgetActorProxy)
Q7650901_TalkTrigger.defaultAlias = "Q7650901_TalkTrigger"
local Q76509ClientConfig = require("Quest/Client/Q76509ClientConfig")

local this
local subIDs = Q76509ClientConfig.SubIDs
local npcs = Q76509ClientConfig.Npcs
local points = Q76509ClientConfig.Points

function Q7650901_TalkTrigger:OnPostDataPrepare()
    print("Q7650901_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7650901_TalkTrigger:OnPostComponentPrepare()
    print("Q7650901_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76509)
end

function Q7650901_TalkTrigger:TriggerIn()
    print("Q7650901_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76509"):RequestInteraction(npcs.Npc30956.alias, "", true)
    this:DestroySelf()
end

function Q7650901_TalkTrigger:PreTriggerIn()
    print("Q7650901_TalkTrigger - PreTriggerIn")
end

function Q7650901_TalkTrigger:LightUpTriggerIn()
    print("Q7650901_TalkTrigger - LightUpTriggerIn")
end

function Q7650901_TalkTrigger:TriggerOut()
    print("Q7650901_TalkTrigger - TriggerOut")
end

return Q7650901_TalkTrigger
