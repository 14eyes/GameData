require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402623Trigger = class("Q7402623Trigger", GadgetActorProxy)
Q7402623Trigger.defaultAlias = "Q7402623Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402623Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402623Trigger] OnPostDataPrepare")
    this = self
end

function Q7402623Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402623Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402623Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402623Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402623)
    this:DestroySelf()
end

function Q7402623Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402623Trigger] PreTriggerIn")
end

function Q7402623Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402623Trigger] LightUpTriggerIn")
end

function Q7402623Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402623Trigger] TriggerOut")
end

return Q7402623Trigger
