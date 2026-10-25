require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72280Trigger4 = class("Q72280Trigger4", GadgetActorProxy)
Q72280Trigger4.defaultAlias = "Q72280Trigger4"
local Q72280ClientConfig = require("Quest/Client/Q72280ClientConfig")

local subIDs = Q72280ClientConfig.SubIDs
local npcs = Q72280ClientConfig.Npcs
local datas = Q72280ClientConfig.Datas

function Q72280Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72280Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72280Trigger4:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7228009)
    self:DestroySelf()
end

function Q72280Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q72280Trigger4
