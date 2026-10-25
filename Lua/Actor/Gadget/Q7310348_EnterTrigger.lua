require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310348_EnterTrigger = class("Q7310348_EnterTrigger", GadgetActorProxy)
Q7310348_EnterTrigger.defaultAlias = "Q7310348_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310348_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310348_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7310348_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310348)
    this:DestroySelf()
end

function Q7310348_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7310348_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7310348_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310348_EnterTrigger
