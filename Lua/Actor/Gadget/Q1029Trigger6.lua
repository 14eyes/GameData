require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger6 = class("Q1029Trigger6", GadgetActorProxy)
Q1029Trigger6.defaultAlias = "Q1029Trigger6"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger6:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("1029")
    actor:EnablePlayerInput(true)
    actor:ExitSceneLookCamera()
    self:DestroySelf()
end

function Q1029Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger6
