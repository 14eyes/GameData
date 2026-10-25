require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603807Trigger = class("Q603807Trigger", GadgetActorProxy)
Q603807Trigger.defaultAlias = "Q603807Trigger"
local Q6038ClientConfig = require("Quest/Client/Q6038ClientConfig")

local this
local subIDs = Q6038ClientConfig.SubIDs
local datas = Q6038ClientConfig.Datas
local npcs = Q6038ClientConfig.Npcs
local points = Q6038ClientConfig.Points

function Q603807Trigger:OnPostDataPrepare()
    print("Q603807Trigger - OnPostDataPrepare")
    this = self
end

function Q603807Trigger:OnPostComponentPrepare()
    print("Q603807Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6038)
end

function Q603807Trigger:TriggerIn()
    print("Q603807Trigger - TriggerIn")
    actorMgr:GetActor("6038"):PlayerEnterDungeonWithData(1983, 1316, 603807, 1, datas.TransmitData_blackscreen, nil, nil)
end

function Q603807Trigger:PreTriggerIn()
    print("Q603807Trigger - PreTriggerIn")
end

function Q603807Trigger:LightUpTriggerIn()
    print("Q603807Trigger - LightUpTriggerIn")
end

function Q603807Trigger:TriggerOut()
    print("Q603807Trigger - TriggerOut")
end

return Q603807Trigger
