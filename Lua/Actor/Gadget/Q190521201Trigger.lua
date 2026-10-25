require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q190521201Trigger = class("Q190521201Trigger", GadgetActorProxy)
Q190521201Trigger.defaultAlias = "Q190521201Trigger"
local Q19052ClientConfig = require("Quest/Client/Q19052ClientConfig")

local subIDs = Q19052ClientConfig.SubIDs
local npcs = Q19052ClientConfig.Npcs
local gadgets = Q19052ClientConfig.Gadgets
local datas = Q19052ClientConfig.Datas

function Q190521201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q190521201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(180, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q190521201Trigger:TriggerIn()
    print("TriggerIn")
end

function Q190521201Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("19052")
    actor:FinishQuestID(true, 1905212)
    actor:FinishQuestID(true, 1905210)
    actor:FinishQuestID(true, 1905211)
    self:DestroySelf()
end

return Q190521201Trigger
