require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913401Trigger = class("Q1913401Trigger", GadgetActorProxy)
Q1913401Trigger.defaultAlias = "Q1913401Trigger"
local Q19134ClientConfig = require("Quest/Client/Q19134ClientConfig")

local subIDs = Q19134ClientConfig.SubIDs
local npcs = Q19134ClientConfig.Npcs
local datas = Q19134ClientConfig.Datas

function Q1913401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913401Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19134"):FinishQuestID(false, 1913401)
    self:DestroySelf()
end

function Q1913401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913401Trigger
