require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310361_EnterTrigger = class("Q7310361_EnterTrigger", GadgetActorProxy)
Q7310361_EnterTrigger.defaultAlias = "Q7310361_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310361_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310361_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7310361_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310361)
    this:DestroySelf()
end

function Q7310361_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7310361_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7310361_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310361_EnterTrigger
