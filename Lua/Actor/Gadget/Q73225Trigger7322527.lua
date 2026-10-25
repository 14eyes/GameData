require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73225Trigger7322527 = class("Q73225Trigger7322527", GadgetActorProxy)
Q73225Trigger7322527.defaultAlias = "Q73225Trigger7322527"
local Q73225ClientConfig = require("Quest/Client/Q73225ClientConfig")

local this
local subIDs = Q73225ClientConfig.SubIDs
local npcs = Q73225ClientConfig.Npcs
local datas = Q73225ClientConfig.Datas

function Q73225Trigger7322527:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73225Trigger7322527:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73225Trigger7322527:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322527)
    this:DestroySelf()
end

function Q73225Trigger7322527:TriggerOut()
    print("TriggerOut")
end

return Q73225Trigger7322527
