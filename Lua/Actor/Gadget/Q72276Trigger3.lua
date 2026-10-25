require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72276Trigger3 = class("Q72276Trigger3", GadgetActorProxy)
Q72276Trigger3.defaultAlias = "Q72276Trigger3"
local Q72276ClientConfig = require("Quest/Client/Q72276ClientConfig")

local subIDs = Q72276ClientConfig.SubIDs
local npcs = Q72276ClientConfig.Npcs
local datas = Q72276ClientConfig.Datas

function Q72276Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72276Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72276Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72276"):FinishQuestID(false, 7227610)
    self:DestroySelf()
end

function Q72276Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q72276Trigger3
