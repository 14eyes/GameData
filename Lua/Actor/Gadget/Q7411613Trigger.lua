require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411613Trigger = class("Q7411613Trigger", GadgetActorProxy)
Q7411613Trigger.defaultAlias = "Q7411613Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points
local datas = Q74116ClientConfig.Datas

function Q7411613Trigger:OnPostDataPrepare()
    print("[MainId: 74116][Trigger: Q7411613Trigger] OnPostDataPrepare")
    this = self
end

function Q7411613Trigger:OnPostComponentPrepare()
    print("[MainId: 74116][Trigger: Q7411613Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411613Trigger:TriggerIn()
    print("[MainId: 74116][Trigger: Q7411613Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411613)
    this:DestroySelf()
end

function Q7411613Trigger:PreTriggerIn()
    print("[MainId: 74116][Trigger: Q7411613Trigger] PreTriggerIn")
end

function Q7411613Trigger:LightUpTriggerIn()
    print("[MainId: 74116][Trigger: Q7411613Trigger] LightUpTriggerIn")
end

function Q7411613Trigger:TriggerOut()
    print("[MainId: 74116][Trigger: Q7411613Trigger] TriggerOut")
end

return Q7411613Trigger
