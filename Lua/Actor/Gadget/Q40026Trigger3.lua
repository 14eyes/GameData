require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40026Trigger3 = class("Q40026Trigger3", GadgetActorProxy)
Q40026Trigger3.defaultAlias = "Q40026Trigger3"
local Q40026ClientConfig = require("Quest/Client/Q40026ClientConfig")

local subIDs = Q40026ClientConfig.SubIDs
local npcs = Q40026ClientConfig.Npcs
local gadgets = Q40026ClientConfig.Gadgets
local datas = Q40026ClientConfig.Datas

function Q40026Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40026Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40026Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40026"):FinishQuestID(false, 4002604)
    self:DestroySelf()
end

function Q40026Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40026Trigger3
