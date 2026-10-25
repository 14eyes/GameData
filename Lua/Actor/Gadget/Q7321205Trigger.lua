require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321205Trigger = class("Q7321205Trigger", GadgetActorProxy)
Q7321205Trigger.defaultAlias = "Q7321205Trigger"
local Q73212ClientConfig = require("Quest/Client/Q73212ClientConfig")

local this
local subIDs = Q73212ClientConfig.SubIDs
local npcs = Q73212ClientConfig.Npcs
local datas = Q73212ClientConfig.Datas

function Q7321205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7321205Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73212"):RequestInteraction(npcs.Npc20932Data.alias)
end

function Q7321205Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7321205Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7321205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321205Trigger
