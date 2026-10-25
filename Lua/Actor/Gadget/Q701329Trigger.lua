require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701329Trigger = class("Q701329Trigger", GadgetActorProxy)
Q701329Trigger.defaultAlias = "Q701329Trigger"
local Q7013ClientConfig = require("Quest/Client/Q7013ClientConfig")

local this
local subIDs = Q7013ClientConfig.SubIDs
local datas = Q7013ClientConfig.Datas
local npcs = Q7013ClientConfig.Npcs
local points = Q7013ClientConfig.Points

function Q701329Trigger:OnPostDataPrepare()
    print("Q701329Trigger - OnPostDataPrepare")
    this = self
end

function Q701329Trigger:OnPostComponentPrepare()
    print("Q701329Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(46.237766, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7013)
end

function Q701329Trigger:TriggerIn()
    print("Q701329Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701329})
    this:DestroySelf()
end

function Q701329Trigger:PreTriggerIn()
    print("Q701329Trigger - PreTriggerIn")
end

function Q701329Trigger:LightUpTriggerIn()
    print("Q701329Trigger - LightUpTriggerIn")
end

function Q701329Trigger:TriggerOut()
    print("Q701329Trigger - TriggerOut")
end

return Q701329Trigger
