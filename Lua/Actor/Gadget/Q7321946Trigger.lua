require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321946Trigger = class("Q7321946Trigger", GadgetActorProxy)
Q7321946Trigger.defaultAlias = "Q7321946Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321946Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321946Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7321946Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):RequestInteraction(npcs.Npc20845Data.alias)
    this:DestroySelf()
end

function Q7321946Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7321946Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7321946Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321946Trigger
