require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667301Trigger = class("Q7667301Trigger", GadgetActorProxy)
Q7667301Trigger.defaultAlias = "Q7667301Trigger"
local Q76673ClientConfig = require("Quest/Client/Q76673ClientConfig")

local this
local subIDs = Q76673ClientConfig.SubIDs
local datas = Q76673ClientConfig.Datas
local npcs = Q76673ClientConfig.Npcs
local points = Q76673ClientConfig.Points

function Q7667301Trigger:OnPostDataPrepare()
    print("Q7667301Trigger - OnPostDataPrepare")
    this = self
end

function Q7667301Trigger:OnPostComponentPrepare()
    print("Q7667301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76673)
end

function Q7667301Trigger:TriggerIn()
    print("Q7667301Trigger - TriggerIn")
    actorMgr:GetActor("76673"):DeployStoryByQuest(117667300)
    this:DestroySelf()
end

function Q7667301Trigger:PreTriggerIn()
    print("Q7667301Trigger - PreTriggerIn")
end

function Q7667301Trigger:LightUpTriggerIn()
    print("Q7667301Trigger - LightUpTriggerIn")
end

function Q7667301Trigger:TriggerOut()
    print("Q7667301Trigger - TriggerOut")
end

return Q7667301Trigger
