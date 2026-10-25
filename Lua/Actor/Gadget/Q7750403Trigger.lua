require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7750403Trigger = class("Q7750403Trigger", GadgetActorProxy)
Q7750403Trigger.defaultAlias = "Q7750403Trigger"
local Q77504ClientConfig = require("Quest/Client/Q77504ClientConfig")

local this
local subIDs = Q77504ClientConfig.SubIDs
local datas = Q77504ClientConfig.Datas
local npcs = Q77504ClientConfig.Npcs
local points = Q77504ClientConfig.Points

function Q7750403Trigger:OnPostDataPrepare()
    print("Q7750403Trigger - OnPostDataPrepare")
    this = self
end

function Q7750403Trigger:OnPostComponentPrepare()
    print("Q7750403Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77504)
end

function Q7750403Trigger:TriggerIn()
    print("Q7750403Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7750403})
    this:DestroySelf()
end

function Q7750403Trigger:PreTriggerIn()
    print("Q7750403Trigger - PreTriggerIn")
end

function Q7750403Trigger:LightUpTriggerIn()
    print("Q7750403Trigger - LightUpTriggerIn")
end

function Q7750403Trigger:TriggerOut()
    print("Q7750403Trigger - TriggerOut")
end

return Q7750403Trigger
