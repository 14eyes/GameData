require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422807TalkTrigger = class("Q7422807TalkTrigger", GadgetActorProxy)
Q7422807TalkTrigger.defaultAlias = "Q7422807TalkTrigger"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422807TalkTrigger:OnPostDataPrepare()
    print("Q7422807TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7422807TalkTrigger:OnPostComponentPrepare()
    print("Q7422807TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422807TalkTrigger:TriggerIn()
    print("Q7422807TalkTrigger - TriggerIn")
    actorMgr:GetActor("74228"):RequestInteraction(npcs.Npc1076.alias, "", true)
    this:DestroySelf()
end

function Q7422807TalkTrigger:PreTriggerIn()
    print("Q7422807TalkTrigger - PreTriggerIn")
end

function Q7422807TalkTrigger:LightUpTriggerIn()
    print("Q7422807TalkTrigger - LightUpTriggerIn")
end

function Q7422807TalkTrigger:TriggerOut()
    print("Q7422807TalkTrigger - TriggerOut")
end

return Q7422807TalkTrigger
