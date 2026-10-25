require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606501Trigger = class("Q7606501Trigger", GadgetActorProxy)
Q7606501Trigger.defaultAlias = "Q7606501Trigger"
local Q76065ClientConfig = require("Quest/Client/Q76065ClientConfig")

local this
local subIDs = Q76065ClientConfig.SubIDs
local npcs = Q76065ClientConfig.Npcs
local points = Q76065ClientConfig.Points

function Q7606501Trigger:OnPostDataPrepare()
    print("Q7606501Trigger - OnPostDataPrepare")
    this = self
end

function Q7606501Trigger:OnPostComponentPrepare()
    print("Q7606501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(59.652878, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76065)
end

function Q7606501Trigger:TriggerIn()
    print("Q7606501Trigger - TriggerIn")
    actorMgr:GetActor("76065"):DisableMainPageWithConfigByQuest(true, "")
end

function Q7606501Trigger:PreTriggerIn()
    print("Q7606501Trigger - PreTriggerIn")
end

function Q7606501Trigger:LightUpTriggerIn()
    print("Q7606501Trigger - LightUpTriggerIn")
end

function Q7606501Trigger:TriggerOut()
    print("Q7606501Trigger - TriggerOut")
    actorMgr:GetActor("76065"):DisableMainPageWithConfigByQuest(false, "")
end

return Q7606501Trigger
