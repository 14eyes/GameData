require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501620Trigger = class("Q501620Trigger", GadgetActorProxy)
Q501620Trigger.defaultAlias = "Q501620Trigger"
local Q5016ClientConfig = require("Quest/Client/Q5016ClientConfig")

local this
local subIDs = Q5016ClientConfig.SubIDs
local datas = Q5016ClientConfig.Datas
local npcs = Q5016ClientConfig.Npcs
local points = Q5016ClientConfig.Points

function Q501620Trigger:OnPostDataPrepare()
    print("Q501620Trigger - OnPostDataPrepare")
    this = self
end

function Q501620Trigger:OnPostComponentPrepare()
    print("Q501620Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5016)
end

function Q501620Trigger:TriggerIn()
    print("Q501620Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501620)
    this:DestroySelf()
end

function Q501620Trigger:PreTriggerIn()
    print("Q501620Trigger - PreTriggerIn")
end

function Q501620Trigger:LightUpTriggerIn()
    print("Q501620Trigger - LightUpTriggerIn")
end

function Q501620Trigger:TriggerOut()
    print("Q501620Trigger - TriggerOut")
end

return Q501620Trigger
