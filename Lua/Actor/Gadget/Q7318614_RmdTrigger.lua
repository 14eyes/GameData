require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318614_RmdTrigger = class("Q7318614_RmdTrigger", GadgetActorProxy)
Q7318614_RmdTrigger.defaultAlias = "Q7318614_RmdTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318614_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318614_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318614_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73186"):NarratorOnlyTaskByData(nil, nil, 73186)
    this:DestroySelf()
end

function Q7318614_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318614_RmdTrigger
