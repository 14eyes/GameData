require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7113703Trigger = class("Q7113703Trigger", GadgetActorProxy)
Q7113703Trigger.defaultAlias = "Q7113703Trigger"
local Q71137ClientConfig = require("Quest/Client/Q71137ClientConfig")

local this
local subIDs = Q71137ClientConfig.SubIDs
local points = Q71137ClientConfig.Points
local datas = Q71137ClientConfig.Datas

function Q7113703Trigger:OnPostDataPrepare()
    print("[MainId: 71137][Trigger: Q7113703Trigger] OnPostDataPrepare")
    this = self
end

function Q7113703Trigger:OnPostComponentPrepare()
    print("[MainId: 71137][Trigger: Q7113703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71137)
end

function Q7113703Trigger:TriggerIn()
    print("[MainId: 71137][Trigger: Q7113703Trigger] TriggerIn")
end

function Q7113703Trigger:PreTriggerIn()
    print("[MainId: 71137][Trigger: Q7113703Trigger] PreTriggerIn")
end

function Q7113703Trigger:LightUpTriggerIn()
    print("[MainId: 71137][Trigger: Q7113703Trigger] LightUpTriggerIn")
end

function Q7113703Trigger:TriggerOut()
    print("[MainId: 71137][Trigger: Q7113703Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7113703)
    this:DestroySelf()
end

return Q7113703Trigger
