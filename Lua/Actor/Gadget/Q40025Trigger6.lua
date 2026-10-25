require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40025Trigger6 = class("Q40025Trigger6", GadgetActorProxy)
Q40025Trigger6.defaultAlias = "Q40025Trigger6"
local Q40025ClientConfig = require("Quest/Client/Q40025ClientConfig")

local subIDs = Q40025ClientConfig.SubIDs
local npcs = Q40025ClientConfig.Npcs
local gadgets = Q40025ClientConfig.Gadgets
local datas = Q40025ClientConfig.Datas

function Q40025Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40025Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40025Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40025"):FinishQuestID(false, 4002509)
    self:DestroySelf()
end

function Q40025Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q40025Trigger6
