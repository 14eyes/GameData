require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008TriggerMerchantA = class("Q3008TriggerMerchantA", GadgetActorProxy)
Q3008TriggerMerchantA.defaultAlias = "Q3008TriggerMerchantA"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008TriggerMerchantA:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008TriggerMerchantA:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008TriggerMerchantA:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3008"):RequestInteraction(npcs.Npc12555Data.alias)
    self:DestroySelf()
end

function Q3008TriggerMerchantA:TriggerOut()
    print("TriggerOut")
end

return Q3008TriggerMerchantA
