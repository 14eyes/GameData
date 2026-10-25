require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411302Trigger = class("Q7411302Trigger", GadgetActorProxy)
Q7411302Trigger.defaultAlias = "Q7411302Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411302Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411302Trigger] OnPostDataPrepare")
    this = self
end

function Q7411302Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411302Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411302Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411302Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411302)
    this:DestroySelf()
end

function Q7411302Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411302Trigger] PreTriggerIn")
end

function Q7411302Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411302Trigger] LightUpTriggerIn")
end

function Q7411302Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411302Trigger] TriggerOut")
end

return Q7411302Trigger
