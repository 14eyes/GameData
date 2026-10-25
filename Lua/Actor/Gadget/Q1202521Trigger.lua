require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202521Trigger = class("Q1202521Trigger", GadgetActorProxy)
Q1202521Trigger.defaultAlias = "Q1202521Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202521Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202521Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202521Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):FinishQuestID(false, 1202521)
    self:DestroySelf()
end

function Q1202521Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202521Trigger
