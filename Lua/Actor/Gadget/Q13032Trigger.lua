require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032Trigger = class("Q13032Trigger", GadgetActorProxy)
Q13032Trigger.defaultAlias = "Q13032Trigger"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032Trigger:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032Trigger] OnPostDataPrepare")
    this = self
end

function Q13032Trigger:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032Trigger:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303208)
    this:DestroySelf()
end

function Q13032Trigger:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032Trigger] PreTriggerIn")
end

function Q13032Trigger:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032Trigger] LightUpTriggerIn")
end

function Q13032Trigger:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032Trigger] TriggerOut")
end

return Q13032Trigger
