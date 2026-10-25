require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73225Trigger7322523 = class("Q73225Trigger7322523", GadgetActorProxy)
Q73225Trigger7322523.defaultAlias = "Q73225Trigger7322523"
local Q73225ClientConfig = require("Quest/Client/Q73225ClientConfig")

local this
local subIDs = Q73225ClientConfig.SubIDs
local npcs = Q73225ClientConfig.Npcs
local datas = Q73225ClientConfig.Datas

function Q73225Trigger7322523:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73225Trigger7322523:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73225Trigger7322523:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322523)
    this:DestroySelf()
end

function Q73225Trigger7322523:TriggerOut()
    print("TriggerOut")
end

return Q73225Trigger7322523
