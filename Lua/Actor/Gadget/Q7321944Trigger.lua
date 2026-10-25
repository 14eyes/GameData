require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321944Trigger = class("Q7321944Trigger", GadgetActorProxy)
Q7321944Trigger.defaultAlias = "Q7321944Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321944Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321944Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 15, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321944Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321944)
    this:DestroySelf()
end

function Q7321944Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321944Trigger
