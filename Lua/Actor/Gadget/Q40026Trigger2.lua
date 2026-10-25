require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40026Trigger2 = class("Q40026Trigger2", GadgetActorProxy)
Q40026Trigger2.defaultAlias = "Q40026Trigger2"
local Q40026ClientConfig = require("Quest/Client/Q40026ClientConfig")

local subIDs = Q40026ClientConfig.SubIDs
local npcs = Q40026ClientConfig.Npcs
local gadgets = Q40026ClientConfig.Gadgets
local datas = Q40026ClientConfig.Datas

function Q40026Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40026Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40026Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40026"):FinishQuestID(false, 4002603)
    self:DestroySelf()
end

function Q40026Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40026Trigger2
