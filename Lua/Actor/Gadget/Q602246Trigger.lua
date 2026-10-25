require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602246Trigger = class("Q602246Trigger", GadgetActorProxy)
Q602246Trigger.defaultAlias = "Q602246Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602246Trigger:OnPostDataPrepare()
    print("Q602246Trigger - OnPostDataPrepare")
    this = self
end

function Q602246Trigger:OnPostComponentPrepare()
    print("Q602246Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602246Trigger:TriggerIn()
    print("Q602246Trigger - TriggerIn")
end

function Q602246Trigger:PreTriggerIn()
    print("Q602246Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602246)
    this:DestroySelf()
end

function Q602246Trigger:LightUpTriggerIn()
    print("Q602246Trigger - LightUpTriggerIn")
end

function Q602246Trigger:TriggerOut()
    print("Q602246Trigger - TriggerOut")
end

return Q602246Trigger
