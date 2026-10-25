require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913606Trigger = class("Q1913606Trigger", GadgetActorProxy)
Q1913606Trigger.defaultAlias = "Q1913606Trigger"
local Q19136ClientConfig = require("Quest/Client/Q19136ClientConfig")

local subIDs = Q19136ClientConfig.SubIDs
local npcs = Q19136ClientConfig.Npcs
local datas = Q19136ClientConfig.Datas

function Q1913606Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913606Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913606Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19136"):FinishQuestID(false, 1913606)
    self:DestroySelf()
end

function Q1913606Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913606Trigger
