require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602242Trigger = class("Q602242Trigger", GadgetActorProxy)
Q602242Trigger.defaultAlias = "Q602242Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602242Trigger:OnPostDataPrepare()
    print("Q602242Trigger - OnPostDataPrepare")
    this = self
end

function Q602242Trigger:OnPostComponentPrepare()
    print("Q602242Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602242Trigger:TriggerIn()
    print("Q602242Trigger - TriggerIn")
end

function Q602242Trigger:PreTriggerIn()
    print("Q602242Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602242)
    this:DestroySelf()
end

function Q602242Trigger:LightUpTriggerIn()
    print("Q602242Trigger - LightUpTriggerIn")
end

function Q602242Trigger:TriggerOut()
    print("Q602242Trigger - TriggerOut")
end

return Q602242Trigger
