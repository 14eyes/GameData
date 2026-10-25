require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310362_EnterTrigger = class("Q7310362_EnterTrigger", GadgetActorProxy)
Q7310362_EnterTrigger.defaultAlias = "Q7310362_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310362_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310362_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7310362_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310362)
    this:DestroySelf()
end

function Q7310362_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7310362_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7310362_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310362_EnterTrigger
