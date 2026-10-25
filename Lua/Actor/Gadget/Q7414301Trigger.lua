require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414301Trigger = class("Q7414301Trigger", GadgetActorProxy)
Q7414301Trigger.defaultAlias = "Q7414301Trigger"
local Q74143ClientConfig = require("Quest/Client/Q74143ClientConfig")

local this
local subIDs = Q74143ClientConfig.SubIDs
local npcs = Q74143ClientConfig.Npcs
local points = Q74143ClientConfig.Points
local datas = Q74143ClientConfig.Datas

function Q7414301Trigger:OnPostDataPrepare()
    print("[MainId: 74143][Trigger: Q7414301Trigger] OnPostDataPrepare")
    this = self
end

function Q7414301Trigger:OnPostComponentPrepare()
    print("[MainId: 74143][Trigger: Q7414301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414301Trigger:TriggerIn()
    print("[MainId: 74143][Trigger: Q7414301Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414301)
    this:DestroySelf()
end

function Q7414301Trigger:PreTriggerIn()
    print("[MainId: 74143][Trigger: Q7414301Trigger] PreTriggerIn")
end

function Q7414301Trigger:LightUpTriggerIn()
    print("[MainId: 74143][Trigger: Q7414301Trigger] LightUpTriggerIn")
end

function Q7414301Trigger:TriggerOut()
    print("[MainId: 74143][Trigger: Q7414301Trigger] TriggerOut")
end

return Q7414301Trigger
