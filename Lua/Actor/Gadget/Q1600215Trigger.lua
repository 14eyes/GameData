require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600215Trigger = class("Q1600215Trigger", GadgetActorProxy)
Q1600215Trigger.defaultAlias = "Q1600215Trigger"
local Q16002ClientConfig = require("Quest/Client/Q16002ClientConfig")

local this
local subIDs = Q16002ClientConfig.SubIDs
local datas = Q16002ClientConfig.Datas
local npcs = Q16002ClientConfig.Npcs
local points = Q16002ClientConfig.Points

function Q1600215Trigger:OnPostDataPrepare()
    print("Q1600215Trigger - OnPostDataPrepare")
    this = self
end

function Q1600215Trigger:OnPostComponentPrepare()
    print("Q1600215Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16002)
end

function Q1600215Trigger:TriggerIn()
    print("Q1600215Trigger - TriggerIn")
    actorMgr:GetActor("16002"):PlayerEnterDungeonWithData(1880, 2205, 1600215, 1, datas.PlayerEnterDungeonData_Castle, nil, nil)
end

function Q1600215Trigger:PreTriggerIn()
    print("Q1600215Trigger - PreTriggerIn")
end

function Q1600215Trigger:LightUpTriggerIn()
    print("Q1600215Trigger - LightUpTriggerIn")
end

function Q1600215Trigger:TriggerOut()
    print("Q1600215Trigger - TriggerOut")
end

return Q1600215Trigger
