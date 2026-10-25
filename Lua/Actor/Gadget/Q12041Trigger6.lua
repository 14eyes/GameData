require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12041Trigger6 = class("Q12041Trigger6", GadgetActorProxy)
Q12041Trigger6.defaultAlias = "Q12041Trigger6"
local Q12041ClientConfig = require("Quest/Client/Q12041ClientConfig")

local subIDs = Q12041ClientConfig.SubIDs
local npcs = Q12041ClientConfig.Npcs
local datas = Q12041ClientConfig.Datas

function Q12041Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12041Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12041Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12041"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q12041_Look2").pos, 0, 3, false, false)
    self:DestroySelf()
end

function Q12041Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q12041Trigger6
