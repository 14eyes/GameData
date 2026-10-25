require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603810Trigger = class("Q603810Trigger", GadgetActorProxy)
Q603810Trigger.defaultAlias = "Q603810Trigger"
local Q6038ClientConfig = require("Quest/Client/Q6038ClientConfig")

local this
local subIDs = Q6038ClientConfig.SubIDs
local datas = Q6038ClientConfig.Datas
local npcs = Q6038ClientConfig.Npcs
local points = Q6038ClientConfig.Points

function Q603810Trigger:OnPostDataPrepare()
    print("Q603810Trigger - OnPostDataPrepare")
    this = self
end

function Q603810Trigger:OnPostComponentPrepare()
    print("Q603810Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6038)
end

function Q603810Trigger:TriggerIn()
    print("Q603810Trigger - TriggerIn")
    actorMgr:GetActor("6038"):PlayerEnterDungeonWithData(1979, 1314, 603810, 1, datas.TransmitData_blackscreen, nil, nil)
    this:DestroySelf()
end

function Q603810Trigger:PreTriggerIn()
    print("Q603810Trigger - PreTriggerIn")
end

function Q603810Trigger:LightUpTriggerIn()
    print("Q603810Trigger - LightUpTriggerIn")
end

function Q603810Trigger:TriggerOut()
    print("Q603810Trigger - TriggerOut")
end

return Q603810Trigger
