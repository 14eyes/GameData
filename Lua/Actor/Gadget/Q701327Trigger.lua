require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701327Trigger = class("Q701327Trigger", GadgetActorProxy)
Q701327Trigger.defaultAlias = "Q701327Trigger"
local Q7013ClientConfig = require("Quest/Client/Q7013ClientConfig")

local this
local subIDs = Q7013ClientConfig.SubIDs
local datas = Q7013ClientConfig.Datas
local npcs = Q7013ClientConfig.Npcs
local points = Q7013ClientConfig.Points

function Q701327Trigger:OnPostDataPrepare()
    print("Q701327Trigger - OnPostDataPrepare")
    this = self
end

function Q701327Trigger:OnPostComponentPrepare()
    print("Q701327Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(53.247936, 21.250006, 16.582497, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7013)
end

function Q701327Trigger:TriggerIn()
    print("Q701327Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701327})
    this:DestroySelf()
end

function Q701327Trigger:PreTriggerIn()
    print("Q701327Trigger - PreTriggerIn")
end

function Q701327Trigger:LightUpTriggerIn()
    print("Q701327Trigger - LightUpTriggerIn")
end

function Q701327Trigger:TriggerOut()
    print("Q701327Trigger - TriggerOut")
end

return Q701327Trigger
