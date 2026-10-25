require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73098Trigger01 = class("Q73098Trigger01", GadgetActorProxy)
Q73098Trigger01.defaultAlias = "Q73098Trigger01"
local Q73098ClientConfig = require("Quest/Client/Q73098ClientConfig")

local subIDs = Q73098ClientConfig.SubIDs
local npcs = Q73098ClientConfig.Npcs
local datas = Q73098ClientConfig.Datas

function Q73098Trigger01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73098Trigger01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73098Trigger01:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7309804)
    self:DestroySelf()
end

function Q73098Trigger01:TriggerOut()
    print("TriggerOut")
end

return Q73098Trigger01
