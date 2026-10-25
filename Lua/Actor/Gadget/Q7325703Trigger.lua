require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325703Trigger = class("Q7325703Trigger", GadgetActorProxy)
Q7325703Trigger.defaultAlias = "Q7325703Trigger"
local Q73257ClientConfig = require("Quest/Client/Q73257ClientConfig")

local this
local subIDs = Q73257ClientConfig.SubIDs
local npcs = Q73257ClientConfig.Npcs
local points = Q73257ClientConfig.Points
local datas = Q73257ClientConfig.Datas

function Q7325703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325703Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325703)
    this:DestroySelf()
end

function Q7325703Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325703Trigger
