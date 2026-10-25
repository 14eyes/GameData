require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12040Trigger6 = class("Q12040Trigger6", GadgetActorProxy)
Q12040Trigger6.defaultAlias = "Q12040Trigger6"
local Q12040ClientConfig = require("Quest/Client/Q12040ClientConfig")

local subIDs = Q12040ClientConfig.SubIDs
local npcs = Q12040ClientConfig.Npcs
local gadgets = Q12040ClientConfig.Gadgets
local datas = Q12040ClientConfig.Datas

function Q12040Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12040Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12040Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12040"):FinishQuestID(false, 1204012)
    self:DestroySelf()
end

function Q12040Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q12040Trigger6
