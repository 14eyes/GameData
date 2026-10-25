require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515130Trigger = class("Q7515130Trigger", GadgetActorProxy)
Q7515130Trigger.defaultAlias = "Q7515130Trigger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515130Trigger:OnPostDataPrepare()
    print("Q7515130Trigger - OnPostDataPrepare")
    this = self
end

function Q7515130Trigger:OnPostComponentPrepare()
    print("Q7515130Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515130Trigger:TriggerIn()
    print("Q7515130Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515130)
    this:DestroySelf()
end

function Q7515130Trigger:PreTriggerIn()
    print("Q7515130Trigger - PreTriggerIn")
end

function Q7515130Trigger:LightUpTriggerIn()
    print("Q7515130Trigger - LightUpTriggerIn")
end

function Q7515130Trigger:TriggerOut()
    print("Q7515130Trigger - TriggerOut")
end

return Q7515130Trigger
