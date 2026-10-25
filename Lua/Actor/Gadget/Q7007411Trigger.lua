require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007411Trigger = class("Q7007411Trigger", GadgetActorProxy)
Q7007411Trigger.defaultAlias = "Q7007411Trigger"
local Q70074ClientConfig = require("Quest/Client/Q70074ClientConfig")

local this
local subIDs = Q70074ClientConfig.SubIDs
local datas = Q70074ClientConfig.Datas
local npcs = Q70074ClientConfig.Npcs
local points = Q70074ClientConfig.Points

function Q7007411Trigger:OnPostDataPrepare()
    print("Q7007411Trigger - OnPostDataPrepare")
    this = self
end

function Q7007411Trigger:OnPostComponentPrepare()
    print("Q7007411Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70074)
end

function Q7007411Trigger:TriggerIn()
    print("Q7007411Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007411)
    this:DestroySelf()
end

function Q7007411Trigger:PreTriggerIn()
    print("Q7007411Trigger - PreTriggerIn")
end

function Q7007411Trigger:LightUpTriggerIn()
    print("Q7007411Trigger - LightUpTriggerIn")
end

function Q7007411Trigger:TriggerOut()
    print("Q7007411Trigger - TriggerOut")
end

return Q7007411Trigger
