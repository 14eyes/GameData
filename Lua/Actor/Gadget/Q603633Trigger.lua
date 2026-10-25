require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603633Trigger = class("Q603633Trigger", GadgetActorProxy)
Q603633Trigger.defaultAlias = "Q603633Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603633Trigger:OnPostDataPrepare()
    print("Q603633Trigger - OnPostDataPrepare")
    this = self
end

function Q603633Trigger:OnPostComponentPrepare()
    print("Q603633Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603633Trigger:TriggerIn()
    print("Q603633Trigger - TriggerIn")
    actorMgr:GetActor("6036"):PlayerEnterDungeonWithData(1, 1314, 603633, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q603633Trigger:PreTriggerIn()
    print("Q603633Trigger - PreTriggerIn")
end

function Q603633Trigger:LightUpTriggerIn()
    print("Q603633Trigger - LightUpTriggerIn")
end

function Q603633Trigger:TriggerOut()
    print("Q603633Trigger - TriggerOut")
end

return Q603633Trigger
