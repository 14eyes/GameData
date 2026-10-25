require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318736_EnterTrigger = class("Q7318736_EnterTrigger", GadgetActorProxy)
Q7318736_EnterTrigger.defaultAlias = "Q7318736_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318736_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318736_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318736_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318736)
    this:DestroySelf()
end

function Q7318736_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318736_EnterTrigger
