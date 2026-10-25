require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913609Trigger = class("Q1913609Trigger", GadgetActorProxy)
Q1913609Trigger.defaultAlias = "Q1913609Trigger"
local Q19136ClientConfig = require("Quest/Client/Q19136ClientConfig")

local subIDs = Q19136ClientConfig.SubIDs
local npcs = Q19136ClientConfig.Npcs
local datas = Q19136ClientConfig.Datas

function Q1913609Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913609Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913609Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19136"):FinishQuestID(false, 1913609)
    self:DestroySelf()
end

function Q1913609Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913609Trigger
