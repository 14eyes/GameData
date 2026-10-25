require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302908Trigger = class("Q302908Trigger", GadgetActorProxy)
Q302908Trigger.defaultAlias = "Q302908Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302908Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302908Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302908Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):CallDelay(5, function(arg1)
        actorUtils.FinishQuestID(false, 302908)
    end)

    this:DestroySelf()
end

function Q302908Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302908Trigger
