require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411307Trigger = class("Q7411307Trigger", GadgetActorProxy)
Q7411307Trigger.defaultAlias = "Q7411307Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411307Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411307Trigger] OnPostDataPrepare")
    this = self
end

function Q7411307Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411307Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411307Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411307Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411307)
    this:DestroySelf()
end

function Q7411307Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411307Trigger] PreTriggerIn")
end

function Q7411307Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411307Trigger] LightUpTriggerIn")
end

function Q7411307Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411307Trigger] TriggerOut")
end

return Q7411307Trigger
