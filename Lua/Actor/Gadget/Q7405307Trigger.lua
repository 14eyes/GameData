require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405307Trigger = class("Q7405307Trigger", GadgetActorProxy)
Q7405307Trigger.defaultAlias = "Q7405307Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405307Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405307Trigger] OnPostDataPrepare")
    this = self
end

function Q7405307Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405307Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405307Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405307Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405307)
    this:DestroySelf()
end

function Q7405307Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405307Trigger] PreTriggerIn")
end

function Q7405307Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405307Trigger] LightUpTriggerIn")
end

function Q7405307Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405307Trigger] TriggerOut")
end

return Q7405307Trigger
