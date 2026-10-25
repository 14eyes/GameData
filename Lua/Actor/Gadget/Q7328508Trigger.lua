require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328508Trigger = class("Q7328508Trigger", GadgetActorProxy)
Q7328508Trigger.defaultAlias = "Q7328508Trigger"
local Q73285ClientConfig = require("Quest/Client/Q73285ClientConfig")

local this
local subIDs = Q73285ClientConfig.SubIDs
local npcs = Q73285ClientConfig.Npcs
local points = Q73285ClientConfig.Points
local datas = Q73285ClientConfig.Datas

function Q7328508Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328508Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328508Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328508)
    this:DestroySelf()
end

function Q7328508Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328508Trigger
