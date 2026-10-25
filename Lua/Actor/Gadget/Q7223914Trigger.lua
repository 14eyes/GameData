require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223914Trigger = class("Q7223914Trigger", GadgetActorProxy)
Q7223914Trigger.defaultAlias = "Q7223914Trigger"
local Q72239ClientConfig = require("Quest/Client/Q72239ClientConfig")

local subIDs = Q72239ClientConfig.SubIDs
local npcs = Q72239ClientConfig.Npcs
local datas = Q72239ClientConfig.Datas

function Q7223914Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223914Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.277633, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223914Trigger:TriggerIn()
    print("TriggerIn")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7223914)
    self:EnablePlayerInput(true)
end

function Q7223914Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223914Trigger
