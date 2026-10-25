require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72276Trigger4 = class("Q72276Trigger4", GadgetActorProxy)
Q72276Trigger4.defaultAlias = "Q72276Trigger4"
local Q72276ClientConfig = require("Quest/Client/Q72276ClientConfig")

local subIDs = Q72276ClientConfig.SubIDs
local npcs = Q72276ClientConfig.Npcs
local datas = Q72276ClientConfig.Datas

function Q72276Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72276Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72276Trigger4:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q72276Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q72276Trigger4
