require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60062702Trigger = class("Q60062702Trigger", GadgetActorProxy)
Q60062702Trigger.defaultAlias = "Q60062702Trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q60062702Trigger:OnPostDataPrepare()
    print("Q60062702Trigger - OnPostDataPrepare")
    this = self
end

function Q60062702Trigger:OnPostComponentPrepare()
    print("Q60062702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q60062702Trigger:TriggerIn()
    print("Q60062702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600627)
    this:DestroySelf()
end

function Q60062702Trigger:PreTriggerIn()
    print("Q60062702Trigger - PreTriggerIn")
end

function Q60062702Trigger:LightUpTriggerIn()
    print("Q60062702Trigger - LightUpTriggerIn")
end

function Q60062702Trigger:TriggerOut()
    print("Q60062702Trigger - TriggerOut")
end

return Q60062702Trigger
