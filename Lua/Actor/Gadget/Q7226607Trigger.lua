require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226607Trigger = class("Q7226607Trigger", GadgetActorProxy)
Q7226607Trigger.defaultAlias = "Q7226607Trigger"
local Q72266ClientConfig = require("Quest/Client/Q72266ClientConfig")

local subIDs = Q72266ClientConfig.SubIDs
local npcs = Q72266ClientConfig.Npcs
local datas = Q72266ClientConfig.Datas

function Q7226607Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226607Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226607Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72266"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("72266"):TransmitPlayerById(nil, 3)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q7226607Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226607Trigger
