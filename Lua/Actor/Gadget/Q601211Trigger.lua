require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601211Trigger = class("Q601211Trigger", GadgetActorProxy)
Q601211Trigger.defaultAlias = "Q601211Trigger"
local Q6012ClientConfig = require("Quest/Client/Q6012ClientConfig")

local this
local subIDs = Q6012ClientConfig.SubIDs
local datas = Q6012ClientConfig.Datas
local npcs = Q6012ClientConfig.Npcs
local points = Q6012ClientConfig.Points

function Q601211Trigger:OnPostDataPrepare()
    print("Q601211Trigger - OnPostDataPrepare")
    this = self
end

function Q601211Trigger:OnPostComponentPrepare()
    print("Q601211Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6012)
end

function Q601211Trigger:TriggerIn()
    print("Q601211Trigger - TriggerIn")
    actorMgr:GetActor("6012"):PlayerEnterDungeonWithData(2, 1273, 601211, 3, datas.PlayerEnterDungeonSpecial01, nil, nil)
    this:DestroySelf()
end

function Q601211Trigger:PreTriggerIn()
    print("Q601211Trigger - PreTriggerIn")
end

function Q601211Trigger:LightUpTriggerIn()
    print("Q601211Trigger - LightUpTriggerIn")
end

function Q601211Trigger:TriggerOut()
    print("Q601211Trigger - TriggerOut")
end

return Q601211Trigger
