require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600110Trigger = class("Q600110Trigger", GadgetActorProxy)
Q600110Trigger.defaultAlias = "Q600110Trigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600110Trigger:OnPostDataPrepare()
    print("Q600110Trigger - OnPostDataPrepare")
    this = self
end

function Q600110Trigger:OnPostComponentPrepare()
    print("Q600110Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600110Trigger:TriggerIn()
    print("Q600110Trigger - TriggerIn")
    actorMgr:GetActor("6001"):PlayerEnterDungeonWithData(1632, 1256, 600110, 1, datas.TransmitData_600110, nil, nil)
end

function Q600110Trigger:PreTriggerIn()
    print("Q600110Trigger - PreTriggerIn")
end

function Q600110Trigger:LightUpTriggerIn()
    print("Q600110Trigger - LightUpTriggerIn")
end

function Q600110Trigger:TriggerOut()
    print("Q600110Trigger - TriggerOut")
end

return Q600110Trigger
