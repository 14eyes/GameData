require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501713Trigger = class("Q501713Trigger", GadgetActorProxy)
Q501713Trigger.defaultAlias = "Q501713Trigger"
local Q5017ClientConfig = require("Quest/Client/Q5017ClientConfig")

local this
local subIDs = Q5017ClientConfig.SubIDs
local datas = Q5017ClientConfig.Datas
local npcs = Q5017ClientConfig.Npcs
local points = Q5017ClientConfig.Points

function Q501713Trigger:OnPostDataPrepare()
    print("Q501713Trigger - OnPostDataPrepare")
    this = self
end

function Q501713Trigger:OnPostComponentPrepare()
    print("Q501713Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5017)
end

function Q501713Trigger:TriggerIn()
    print("Q501713Trigger - TriggerIn")
    actorUtils.FinishQuestID(true, 501713)
    actorUtils.FinishQuestID(true, 501714)
    actorUtils.FinishQuestID(true, 501715)
    actorUtils.FinishQuestID(true, 501716)
    actorUtils.FinishQuestID(true, 501717)
    actorUtils.FinishQuestID(true, 501723)
    this:DestroySelf()
end

function Q501713Trigger:PreTriggerIn()
    print("Q501713Trigger - PreTriggerIn")
end

function Q501713Trigger:LightUpTriggerIn()
    print("Q501713Trigger - LightUpTriggerIn")
end

function Q501713Trigger:TriggerOut()
    print("Q501713Trigger - TriggerOut")
end

return Q501713Trigger
