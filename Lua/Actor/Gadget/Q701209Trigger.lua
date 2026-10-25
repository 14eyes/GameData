require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701209Trigger = class("Q701209Trigger", GadgetActorProxy)
Q701209Trigger.defaultAlias = "Q701209Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701209Trigger:OnPostDataPrepare()
    print("Q701209Trigger - OnPostDataPrepare")
    this = self
end

function Q701209Trigger:OnPostComponentPrepare()
    print("Q701209Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701209Trigger:TriggerIn()
    print("Q701209Trigger - TriggerIn")
end

function Q701209Trigger:PreTriggerIn()
    print("Q701209Trigger - PreTriggerIn")
end

function Q701209Trigger:LightUpTriggerIn()
    print("Q701209Trigger - LightUpTriggerIn")
end

function Q701209Trigger:TriggerOut()
    print("Q701209Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({true}, {701209})
end

return Q701209Trigger
