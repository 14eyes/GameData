require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74075Trigger_Dive = class("Q74075Trigger_Dive", GadgetActorProxy)
Q74075Trigger_Dive.defaultAlias = "Q74075Trigger_Dive"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q74075Trigger_Dive:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Dive] OnPostDataPrepare")
    this = self
end

function Q74075Trigger_Dive:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Dive] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(50, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74075Trigger_Dive:TriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Dive] TriggerIn")
    actorUtils.FinishQuestID(false, 7407507)
    this:DestroySelf()
end

function Q74075Trigger_Dive:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Dive] PreTriggerIn")
end

function Q74075Trigger_Dive:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Dive] LightUpTriggerIn")
end

function Q74075Trigger_Dive:TriggerOut()
    print("[MainId: 74075][Trigger: Q74075Trigger_Dive] TriggerOut")
end

return Q74075Trigger_Dive
