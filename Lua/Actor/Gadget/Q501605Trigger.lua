require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501605Trigger = class("Q501605Trigger", GadgetActorProxy)
Q501605Trigger.defaultAlias = "Q501605Trigger"
local Q5016ClientConfig = require("Quest/Client/Q5016ClientConfig")

local this
local subIDs = Q5016ClientConfig.SubIDs
local datas = Q5016ClientConfig.Datas
local npcs = Q5016ClientConfig.Npcs
local points = Q5016ClientConfig.Points

function Q501605Trigger:OnPostDataPrepare()
    print("Q501605Trigger - OnPostDataPrepare")
    this = self
end

function Q501605Trigger:OnPostComponentPrepare()
    print("Q501605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5016)
end

function Q501605Trigger:TriggerIn()
    print("Q501605Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501605)
    this:DestroySelf()
end

function Q501605Trigger:PreTriggerIn()
    print("Q501605Trigger - PreTriggerIn")
end

function Q501605Trigger:LightUpTriggerIn()
    print("Q501605Trigger - LightUpTriggerIn")
end

function Q501605Trigger:TriggerOut()
    print("Q501605Trigger - TriggerOut")
end

return Q501605Trigger
