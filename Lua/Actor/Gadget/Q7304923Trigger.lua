require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304923Trigger = class("Q7304923Trigger", GadgetActorProxy)
Q7304923Trigger.defaultAlias = "Q7304923Trigger"
local Q73049ClientConfig = require("Quest/Client/Q73049ClientConfig")

local subIDs = Q73049ClientConfig.SubIDs
local npcs = Q73049ClientConfig.Npcs
local datas = Q73049ClientConfig.Datas

function Q7304923Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304923Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304923Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7304923Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7304923)
    self:DestroySelf()
end

return Q7304923Trigger
