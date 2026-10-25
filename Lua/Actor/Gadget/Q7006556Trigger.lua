require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006556Trigger = class("Q7006556Trigger", GadgetActorProxy)
Q7006556Trigger.defaultAlias = "Q7006556Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006556Trigger:OnPostDataPrepare()
    print("Q7006556Trigger - OnPostDataPrepare")
    this = self
end

function Q7006556Trigger:OnPostComponentPrepare()
    print("Q7006556Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006556Trigger:TriggerIn()
    print("Q7006556Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006556)
    this:DestroySelf()
end

function Q7006556Trigger:PreTriggerIn()
    print("Q7006556Trigger - PreTriggerIn")
end

function Q7006556Trigger:LightUpTriggerIn()
    print("Q7006556Trigger - LightUpTriggerIn")
end

function Q7006556Trigger:TriggerOut()
    print("Q7006556Trigger - TriggerOut")
end

return Q7006556Trigger
