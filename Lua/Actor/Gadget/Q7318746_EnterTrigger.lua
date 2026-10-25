require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318746_EnterTrigger = class("Q7318746_EnterTrigger", GadgetActorProxy)
Q7318746_EnterTrigger.defaultAlias = "Q7318746_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318746_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318746_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = -1.0, y = 4.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318746_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318746)
    this:DestroySelf()
end

function Q7318746_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318746_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318746_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318746_EnterTrigger
