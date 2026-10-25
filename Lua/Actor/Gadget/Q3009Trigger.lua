require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009Trigger = class("Q3009Trigger", GadgetActorProxy)
Q3009Trigger.defaultAlias = "Q3009Trigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q3009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3009Trigger
