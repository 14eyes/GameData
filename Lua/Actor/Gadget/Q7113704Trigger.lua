require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7113704Trigger = class("Q7113704Trigger", GadgetActorProxy)
Q7113704Trigger.defaultAlias = "Q7113704Trigger"
local Q71137ClientConfig = require("Quest/Client/Q71137ClientConfig")

local this
local subIDs = Q71137ClientConfig.SubIDs
local points = Q71137ClientConfig.Points
local datas = Q71137ClientConfig.Datas

function Q7113704Trigger:OnPostDataPrepare()
    print("[MainId: 71137][Trigger: Q7113704Trigger] OnPostDataPrepare")
    this = self
end

function Q7113704Trigger:OnPostComponentPrepare()
    print("[MainId: 71137][Trigger: Q7113704Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71137)
end

function Q7113704Trigger:TriggerIn()
    print("[MainId: 71137][Trigger: Q7113704Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7113704)
    this:DestroySelf()
end

function Q7113704Trigger:PreTriggerIn()
    print("[MainId: 71137][Trigger: Q7113704Trigger] PreTriggerIn")
end

function Q7113704Trigger:LightUpTriggerIn()
    print("[MainId: 71137][Trigger: Q7113704Trigger] LightUpTriggerIn")
end

function Q7113704Trigger:TriggerOut()
    print("[MainId: 71137][Trigger: Q7113704Trigger] TriggerOut")
end

return Q7113704Trigger
