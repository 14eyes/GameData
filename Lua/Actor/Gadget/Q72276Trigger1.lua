require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72276Trigger1 = class("Q72276Trigger1", GadgetActorProxy)
Q72276Trigger1.defaultAlias = "Q72276Trigger1"
local Q72276ClientConfig = require("Quest/Client/Q72276ClientConfig")

local subIDs = Q72276ClientConfig.SubIDs
local npcs = Q72276ClientConfig.Npcs
local datas = Q72276ClientConfig.Datas

function Q72276Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72276Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72276Trigger1:TriggerIn()
    print("TriggerIn")
    print("7227603ttttttttttttttt")
    local actor = actorMgr:GetActor("72276")
    actor:EnterSceneLookCamera({x = 237.75, y = 325.99, z = 284.95}, 1, 3, false, false)
    actor:FinishQuestID(false, 7227603)
    self:DestroySelf()
end

function Q72276Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72276Trigger1
