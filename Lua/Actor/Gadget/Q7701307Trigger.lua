require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701307Trigger = class("Q7701307Trigger", GadgetActorProxy)
Q7701307Trigger.defaultAlias = "Q7701307Trigger"
local Q77013ClientConfig = require("Quest/Client/Q77013ClientConfig")

local this
local subIDs = Q77013ClientConfig.SubIDs
local datas = Q77013ClientConfig.Datas
local npcs = Q77013ClientConfig.Npcs
local points = Q77013ClientConfig.Points

function Q7701307Trigger:OnPostDataPrepare()
    print("Q7701307Trigger - OnPostDataPrepare")
    this = self
end

function Q7701307Trigger:OnPostComponentPrepare()
    print("Q7701307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77013)
end

function Q7701307Trigger:TriggerIn()
    print("Q7701307Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7701307})
    this:DestroySelf()
end

function Q7701307Trigger:PreTriggerIn()
    print("Q7701307Trigger - PreTriggerIn")
end

function Q7701307Trigger:LightUpTriggerIn()
    print("Q7701307Trigger - LightUpTriggerIn")
end

function Q7701307Trigger:TriggerOut()
    print("Q7701307Trigger - TriggerOut")
end

return Q7701307Trigger
