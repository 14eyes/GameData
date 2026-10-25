require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600322Trigger = class("Q1600322Trigger", GadgetActorProxy)
Q1600322Trigger.defaultAlias = "Q1600322Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600322Trigger:OnPostDataPrepare()
    print("Q1600322Trigger - OnPostDataPrepare")
    this = self
end

function Q1600322Trigger:OnPostComponentPrepare()
    print("Q1600322Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600322Trigger:TriggerIn()
    print("Q1600322Trigger - TriggerIn")
    actorMgr:GetActor("16003"):PlayerEnterDungeonWithData(2, 2205, 1600322, 1, datas.PlayerEnterDungeonData_Outdoors, nil, nil)
end

function Q1600322Trigger:PreTriggerIn()
    print("Q1600322Trigger - PreTriggerIn")
end

function Q1600322Trigger:LightUpTriggerIn()
    print("Q1600322Trigger - LightUpTriggerIn")
end

function Q1600322Trigger:TriggerOut()
    print("Q1600322Trigger - TriggerOut")
end

return Q1600322Trigger
