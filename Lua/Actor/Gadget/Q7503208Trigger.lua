require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503208Trigger = class("Q7503208Trigger", GadgetActorProxy)
Q7503208Trigger.defaultAlias = "Q7503208Trigger"
local Q75032ClientConfig = require("Quest/Client/Q75032ClientConfig")

local this
local subIDs = Q75032ClientConfig.SubIDs
local npcs = Q75032ClientConfig.Npcs
local datas = Q75032ClientConfig.Datas

function Q7503208Trigger:OnPostDataPrepare()
    print("[MainId: 75032][Trigger: Q7503208Trigger] OnPostDataPrepare")
    this = self
end

function Q7503208Trigger:OnPostComponentPrepare()
    print("[MainId: 75032][Trigger: Q7503208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75032)
end

function Q7503208Trigger:TriggerIn()
    print("[MainId: 75032][Trigger: Q7503208Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7503208)
    this:DestroySelf()
end

function Q7503208Trigger:PreTriggerIn()
    print("[MainId: 75032][Trigger: Q7503208Trigger] PreTriggerIn")
end

function Q7503208Trigger:LightUpTriggerIn()
    print("[MainId: 75032][Trigger: Q7503208Trigger] LightUpTriggerIn")
end

function Q7503208Trigger:TriggerOut()
    print("[MainId: 75032][Trigger: Q7503208Trigger] TriggerOut")
end

return Q7503208Trigger
