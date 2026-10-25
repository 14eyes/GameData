require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609606Trigger = class("Q7609606Trigger", GadgetActorProxy)
Q7609606Trigger.defaultAlias = "Q7609606Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609606Trigger:OnPostDataPrepare()
    print("Q7609606Trigger - OnPostDataPrepare")
    this = self
end

function Q7609606Trigger:OnPostComponentPrepare()
    print("Q7609606Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609606Trigger:TriggerIn()
    print("Q7609606Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609606)
    this:DestroySelf()
end

function Q7609606Trigger:PreTriggerIn()
    print("Q7609606Trigger - PreTriggerIn")
end

function Q7609606Trigger:LightUpTriggerIn()
    print("Q7609606Trigger - LightUpTriggerIn")
end

function Q7609606Trigger:TriggerOut()
    print("Q7609606Trigger - TriggerOut")
end

return Q7609606Trigger
