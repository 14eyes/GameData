require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001113Trigger = class("Q1001113Trigger", GadgetActorProxy)
Q1001113Trigger.defaultAlias = "Q1001113Trigger"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001113Trigger:OnPostDataPrepare()
    print("Q1001113Trigger - OnPostDataPrepare")
    this = self
end

function Q1001113Trigger:OnPostComponentPrepare()
    print("Q1001113Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001113Trigger:TriggerIn()
    print("Q1001113Trigger - TriggerIn")
    actorMgr:GetActor("10011"):PlayerEnterDungeonWithData(2035, 1332, 1001113, 1, datas.PlayerEnterDungeonData_1, nil, nil)
end

function Q1001113Trigger:PreTriggerIn()
    print("Q1001113Trigger - PreTriggerIn")
end

function Q1001113Trigger:LightUpTriggerIn()
    print("Q1001113Trigger - LightUpTriggerIn")
end

function Q1001113Trigger:TriggerOut()
    print("Q1001113Trigger - TriggerOut")
end

return Q1001113Trigger
