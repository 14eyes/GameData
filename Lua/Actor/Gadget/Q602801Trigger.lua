require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602801Trigger = class("Q602801Trigger", GadgetActorProxy)
Q602801Trigger.defaultAlias = "Q602801Trigger"
local Q6028ClientConfig = require("Quest/Client/Q6028ClientConfig")

local this
local subIDs = Q6028ClientConfig.SubIDs
local datas = Q6028ClientConfig.Datas
local npcs = Q6028ClientConfig.Npcs
local points = Q6028ClientConfig.Points

function Q602801Trigger:OnPostDataPrepare()
    print("Q602801Trigger - OnPostDataPrepare")
    this = self
end

function Q602801Trigger:OnPostComponentPrepare()
    print("Q602801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6028)
end

function Q602801Trigger:TriggerIn()
    print("Q602801Trigger - TriggerIn")
    actorMgr:GetActor("6028"):PlayerEnterDungeonWithData(1, 1276, 602801, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q602801Trigger:PreTriggerIn()
    print("Q602801Trigger - PreTriggerIn")
end

function Q602801Trigger:LightUpTriggerIn()
    print("Q602801Trigger - LightUpTriggerIn")
end

function Q602801Trigger:TriggerOut()
    print("Q602801Trigger - TriggerOut")
end

return Q602801Trigger
