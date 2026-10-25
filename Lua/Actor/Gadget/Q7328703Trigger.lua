require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328703Trigger = class("Q7328703Trigger", GadgetActorProxy)
Q7328703Trigger.defaultAlias = "Q7328703Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(220, 80, 90, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328703Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328703)
    this:DestroySelf()
end

function Q7328703Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328703Trigger
