require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7113702Trigger = class("Q7113702Trigger", GadgetActorProxy)
Q7113702Trigger.defaultAlias = "Q7113702Trigger"
local Q71137ClientConfig = require("Quest/Client/Q71137ClientConfig")

local this
local subIDs = Q71137ClientConfig.SubIDs
local points = Q71137ClientConfig.Points
local datas = Q71137ClientConfig.Datas

function Q7113702Trigger:OnPostDataPrepare()
    print("[MainId: 71137][Trigger: Q7113702Trigger] OnPostDataPrepare")
    this = self
end

function Q7113702Trigger:OnPostComponentPrepare()
    print("[MainId: 71137][Trigger: Q7113702Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71137)
end

function Q7113702Trigger:TriggerIn()
    print("[MainId: 71137][Trigger: Q7113702Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7113702)
    this:DestroySelf()
end

function Q7113702Trigger:PreTriggerIn()
    print("[MainId: 71137][Trigger: Q7113702Trigger] PreTriggerIn")
end

function Q7113702Trigger:LightUpTriggerIn()
    print("[MainId: 71137][Trigger: Q7113702Trigger] LightUpTriggerIn")
end

function Q7113702Trigger:TriggerOut()
    print("[MainId: 71137][Trigger: Q7113702Trigger] TriggerOut")
end

return Q7113702Trigger
