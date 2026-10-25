require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609635Trigger = class("Q7609635Trigger", GadgetActorProxy)
Q7609635Trigger.defaultAlias = "Q7609635Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609635Trigger:OnPostDataPrepare()
    print("Q7609635Trigger - OnPostDataPrepare")
    this = self
end

function Q7609635Trigger:OnPostComponentPrepare()
    print("Q7609635Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(70, 160, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609635Trigger:TriggerIn()
    print("Q7609635Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609635)
    this:DestroySelf()
end

function Q7609635Trigger:PreTriggerIn()
    print("Q7609635Trigger - PreTriggerIn")
end

function Q7609635Trigger:LightUpTriggerIn()
    print("Q7609635Trigger - LightUpTriggerIn")
end

function Q7609635Trigger:TriggerOut()
    print("Q7609635Trigger - TriggerOut")
end

return Q7609635Trigger
