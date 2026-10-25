require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008215Trigger1 = class("Q4008215Trigger1", GadgetActorProxy)
Q4008215Trigger1.defaultAlias = "Q4008215Trigger1"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008215Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008215Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008215Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008215)
    self:DestroySelf()
end

function Q4008215Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q4008215Trigger1
