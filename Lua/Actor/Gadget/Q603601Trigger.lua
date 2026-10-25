require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603601Trigger = class("Q603601Trigger", GadgetActorProxy)
Q603601Trigger.defaultAlias = "Q603601Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603601Trigger:OnPostDataPrepare()
    print("Q603601Trigger - OnPostDataPrepare")
    this = self
end

function Q603601Trigger:OnPostComponentPrepare()
    print("Q603601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603601Trigger:TriggerIn()
    print("Q603601Trigger - TriggerIn")
    actorMgr:GetActor("6036"):PlayerEnterDungeonWithData(1, 1314, 603601, 1, datas.PlayerEnterDungeonData_2, nil, nil)
    this:DestroySelf()
end

function Q603601Trigger:PreTriggerIn()
    print("Q603601Trigger - PreTriggerIn")
end

function Q603601Trigger:LightUpTriggerIn()
    print("Q603601Trigger - LightUpTriggerIn")
end

function Q603601Trigger:TriggerOut()
    print("Q603601Trigger - TriggerOut")
end

return Q603601Trigger
