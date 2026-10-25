require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501008Trigger = class("Q501008Trigger", GadgetActorProxy)
Q501008Trigger.defaultAlias = "Q501008Trigger"
local Q5010ClientConfig = require("Quest/Client/Q5010ClientConfig")

local this
local subIDs = Q5010ClientConfig.SubIDs
local datas = Q5010ClientConfig.Datas
local npcs = Q5010ClientConfig.Npcs
local points = Q5010ClientConfig.Points

function Q501008Trigger:OnPostDataPrepare()
    print("Q501008Trigger - OnPostDataPrepare")
    this = self
end

function Q501008Trigger:OnPostComponentPrepare()
    print("Q501008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5010)
end

function Q501008Trigger:TriggerIn()
    print("Q501008Trigger - TriggerIn")
    actorMgr:GetActor("5010"):PlayerEnterDungeonWithData(1403, 1225, 501008, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q501008Trigger:PreTriggerIn()
    print("Q501008Trigger - PreTriggerIn")
end

function Q501008Trigger:LightUpTriggerIn()
    print("Q501008Trigger - LightUpTriggerIn")
end

function Q501008Trigger:TriggerOut()
    print("Q501008Trigger - TriggerOut")
end

return Q501008Trigger
