require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318751_EnterTrigger = class("Q7318751_EnterTrigger", GadgetActorProxy)
Q7318751_EnterTrigger.defaultAlias = "Q7318751_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318751_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318751_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318751_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318751)
    this:DestroySelf()
end

function Q7318751_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318751_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318751_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318751_EnterTrigger
