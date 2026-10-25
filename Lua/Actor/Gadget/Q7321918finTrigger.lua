require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321918finTrigger = class("Q7321918finTrigger", GadgetActorProxy)
Q7321918finTrigger.defaultAlias = "Q7321918finTrigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321918finTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321918finTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7321918finTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321918)
    this:DestroySelf()
end

function Q7321918finTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7321918finTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7321918finTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7321918finTrigger
