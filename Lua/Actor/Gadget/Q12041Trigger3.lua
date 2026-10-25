require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12041Trigger3 = class("Q12041Trigger3", GadgetActorProxy)
Q12041Trigger3.defaultAlias = "Q12041Trigger3"
local Q12041ClientConfig = require("Quest/Client/Q12041ClientConfig")

local subIDs = Q12041ClientConfig.SubIDs
local npcs = Q12041ClientConfig.Npcs
local datas = Q12041ClientConfig.Datas

function Q12041Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn)
end

function Q12041Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12041"):FinishQuestID(false, 1204109)
    self:DestroySelf()
end

return Q12041Trigger3
