require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006505Trigger = class("Q7006505Trigger", GadgetActorProxy)
Q7006505Trigger.defaultAlias = "Q7006505Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006505Trigger:OnPostDataPrepare()
    print("Q7006505Trigger - OnPostDataPrepare")
    this = self
end

function Q7006505Trigger:OnPostComponentPrepare()
    print("Q7006505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(126.8534, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006505Trigger:TriggerIn()
    print("Q7006505Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006505)
    this:DestroySelf()
end

function Q7006505Trigger:PreTriggerIn()
    print("Q7006505Trigger - PreTriggerIn")
end

function Q7006505Trigger:LightUpTriggerIn()
    print("Q7006505Trigger - LightUpTriggerIn")
end

function Q7006505Trigger:TriggerOut()
    print("Q7006505Trigger - TriggerOut")
end

return Q7006505Trigger
