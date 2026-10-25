require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602248Trigger = class("Q602248Trigger", GadgetActorProxy)
Q602248Trigger.defaultAlias = "Q602248Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602248Trigger:OnPostDataPrepare()
    print("Q602248Trigger - OnPostDataPrepare")
    this = self
end

function Q602248Trigger:OnPostComponentPrepare()
    print("Q602248Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602248Trigger:TriggerIn()
    print("Q602248Trigger - TriggerIn")
end

function Q602248Trigger:PreTriggerIn()
    print("Q602248Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602248)
    this:DestroySelf()
end

function Q602248Trigger:LightUpTriggerIn()
    print("Q602248Trigger - LightUpTriggerIn")
end

function Q602248Trigger:TriggerOut()
    print("Q602248Trigger - TriggerOut")
end

return Q602248Trigger
