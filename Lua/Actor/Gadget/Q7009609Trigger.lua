require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009609Trigger = class("Q7009609Trigger", GadgetActorProxy)
Q7009609Trigger.defaultAlias = "Q7009609Trigger"
local Q70096ClientConfig = require("Quest/Client/Q70096ClientConfig")

local this
local subIDs = Q70096ClientConfig.SubIDs
local datas = Q70096ClientConfig.Datas
local npcs = Q70096ClientConfig.Npcs
local points = Q70096ClientConfig.Points

function Q7009609Trigger:OnPostDataPrepare()
    print("Q7009609Trigger - OnPostDataPrepare")
    this = self
end

function Q7009609Trigger:OnPostComponentPrepare()
    print("Q7009609Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70096)
end

function Q7009609Trigger:TriggerIn()
    print("Q7009609Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7009609})
    this:DestroySelf()
end

function Q7009609Trigger:PreTriggerIn()
    print("Q7009609Trigger - PreTriggerIn")
end

function Q7009609Trigger:LightUpTriggerIn()
    print("Q7009609Trigger - LightUpTriggerIn")
end

function Q7009609Trigger:TriggerOut()
    print("Q7009609Trigger - TriggerOut")
end

return Q7009609Trigger
