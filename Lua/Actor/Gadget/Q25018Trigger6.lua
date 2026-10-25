require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25018Trigger6 = class("Q25018Trigger6", GadgetActorProxy)
Q25018Trigger6.defaultAlias = "Q25018Trigger6"
local Q25018ClientConfig = require("Quest/Client/Q25018ClientConfig")

local this
local subIDs = Q25018ClientConfig.SubIDs
local npcs = Q25018ClientConfig.Npcs
local points = Q25018ClientConfig.Points
local datas = Q25018ClientConfig.Datas

function Q25018Trigger6:OnPostDataPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger6] OnPostDataPrepare")
    this = self
end

function Q25018Trigger6:OnPostComponentPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25018)
end

function Q25018Trigger6:TriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger6] TriggerIn")
    actorMgr:GetActor("25018"):RequestInteraction(npcs.Npc6103Data.alias, "", true)
    this:DestroySelf()
end

function Q25018Trigger6:PreTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger6] PreTriggerIn")
end

function Q25018Trigger6:LightUpTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger6] LightUpTriggerIn")
end

function Q25018Trigger6:TriggerOut()
    print("[MainId: 25018][Trigger: Q25018Trigger6] TriggerOut")
end

return Q25018Trigger6
