require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73098Trigger03 = class("Q73098Trigger03", GadgetActorProxy)
Q73098Trigger03.defaultAlias = "Q73098Trigger03"
local Q73098ClientConfig = require("Quest/Client/Q73098ClientConfig")

local subIDs = Q73098ClientConfig.SubIDs
local npcs = Q73098ClientConfig.Npcs
local datas = Q73098ClientConfig.Datas

function Q73098Trigger03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73098Trigger03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73098Trigger03:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7309805)
    self:DestroySelf()
end

function Q73098Trigger03:TriggerOut()
    print("TriggerOut")
end

return Q73098Trigger03
