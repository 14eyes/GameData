require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006515Trigger = class("Q7006515Trigger", GadgetActorProxy)
Q7006515Trigger.defaultAlias = "Q7006515Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006515Trigger:OnPostDataPrepare()
    print("Q7006515Trigger - OnPostDataPrepare")
    this = self
end

function Q7006515Trigger:OnPostComponentPrepare()
    print("Q7006515Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006515Trigger:TriggerIn()
    print("Q7006515Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006515)
    this:DestroySelf()
end

function Q7006515Trigger:PreTriggerIn()
    print("Q7006515Trigger - PreTriggerIn")
end

function Q7006515Trigger:LightUpTriggerIn()
    print("Q7006515Trigger - LightUpTriggerIn")
end

function Q7006515Trigger:TriggerOut()
    print("Q7006515Trigger - TriggerOut")
end

return Q7006515Trigger
