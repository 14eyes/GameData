require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12011Trigger = class("Q12011Trigger", GadgetActorProxy)
Q12011Trigger.defaultAlias = "Q12011Trigger"
local Q12011ClientConfig = require("Quest/Client/Q12011ClientConfig")

local subIDs = Q12011ClientConfig.SubIDs
local npcs = Q12011ClientConfig.Npcs
local datas = Q12011ClientConfig.Datas

function Q12011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12011Trigger:TriggerIn()
    print("TriggerIn")
end

function Q12011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12011Trigger
