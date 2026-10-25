require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603636Trigger = class("Q603636Trigger", GadgetActorProxy)
Q603636Trigger.defaultAlias = "Q603636Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603636Trigger:OnPostDataPrepare()
    print("Q603636Trigger - OnPostDataPrepare")
    this = self
end

function Q603636Trigger:OnPostComponentPrepare()
    print("Q603636Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603636Trigger:TriggerIn()
    print("Q603636Trigger - TriggerIn")
    globalActor:PlayerEnterDungeon(29, 1316, true, nil, 0)
    this:DestroySelf()
end

function Q603636Trigger:PreTriggerIn()
    print("Q603636Trigger - PreTriggerIn")
end

function Q603636Trigger:LightUpTriggerIn()
    print("Q603636Trigger - LightUpTriggerIn")
end

function Q603636Trigger:TriggerOut()
    print("Q603636Trigger - TriggerOut")
end

return Q603636Trigger
