require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422809TalkTrigger = class("Q7422809TalkTrigger", GadgetActorProxy)
Q7422809TalkTrigger.defaultAlias = "Q7422809TalkTrigger"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422809TalkTrigger:OnPostDataPrepare()
    print("Q7422809TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7422809TalkTrigger:OnPostComponentPrepare()
    print("Q7422809TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422809TalkTrigger:TriggerIn()
    print("Q7422809TalkTrigger - TriggerIn")
end

function Q7422809TalkTrigger:PreTriggerIn()
    print("Q7422809TalkTrigger - PreTriggerIn")
end

function Q7422809TalkTrigger:LightUpTriggerIn()
    print("Q7422809TalkTrigger - LightUpTriggerIn")
end

function Q7422809TalkTrigger:TriggerOut()
    print("Q7422809TalkTrigger - TriggerOut")
end

return Q7422809TalkTrigger
