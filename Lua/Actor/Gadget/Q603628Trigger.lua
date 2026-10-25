require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603628Trigger = class("Q603628Trigger", GadgetActorProxy)
Q603628Trigger.defaultAlias = "Q603628Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603628Trigger:OnPostDataPrepare()
    print("Q603628Trigger - OnPostDataPrepare")
    this = self
end

function Q603628Trigger:OnPostComponentPrepare()
    print("Q603628Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603628Trigger:TriggerIn()
    print("Q603628Trigger - TriggerIn")
    globalActor:PlayerEnterDungeon(2, 1311, true, nil, 0)
    this:DestroySelf()
end

function Q603628Trigger:PreTriggerIn()
    print("Q603628Trigger - PreTriggerIn")
end

function Q603628Trigger:LightUpTriggerIn()
    print("Q603628Trigger - LightUpTriggerIn")
end

function Q603628Trigger:TriggerOut()
    print("Q603628Trigger - TriggerOut")
end

return Q603628Trigger
