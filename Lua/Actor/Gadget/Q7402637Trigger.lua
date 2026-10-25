require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402637Trigger = class("Q7402637Trigger", GadgetActorProxy)
Q7402637Trigger.defaultAlias = "Q7402637Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402637Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402637Trigger] OnPostDataPrepare")
    this = self
end

function Q7402637Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402637Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402637Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402637Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402637)
    this:DestroySelf()
end

function Q7402637Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402637Trigger] PreTriggerIn")
end

function Q7402637Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402637Trigger] LightUpTriggerIn")
end

function Q7402637Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402637Trigger] TriggerOut")
end

return Q7402637Trigger
