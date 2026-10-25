require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7319301Trigger = class("Q7319301Trigger", GadgetActorProxy)
Q7319301Trigger.defaultAlias = "Q7319301Trigger"
local Q73193ClientConfig = require("Quest/Client/Q73193ClientConfig")

local subIDs = Q73193ClientConfig.SubIDs
local npcs = Q73193ClientConfig.Npcs
local datas = Q73193ClientConfig.Datas

function Q7319301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7319301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7319301Trigger:TriggerIn()
    print("TriggerIn")
    self:NpcCreateWithBlackscreen(nil, 0, 0)
end

function Q7319301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7319301Trigger
