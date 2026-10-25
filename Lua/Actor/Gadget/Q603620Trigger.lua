require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603620Trigger = class("Q603620Trigger", GadgetActorProxy)
Q603620Trigger.defaultAlias = "Q603620Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603620Trigger:OnPostDataPrepare()
    print("Q603620Trigger - OnPostDataPrepare")
    this = self
end

function Q603620Trigger:OnPostComponentPrepare()
    print("Q603620Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603620Trigger:TriggerIn()
    print("Q603620Trigger - TriggerIn")
    actorMgr:GetActor("6036"):PlayerEnterDungeonWithData(15, 1311, 603620, 1, datas.PlayerEnterDungeonData_1, nil, nil)
    this:DestroySelf()
end

function Q603620Trigger:PreTriggerIn()
    print("Q603620Trigger - PreTriggerIn")
end

function Q603620Trigger:LightUpTriggerIn()
    print("Q603620Trigger - LightUpTriggerIn")
end

function Q603620Trigger:TriggerOut()
    print("Q603620Trigger - TriggerOut")
end

return Q603620Trigger
