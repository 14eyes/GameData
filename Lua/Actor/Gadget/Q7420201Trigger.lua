require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7420201Trigger = class("Q7420201Trigger", GadgetActorProxy)
Q7420201Trigger.defaultAlias = "Q7420201Trigger"
local Q74202ClientConfig = require("Quest/Client/Q74202ClientConfig")

local this
local subIDs = Q74202ClientConfig.SubIDs
local npcs = Q74202ClientConfig.Npcs
local points = Q74202ClientConfig.Points
local datas = Q74202ClientConfig.Datas

function Q7420201Trigger:OnPostDataPrepare()
    print("[MainId: 74202][Trigger: Q7420201Trigger] OnPostDataPrepare")
    this = self
end

function Q7420201Trigger:OnPostComponentPrepare()
    print("[MainId: 74202][Trigger: Q7420201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7420201Trigger:TriggerIn()
    print("[MainId: 74202][Trigger: Q7420201Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7420201)
    this:DestroySelf()
end

function Q7420201Trigger:PreTriggerIn()
    print("[MainId: 74202][Trigger: Q7420201Trigger] PreTriggerIn")
end

function Q7420201Trigger:LightUpTriggerIn()
    print("[MainId: 74202][Trigger: Q7420201Trigger] LightUpTriggerIn")
end

function Q7420201Trigger:TriggerOut()
    print("[MainId: 74202][Trigger: Q7420201Trigger] TriggerOut")
end

return Q7420201Trigger
