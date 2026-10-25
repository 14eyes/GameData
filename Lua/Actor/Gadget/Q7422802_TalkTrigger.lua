require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422802_TalkTrigger = class("Q7422802_TalkTrigger", GadgetActorProxy)
Q7422802_TalkTrigger.defaultAlias = "Q7422802_TalkTrigger"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422802_TalkTrigger:OnPostDataPrepare()
    print("Q7422802_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7422802_TalkTrigger:OnPostComponentPrepare()
    print("Q7422802_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422802_TalkTrigger:TriggerIn()
    print("Q7422802_TalkTrigger - TriggerIn")
    this:DestroySelf()
end

function Q7422802_TalkTrigger:PreTriggerIn()
    print("Q7422802_TalkTrigger - PreTriggerIn")
end

function Q7422802_TalkTrigger:LightUpTriggerIn()
    print("Q7422802_TalkTrigger - LightUpTriggerIn")
end

function Q7422802_TalkTrigger:TriggerOut()
    print("Q7422802_TalkTrigger - TriggerOut")
end

return Q7422802_TalkTrigger
